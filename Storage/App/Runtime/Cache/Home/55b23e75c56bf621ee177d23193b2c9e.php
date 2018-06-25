<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageContent tableContent">
    <form action="/Storage/index.php?s=/Home/Renwu/edit/navTabId/<?php echo CONTROLLER_NAME;?>" class="pageForm" data-toggle="validate">
		<input type="hidden" name="id" value="<?php echo ($id); ?>">
        <div class="pageFormContent" data-layout-h="0">
          <table class="table table-condensed table-hover" width="100%">
           <tbody>
		   <tr><td><label for='juname_input' class='control-label x85'>接收人:</label><input type='text' id='juname' name='juname'  size='20' data-toggle='lookup' data-url='/Storage/index.php?s=/Home/basic/user/navTabId/<?php echo CONTROLLER_NAME;?>' readonly  value='<?php echo ($Rs["juname"]); ?>'  ></td></tr>
<tr><td><label for='jztime_input' class='control-label x85'>截止时间:</label><input type='text' data-toggle='datepicker' data-pattern='yyyy-MM-dd HH:mm:ss' id='jztime' name='jztime'  data-rule='required;datetime' size='20' readonly  value='<?php echo ($Rs["jztime"]); ?>'  ></td></tr>
<tr><td><label for='jieguo_input' class='control-label x85'>处理结果:</label><?php if(is_array(C("RENWU_JIEGUO"))): $i = 0; $__LIST__ = C("RENWU_JIEGUO");if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$jieguo): $mod = ($i % 2 );++$i;?><input type='radio'  name='jieguo' data-toggle='icheck'  data-label='<?php echo ($jieguo); ?>' value='<?php echo ($jieguo); ?>' <?php if( $jieguo == $Rs['jieguo'] ): ?>checked data-rule='checked'<?php endif; ?> ><?php endforeach; endif; else: echo "" ;endif; ?></td></tr>
<tr><td colspan=2><input type='hidden' id='juid' name='juid'  size='0'   value='<?php echo ($Rs["juid"]); ?>'  ></td></tr></tr>
<tr><td colspan=2><input type='hidden' id='hid' name='hid'  size='0'   value='<?php echo ($Rs["hid"]); ?>'  ></td></tr></tr>
<tr><td colspan=2><label for='content_input' class='control-label x85'>任务内容:</label><div style='display: inline-block; vertical-align: middle;'><?php echo (html_out($Rs["content"])); ?></div></td></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>已完成情况:</label><textarea  cols='65' rows='5' ><?php echo ($Rs["beizhu"]); ?></textarea></td></tr></tr>
<tr><td colspan=2><label for='beizhu_input' class='control-label x85'>完成情况:</label><textarea name='beizhu'  cols='65' rows='5' ></textarea><input type="hidden" name='beizhu1'  value="<?php echo ($Rs["beizhu"]); ?>"></td></tr></tr>
</tbody>
</table>
</div>
</form>
</div>
<div class="bjui-pageFooter">
    <ul>
        <li><button type="button" class="btn-close" data-icon="close">取消</button></li>
        <li><button type="submit" class="btn-default" data-icon="save">保存</button></li>
    </ul>
</div>