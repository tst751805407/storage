<?php if (!defined('THINK_PATH')) exit();?>
<div class="bjui-pageHeader" style="background:#FFF;">
    <div style="padding: 0 15px;">
        <h4 style="margin-bottom:20px;">
            <?php echo (C("WEB_SITE_TITLE")); ?>　<small>日程表单</small>
        </h4>
        <div style="float:left; width:157px;">
            <div class="alert alert-info" role="alert" style="margin:0 0 5px; padding:10px;">
                <img src="/Storage/Public/images/weixin.png" width="135">
            </div>
        </div>

        <div class="row" style="margin-left:170px; margin-top:10px;">
		 <form action="/Storage/index.php?s=/Home/Index/index/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		 <input type="hidden" name="id" value="<?php echo (session('uid')); ?>">
            <div class="col-md-12" style="padding:5px;">
                <div class="alert alert-success" role="alert" style="margin:0 0 5px; padding:5px 15px;">
                    <h5>我的便签、记事本 &nbsp;<button type="submit" class="btn-default">保存</button></h5>
                    <textarea style="width:100%;height:75px;border:0px;line-height:150%" name="bian"><?php echo ($Rs["bian"]); ?></textarea> 
                </div>
            </div>
		 </form>
        </div>
    </div>
</div>
<div class="bjui-pageContent">
    <div style="margin-top:5px;  overflow:hidden;">
        <div class="row" style="padding: 0 8px;">
            <!--//-->
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-user-md"></i> 员工去向
                              <a href="<?php echo U('quxiangs/index');?>" data-toggle="navtab" data-id="<?php echo U('quxiangs/index');?>" data-title="员工去向">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>开始时间</th>
                              <th>结束时间</th>
							  <th>类型</th>
                              <th>去向说明</th>
                              <th>外出人</th>

                              </tr>
                            </thead>
                            <tbody>
							<?php $list=M('quxiang')->order("id desc")->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (substr($v["ktime"],0,10)); ?></td>
                              <td><?php echo (substr($v["jtime"],0,10)); ?></td>
							  <td><?php echo (msubstr($v["type"],0,20)); ?></td>
                              <td><?php echo (msubstr($v["title"],0,20)); ?></td>
                              <td><?php echo (msubstr($v["uname"],0,20)); ?></td>

                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//-->
                      <!--//-->
                      <div class="col-md-6">
                        <div class="panel panel-default">
                          <div class="panel-heading"><h3 class="panel-title"><i class="fa fa-pencil-square-o"></i> 我的任务
                              <a href="<?php echo U('renwu/index');?>" data-toggle="navtab" data-id="<?php echo U('renwu/index');?>" data-title="我的任务">详细</a></h3></div>
                            <div style="min-height:185px">
							<table class="table table-bordered table-striped table-hover">
                             <thead>
                              <tr>
                              <th height=30>截至时间</th>
                              <th>任务标题</th>
                              <th>状态</th>
                              <th>发布人</th>
                              <th>发布时间</th>
                              </tr>
                            </thead>
                            <tbody>
							<?php $list=M('renwu')->where(array('juid'=>array('like','%'.session(uid).'%')))->order("id desc")->limit(5)->select(); ?>
						    <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
                              <td><?php echo (msubstr($v["jztime"],0,10)); ?></td>
                              <td><?php echo (msubstr($v["biaoti"],0,20)); ?></td>
                              <td><?php echo ($v["jieguo"]); ?></td>
                              <td><?php echo ($v["uname"]); ?></td>
                              <td><?php echo (substr($v["addtime"],0,10)); ?></td>
                            </tr><?php endforeach; endif; else: echo "" ;endif; ?>
                           </tbody>
                          </table>
						  </div>
                        </div>
                      </div>
                      <!--//-->  
					  <!--//-->

                      <!--//-->


			
        </div>
    </div>
</div>