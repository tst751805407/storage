<?php
namespace Common\Controller;
use Think\Controller;
use Vendor\PHPMailer\PHPMailer;
class BaseController extends Controller {

   protected function mtReturn($status,$info,$navTabId="",$closeCurrent=true) {
       
	    $udata['id']=session('uid');
        $udata['update_time']=time();
        $Rs=M("user")->save($udata);
        $dat['username'] = session('username');
        $dat['content'] = $info;
		$dat['os']=$_SERVER['HTTP_USER_AGENT'];
        $dat['url'] = U();
        $dat['addtime'] = date("Y-m-d H:i:s",time());
        $dat['ip'] = get_client_ip();
        M("log")->add($dat);
	   
	    
	    $result = array();
        $result['statusCode'] = $status; 
        $result['message'] = $info;
		if($navTabId!==''){
		 $result['tabid'] = strtolower($navTabId).'/index';	
		}else{
			$result['tabid'] = '';
		}
        $result['forward'] = '';
		$result['forwardConfirm']='';
        $result['closeCurrent'] =$closeCurrent;
        if (empty($type))
            $type = C('DEFAULT_AJAX_RETURN');
        if (strtoupper($type) == 'JSON') {
            // 返回JSON数据格式到客户端 包含状态信息
            header("Content-Type:text/html; charset=utf-8");
            exit(json_encode($result));
        } elseif (strtoupper($type) == 'XML') {
            // 返回xml格式数据
            header("Content-Type:text/xml; charset=utf-8");
            exit(xml_encode($result));
        } elseif (strtoupper($type) == 'EVAL') {
            // 返回可执行的js脚本
            header("Content-Type:text/html; charset=utf-8");
            exit($data);
        } else {
            // TODO 增加其它格式
        }
	}

	 /**
     * 列表页面
     */
	protected function _list($model, $map, $asc = false) {
		
		//排序字段 默认为主键名
		if (isset($_REQUEST ['orderField'])) {
			$order = $_REQUEST ['orderField'];
		}
		if($order=='') {
			$order = $model->getPk();

		}
			
		//排序方式默认按照倒序排列
		//接受 sost参数 0 表示倒序 非0都 表示正序
		if (isset($_REQUEST ['orderDirection'])) {
			$sort = $_REQUEST ['orderDirection'];
		}
		if($sort=='') {
			$sort = $asc ? 'asc' : 'desc';

		}

		if (isset($_REQUEST ['pageCurrent'])) {
			$pageCurrent = $_REQUEST ['pageCurrent'];
		}
		if($pageCurrent=='') {
			$pageCurrent =1;

		}
		
		//取得满足条件的记录数
		$count = $model->where($map)->count();
		
		//echo  $model->getlastsql();
       
		if ($count > 0) {

		    $numPerPage=C('PERPAGE');

            $voList = $model->where($map)->order("`" . $order . "` " . $sort)->limit($numPerPage)->page($pageCurrent.','.$numPerPage.'')->select();
		    
			//echo  $model->getlastsql();
			
			//列表排序显示
			$sortImg = $sort; //排序图标
			$sortAlt = $sort == 'desc' ? '升序排列' : '倒序排列'; //排序提示
			$sort = $sort == 'desc' ? 1 : 0; //排序方式
			
		   if( method_exists($this, '_after_list')){
				
				$voList=$this->_after_list($voList);
			}
			
			$this->assign('list', $voList);

		}
		$this->assign('totalCount', $count);//数据总数
		$this->assign('currentPage', !empty($_REQUEST[C('VAR_PAGE')]) ? $_REQUEST[C('VAR_PAGE')] : 1);//当前的页数，默认为1
		$this->assign('numPerPage', $numPerPage); //每页显示多少条
		cookie('_currentUrl_', __SELF__);
		return;
	}

	
	public function index() {

		$model = D($this->dbname);
		$map = $this->_search();
		if (method_exists($this, '_filter')) {
			$this->_filter($map);
		}
		if (!empty($model)) {
			$this->_list($model, $map);
		}
		if (method_exists($this, '_befor_index')) {
			$this->_befor_index();
		}
		$this->display();
	}

