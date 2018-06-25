<?php if (!defined('THINK_PATH')) exit();?><div class="bjui-pageHeader">
<form id="pagerForm" data-toggle="ajaxsearch" action="/Storage/index.php?s=/Home/Chukus" method="post">
	
	<input type="hidden" name="pageSize" value="<?php echo ($numPerPage); ?>">
    <input type="hidden" name="pageCurrent" value="<?php echo ((isset($_REQUEST['pageNum']) && ($_REQUEST['pageNum'] !== ""))?($_REQUEST['pageNum']):1); ?>">
	 
        <div class="bjui-searchBar">
            <label>关键词：</label><input type="text" value="<?php echo ($_REQUEST['keys']); ?>" name="keys" class="form-control" size="12" />
				<label>出库时间：</label><input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time1']); ?>' name='time1' class='form-control' size='12' />-<input type='text' data-toggle='datepicker' value='<?php echo ($_REQUEST['time2']); ?>' name='time2' class='form-control' size='12' />&nbsp;<label>产品分类：</label><select name='fenlei' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($fenleilist)): foreach($fenleilist as $key=>$v): ?><option value='<?php echo ($v["fenlei"]); ?>'  <?php if($v["fenlei"] == $_REQUEST['fenlei']): ?>selected<?php else: echo ($_REQUEST['fenlei']); endif; ?> ><?php echo ($v["fenlei"]); ?></option><?php endforeach; endif; ?></select>&nbsp;<label>审核状态：</label><select name='shenhe' data-toggle='selectpicker'><option value=''>全部</option><?php if(is_array($shenhelist)): foreach($shenhelist as $key=>$v): ?><option value='<?php echo ($v["shenhe"]); ?>'  <?php if($v["shenhe"] == $_REQUEST['shenhe']): ?>selected<?php else: echo ($_REQUEST['shenhe']); endif; ?> ><?php echo ($v["shenhe"]); ?></option><?php endforeach; endif; ?></select>&nbsp;
             <button type="submit"  class="btn-default" data-icon="search">查询</button>
              <a class="btn btn-orange" href="javascript:;" onclick="$(this).navtab('reloadForm', true);" data-icon="undo">清空查询</a>
		</div>
</form>
    
</div>
<div class="bjui-pageContent tableContent">
     <table data-toggle="tablefixed" data-width="100%" data-layout-h="0" data-nowrap="true">
        <thead>
            <tr>
            <th width="10" height="30"></th>
            <th data-order-direction='desc' data-order-field='id'>ID</th>
<th data-order-direction='desc' data-order-field='number'>合同编号</th>
<th data-order-direction='desc' data-order-field='bianhao'>产品编号</th>
<th>产品名称</th>
<th data-order-direction='desc' data-order-field='fenlei'>产品分类</th>
<th data-order-direction='desc' data-order-field='type'>产品规格</th>
<th>计量单位</th>
<th>出库数量</th>
<th>备注</th>
<th>经办人</th>
<th data-order-direction='desc' data-order-field='shijian'>出库时间</th>
<th data-order-direction='desc' data-order-field='shenhe'>审核状态</th>

			<?php if(display(CONTROLLER_NAME.'/view')){ ?><th width="40">详细</th><?php } ?>
            </tr>
        </thead>
        <tbody>

          <?php if(is_array($list)): $i = 0; $__LIST__ = $list;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr>
		   <td></td>
		   <td><?php echo ($v["id"]); ?></td>
<td><?php echo ($v["number"]); ?></td>
<td><?php echo ($v["bianhao"]); ?></td>
<td><?php echo (msubstr($v["title"],0,20)); ?></td>
<td><?php echo ($v["fenlei"]); ?></td>
<td><?php echo ($v["type"]); ?></td>
<td><?php echo (msubstr($v["danwei"],0,20)); ?></td>
<td><?php echo (msubstr($v["shuliang"],0,20)); ?></td>
<td><?php echo (msubstr($v["beizhu"],0,20)); ?></td>
<td><?php echo (msubstr($v["jingban"],0,20)); ?></td>
<td><?php echo (substr($v["shijian"],0,10)); ?></td>
<td><?php echo ($v["shenhe"]); ?></td>

		   <?php if(display(CONTROLLER_NAME.'/view')){ ?><td><a href="/Storage/index.php?s=/Home/Chukus/view/id/<?php echo ($v['id']); ?>/navTabId/<?php echo CONTROLLER_NAME;?>"  data-toggle="dialog" data-width="900" data-height="500" data-id="dialog-mask" data-mask="true" >详细</a></td><?php } ?>
		   </td>
         </tr><?php endforeach; endif; else: echo "" ;endif; ?>
        </tbody>
    </table>
</div>
<div class="bjui-pageFooter">
        <div class="pages">
            <span>共 <?php echo ($totalCount); ?> 条  每页 <?php echo ($numPerPage); ?> 条</span>
        </div>
	    <div class="pagination-box" data-toggle="pagination" data-total="<?php echo ($totalCount); ?>" data-page-size="<?php echo ($numPerPage); ?>" data-page-current="<?php echo ($currentPage); ?>">
        </div>
</div>