<?php

/**
 *      我的去向控制器
 */

namespace Home\Controller;
use Think\Controller;

class QuxiangController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
//	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){
//		  $map['uid'] = array('EQ', session('uid'));
//	   }
	   if(isset($_REQUEST['time1']) && $_REQUEST['time1'] != ''&&isset($_REQUEST['time2']) && $_REQUEST['time2'] != '')
       {
           $map['ktime'] =array(array('egt',I('time1').' 00:00:00'),array('elt',I('time2').' 59:59:59'));
       }
       if(isset($_REQUEST['type']) && $_REQUEST['type'] != '')
           
       {
           $map['type'] =array('EQ', urldecode(I('type')));
       }
	   

	}
	
   public function _befor_index(){ 
     $typelist =  M($this->dbname)->where(array('type'=>array('neq','')))->distinct('type')->field('type')->select();
     $this->assign('typelist', $typelist); 
   }
  
  
  public function _befor_add(){
	  $attid=time();
	  $this->assign('attid',$attid);
    
  }
  
  public function _befor_insert($data){

  }
	
   public function _after_add($id){
    
   }


  
  public function _befor_edit(){
     $model = D($this->dbname);
	 $info = $model->find(I('get.id'));
	 $attid=$info['attid'];
	 $this->assign('attid',$attid);
  }
   
  public function _befor_update($data){

  }
  
    public function _after_edit($id){
     
   }

   public function _befor_view($id){
	   
   }
   
   public function _befor_del($id){
	   
   }

//   public function outxls() {
//		$model = D($this->dbname);
//		$map = $this->_search();
//		if (method_exists($this, '_filter')) {
//			$this->_filter($map);
//		}
//		$list = $model->where($map)->field('id,ktime,jtime,type,title')->select();
//	    $headArr=array('ID','开始时间','结束时间','去向类型','去向说明');
//	    $filename='我的去向';
//		$this->xlsout($filename,$headArr,$list);
//	}
	
	public function fenxi(){
	 $this->display();
	}
	
	

}