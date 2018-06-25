<?php

/**
 *      产品管理控制器

 */

namespace Home\Controller;
use Think\Controller;

class ChanpinController extends CommonController{

   public function _initialize() {
        parent::_initialize();
        $this->dbname = CONTROLLER_NAME;
    }
	
   function _filter(&$map) {
	   if(!in_array(session('uid'),C('ADMINISTRATOR'))){

	   }

	   if(isset($_REQUEST['fenlei']) && $_REQUEST['fenlei'] != ''){$map['fenlei'] =array('EQ', urldecode(I('fenlei'))); }


	}
	
   public function _befor_index(){ 
     $fenleilist =  M($this->dbname)->where(array('fenlei'=>array('neq','')))->distinct('fenlei')->field('fenlei')->select();
 $this->assign('fenleilist', $fenleilist);
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
   
   public function _after_del(){
     M($this->dbname)->where(array("kucun"=>array("elt",0)))->delete(); 	 
   }

	

}