	protected function _search($dbname='') {
		
		$dbname = $dbname ? $dbname : $this->dbname;
		$model = D($dbname);
		$map = array();
		foreach ($model->getDbFields() as $key => $val) {
			if (isset($_REQUEST['keys']) && $_REQUEST['keys'] != '') {
				if(in_array($val, C('SEARCHKEY'))){
					$map[$val] = array('like','%'.urldecode(trim($_REQUEST['keys'])).'%');
				}else{
					//$map [$val] = $_REQUEST['keys'];
				}
					
			}
		}
		$map['_logic'] = 'or'; 
        if (isset($_REQUEST['keys']) && $_REQUEST['keys'] != '') {
			$where['_complex'] = $map;
			return $where;
		}else{
			$map['id']=array("neq","0");
			$where['_complex'] = $map;
			return $where;
			}
		
		
	}
    
	 public function add() {
		if(IS_POST){
		  $model = D($this->dbname);
		  $data=I('post.');
		  if (false === $data = $model->create()) {
			   $this->mtReturn(300,$model->getError(),$_REQUEST['navTabId'],true);  
            }
          if (method_exists($this, '_befor_insert')) {
                $data = $this->_befor_insert($data);
            }		  
          if($model->add($data)){
			if (method_exists($this, '_after_add')) {
			  $id = $model->getLastInsID();
			  $this->_after_add($id);
		    }
			$id = $model->getLastInsID();
			$this->mtReturn(200,"新增成功".$id,$_REQUEST['navTabId'],true);  
		  }
	      
		}
		if (method_exists($this, '_befor_add')) {
			$this->_befor_add();
		}
		$this->display();
	}


	public function edit() {
	  $model = D($this->dbname);
	  if(IS_POST){
		   $data=I('post.');
		   if (false === $data = $model->create()) {
			   $this->mtReturn(300,$model->getError(),$_REQUEST['navTabId'],true);  
            }
           if (method_exists($this, '_befor_update')) {
                $data = $this->_befor_update($data);
            }		
          if($model->save($data)){
			if (method_exists($this, '_after_edit')) {
			  $id = $data['id'];
			  $this->_after_edit($id);
			  } 
		  }	
          $id = $data['id'];
		  $this->mtReturn(200,"编辑成功".$id,$_REQUEST['navTabId'],true); 		  
	   }
	     if (method_exists($this, '_befor_edit')) {
			$this->_befor_edit();
		 }
		$id = $_REQUEST [$model->getPk()];
		$vo = $model->getById($id);
		$this->assign('id',$id);
		$this->assign('Rs', $vo);
		$this->display();
	}
	
	public function view() {
	    $model = D($this->dbname);
		$id = $_REQUEST [$model->getPk()];
		$vo = $model->getById($id);
		if (method_exists($this, '_befor_view')) {
			$this->_befor_view($id);
		}
		$this->assign('Rs', $vo);
		$this->display();
	}
	

	public function main() {

		if (method_exists($this, '_befor_main')) {
			$this->_befor_main();
		}
		$this->display();
	}
	
	public function del(){
		$model = D($this->dbname);

			 $info=$model->where('status=0')->select();
		      foreach($info as $key=>$v){
		       $attid=$v['attid'];
		       $ad['attid']=0;
			   M('files')->where(array("attid"=>$attid))->save($ad);
			   if (method_exists($this, '_befor_del')) {
                $this->_befor_del($v['id']);
               }
			}
			 $info=M('files')->where('attid=0 or status=0')->select();
             foreach($info as $key=>$v){
               $filepath=$v['folder'].$v['filename'];
               unlink($filepath);
	          }
			 M('files')->where('attid=0 or status=0')->delete();
             if (method_exists($this, '_after_del')) {
                $this->_after_del();
               }
			$Rs=$model->where('status=0')->delete();   
			$this->mtReturn(200,'清理'.$Rs.'条无用的记录',$_REQUEST['navTabId'],false);

	}
	
	

}