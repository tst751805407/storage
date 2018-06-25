<?php
namespace Home\Controller;
use Think\Controller;
class MainController extends Controller {


   public function _initialize(){
	   $config =   S('DB_CONFIG_DATA');
        if(!$config){
            $config =   api('Config/lists');
            S('DB_CONFIG_DATA',$config);
        }
        C($config); 
      $clist = M("vote")->distinct('fenlei')->field('fenlei')->order('fenlei')->select();
      $this->assign('clist', $clist); 
	}
	
    public function index(){
		
		$this->display(); 
		
	}
	
	public function fenlei(){
		 $time=date("Y-m-d H:i:s",time());
		$list=M('vote')->where(array('status'=>1,'fenlei'=>urldecode(I('fenlei')),'stime'=>array('elt',$time)))->order('piao desc')->limit(20)->page($_GET['p'].',20')->select();
		 $this->assign('list',$list);
         $count = M('vote')->where(array('status'=>1,'fenlei'=>urldecode(I('fenlei')),'stime'=>array('elt',$time)))->count();
		 $Page = new \Think\Page($count,20);
         $show  = $Page->show();
         $this->assign('page',$show);
         $this->assign('count',$count);
		 $this->assign('fenlei',urldecode(I('fenlei')));
         $this->display();  
	}
  
    public function show(){
		$id=I('id');
		$Rs=M('vote')->where(array('status'=>1))->find($id);
		$this->assign('Rs', $Rs);
		$this->display(); 
		
	}
		
		


	
	
}