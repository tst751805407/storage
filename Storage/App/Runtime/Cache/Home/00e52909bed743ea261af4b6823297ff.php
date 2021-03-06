<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>企业零件库存管理系统</title>

<!-- bootstrap - css -->
<!-- bootstrap - css -->
<link href="/Storage/Public/BJUI/themes/css/bootstrap.css" rel="stylesheet">
<!-- core - css -->
<link href="/Storage/Public/BJUI/themes/css/style.css" rel="stylesheet">
<link href="/Storage/Public/BJUI/themes/blue/core.css" id="bjui-link-theme" rel="stylesheet">
<!-- plug - css -->
<link href="/Storage/Public/BJUI/plugins/kindeditor_4.1.10/themes/default/default.css" rel="stylesheet">
<link href="/Storage/Public/BJUI/plugins/colorpicker/css/bootstrap-colorpicker.min.css" rel="stylesheet">
<link href="/Storage/Public/BJUI/plugins/niceValidator/jquery.validator.css" rel="stylesheet">
<link href="/Storage/Public/BJUI/plugins/bootstrapSelect/bootstrap-select.css" rel="stylesheet">
<link href="/Storage/Public/BJUI/themes/css/FA/css/font-awesome.min.css" rel="stylesheet">
<!--[if lte IE 7]>
<link href="/Storage/Public/BJUI/themes/css/ie7.css" rel="stylesheet">
<![endif]-->
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lte IE 9]>
    <script src="/Storage/Public/BJUI/other/html5shiv.min.js"></script>
    <script src="/Storage/Public/BJUI/other/respond.min.js"></script>
<![endif]-->
<!-- jquery -->
<script src="/Storage/Public/BJUI/js/jquery-1.7.2.min.js"></script>
<script src="/Storage/Public/BJUI/js/jquery.cookie.js"></script>
<!--[if lte IE 9]>
<script src="/Storage/Public/BJUI/other/jquery.iframe-transport.js"></script>    
<![endif]-->

<script src="/Storage/Public/BJUI/js/bjui-core.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-regional.zh-CN.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-frag.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-extends.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-basedrag.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-slidebar.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-contextmenu.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-navtab.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-dialog.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-taskbar.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-ajax.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-alertmsg.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-pagination.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-util.date.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-datepicker.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-ajaxtab.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-datagrid.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-tablefixed.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-tabledit.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-spinner.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-lookup.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-tags.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-upload.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-theme.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-initui.js"></script>
<script src="/Storage/Public/BJUI/js/bjui-plugins.js"></script>

<!-- plugins -->
<!-- swfupload for uploadify && kindeditor -->
<script src="/Storage/Public/BJUI/plugins/swfupload/swfupload.js"></script>
<!-- kindeditor -->
<script src="/Storage/Public/BJUI/plugins/kindeditor_4.1.10/kindeditor-all.min.js"></script>
<script src="/Storage/Public/BJUI/plugins/kindeditor_4.1.10/lang/zh_CN.js"></script>
<!-- colorpicker -->
<script src="/Storage/Public/BJUI/plugins/colorpicker/js/bootstrap-colorpicker.min.js"></script>
<!-- ztree -->
<script src="/Storage/Public/BJUI/plugins/ztree/jquery.ztree.all-3.5.js"></script>
<!-- nice validate -->
<script src="/Storage/Public/BJUI/plugins/niceValidator/jquery.validator.js"></script>
<script src="/Storage/Public/BJUI/plugins/niceValidator/jquery.validator.themes.js"></script>
<!-- bootstrap plugins -->
<script src="/Storage/Public/BJUI/plugins/bootstrap.min.js"></script>
<script src="/Storage/Public/BJUI/plugins/bootstrapSelect/bootstrap-select.min.js"></script>
<script src="/Storage/Public/BJUI/plugins/bootstrapSelect/defaults-zh_CN.min.js"></script>
<!-- icheck -->
<script src="/Storage/Public/BJUI/plugins/icheck/icheck.min.js"></script>
<!-- dragsort -->
<script src="/Storage/Public/BJUI/plugins/dragsort/jquery.dragsort-0.5.1.min.js"></script>
<!-- HighCharts -->
<script src="/Storage/Public/BJUI/plugins/highcharts/highcharts.js"></script>
<script src="/Storage/Public/BJUI/plugins/highcharts/highcharts-3d.js"></script>
<script src="/Storage/Public/BJUI/plugins/highcharts/themes/gray.js"></script>
<!-- ECharts -->
<script src="/Storage/Public/BJUI/plugins/echarts/echarts.js"></script>
<!-- other plugins -->
<script src="/Storage/Public/BJUI/plugins/other/jquery.autosize.js"></script>
<link href="/Storage/Public/BJUI/plugins/uploadify/css/uploadify.css" rel="stylesheet">
<script src="/Storage/Public/BJUI/plugins/uploadify/scripts/jquery.uploadify.min.js"></script>
<!-- init -->
<script type="text/javascript">
$(function() {
    BJUI.init({
        JSPATH       : '/Storage/Public/BJUI/',         //[可选]框架路径
        PLUGINPATH   : '/Storage/Public/BJUI/plugins/', //[可选]插件路径
        loginInfo    : {url:'login_timeout.html', title:'登录', width:400, height:200}, // 会话超时后弹出登录对话框
        statusCode   : {ok:200, error:300, timeout:301}, //[可选]
        ajaxTimeout  : 50000, //[可选]全局Ajax请求超时时间(毫秒)
        pageInfo     : {total:'total', pageCurrent:'pageCurrent', pageSize:'pageSize', orderField:'orderField', orderDirection:'orderDirection'}, //[可选]分页参数
        alertMsg     : {displayPosition:'topcenter', displayMode:'slide', alertTimeout:3000}, //[可选]信息提示的显示位置，显隐方式，及[info/correct]方式时自动关闭延时(毫秒)
        keys         : {statusCode:'statusCode', message:'message'}, //[可选]
        ui           : {
                         windowWidth      : 600,    //框架可视宽度，0=100%宽，> 600为则居中显示
                         showSlidebar     : true, //[可选]左侧导航栏锁定/隐藏
                         clientPaging     : true, //[可选]是否在客户端响应分页及排序参数
                         overwriteHomeTab : false //[可选]当打开一个未定义id的navtab时，是否可以覆盖主navtab(我的主页)
                       },
        debug        : true,    // [可选]调试模式 [true|false，默认false]
        theme        : 'blue' // 若有Cookie['bjui_theme'],优先选择Cookie['bjui_theme']。皮肤[五种皮肤:default, orange, purple, blue, red, green]
    })
    
    // main - menu
    $('#bjui-accordionmenu')
        .collapse()
        .on('hidden.bs.collapse', function(e) {
            $(this).find('> .panel > .panel-heading').each(function() {
                var $heading = $(this), $a = $heading.find('> h4 > a')
                
                if ($a.hasClass('collapsed')) $heading.removeClass('active')
            })
        })
        .on('shown.bs.collapse', function (e) {
            $(this).find('> .panel > .panel-heading').each(function() {
                var $heading = $(this), $a = $heading.find('> h4 > a')
                
                if (!$a.hasClass('collapsed')) $heading.addClass('active')
            })
        })
    
    $(document).on('click', 'ul.menu-items > li > a', function(e) {
        var $a = $(this), $li = $a.parent(), options = $a.data('options').toObj()
        var onClose = function() {
            $li.removeClass('active')
        }
        var onSwitch = function() {
            $('#bjui-accordionmenu').find('ul.menu-items > li').removeClass('switch')
            $li.addClass('switch')
        }
        
        $li.addClass('active')
        if (options) {
            options.url      = $a.attr('href')
            options.onClose  = onClose
            options.onSwitch = onSwitch
            if (!options.title) options.title = $a.text()
            
            if (!options.target)
                $a.navtab(options)
            else
                $a.dialog(options)
        }
        
        e.preventDefault()
    })
    
    //时钟
    var today = new Date(), time = today.getTime()
    $('#bjui-date').html(today.formatDate('yyyy/MM/dd'))
    setInterval(function() {
        today = new Date(today.setSeconds(today.getSeconds() + 1))
        $('#bjui-clock').html(today.formatDate('HH:mm:ss'))
    }, 1000)
})

//菜单-事件
function MainMenuClick(event, treeId, treeNode) {
    event.preventDefault()
    
    if (treeNode.isParent) {
        var zTree = $.fn.zTree.getZTreeObj(treeId)
        
        zTree.expandNode(treeNode, !treeNode.open, false, true, true)
        return
    }
    
    if (treeNode.target && treeNode.target == 'dialog')
        $(event.target).dialog({id:treeNode.tabid, url:treeNode.url, title:treeNode.name})
    else
        $(event.target).navtab({id:treeNode.tabid, url:treeNode.url, title:treeNode.name, fresh:treeNode.fresh, external:treeNode.external})
}
</script>

</head>
<body>

	<div id="bjui-window">
	<header id="bjui-header" style="height:50px;">
        <div class="bjui-navbar-header">
            <button type="button" class="bjui-navbar-toggle btn-default" data-toggle="collapse" data-target="#bjui-navbar-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="bjui-navbar-logo"  style="font-size:20px;color:#fff;line-height:45px;"><?php echo (C("WEB_SITE_TITLE")); ?><span style="font-size:12px"><?php echo (C("WEB_VER")); ?></span><!--<img src="/Storage/Public/images/logo.png">--></a>
        </div>
        <nav id="bjui-navbar-collapse">
            <ul class="bjui-navbar-right" style="margin-top:5px;">
                <li class="datetime"><div><span id="bjui-date"></span> <i class="fa fa-clock-o"></i> <span id="bjui-clock" ></span></div></li>

				<li class="dropdown"><a href="#" class="dropdown-toggle" data-toggle="dropdown">我的账户 <span class="caret"></span></a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="<?php echo U('public/changepwd');?>" data-toggle="dialog" data-id="changepwd_page" data-mask="true" data-width="500" data-height="350">&nbsp;<span class="glyphicon glyphicon-lock"></span> 修改密码&nbsp;</a></li>
                        <li><a href="<?php echo U('public/changeinfo');?>" data-toggle="dialog" data-id="changeinfo_page" data-mask="true" data-width="500" data-height="350">&nbsp;<span class="glyphicon glyphicon-user"></span> 我的资料</a></li>
                        <li class="divider"></li>
                        <li><a href="<?php echo U('public/logout');?>" class="red">&nbsp;<span class="glyphicon glyphicon-off"></span> 注销登陆</a></li>
                    </ul>
                </li>
                <!--<li class="dropdown"><a href="#" class="dropdown-toggle theme blue" data-toggle="dropdown" title="切换皮肤"><i class="fa fa-tree"></i></a>-->
                    <!--<ul class="dropdown-menu" role="menu" id="bjui-themes">-->
                        <!--<li><a href="javascript:;" class="theme_default" data-toggle="theme" data-theme="default">&nbsp;<i class="fa fa-tree"></i> 黑白分明&nbsp;&nbsp;</a></li>-->
                        <!--<li><a href="javascript:;" class="theme_orange" data-toggle="theme" data-theme="orange">&nbsp;<i class="fa fa-tree"></i> 橘子红了</a></li>-->
                        <!--<li><a href="javascript:;" class="theme_purple" data-toggle="theme" data-theme="purple">&nbsp;<i class="fa fa-tree"></i> 紫罗兰</a></li>-->
                        <!--<li class="active"><a href="javascript:;" class="theme_blue" data-toggle="theme" data-theme="blue">&nbsp;<i class="fa fa-tree"></i> 天空蓝</a></li>-->
                        <!--<li><a href="javascript:;" class="theme_green" data-toggle="theme" data-theme="green">&nbsp;<i class="fa fa-tree"></i> 绿草如茵</a></li>-->
                    <!--</ul>-->
                <!--</li>-->
            </ul>

        </nav>
    </header>
	<div id="bjui-container" class="clearfix">
        <div id="bjui-leftside">
            <div id="bjui-sidebar-s">
                <div class="collapse"></div>
            </div>
            <div id="bjui-sidebar">
                <div class="toggleCollapse"><h2><i class="fa fa-bars"></i> 导航栏 <i class="fa fa-bars"></i></h2><a href="javascript:;" class="lock"><i class="fa fa-lock"></i></a></div>
                <div class="panel-group panel-main" data-toggle="accordion" id="bjui-accordionmenu" data-heightbox="#bjui-sidebar" data-offsety="26">
                  <?php $cate=M('menu')->where('level=0')->order('sort')->select(); ?>
                   <?php if(is_array($cate)): foreach($cate as $key=>$c): if(authcheck('Home/'.$c[alink],session('uid'))): if($c["sort"] == 0 ): ?><div class="panel panel-default">
                        <div class="panel-heading panelContent">
                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#bjui-accordionmenu" href="#bjui-collapse<?php echo ($c["sort"]); ?>" class="active"><i class="fa fa-caret-square-o-down"></i>&nbsp;&nbsp;<?php echo ($c["catename"]); ?></a></h4>
                        </div>
                        <div id="bjui-collapse<?php echo ($c["sort"]); ?>" class="panel-collapse panelContent collapse in">
                            <div class="panel-body" >
                                <ul id="bjui-tree<?php echo ($c["id"]); ?>" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="true">
						<?php else: ?>
						<div class="panel panel-default">
                        <div class="panel-heading panelContent">
                            <h4 class="panel-title"><a data-toggle="collapse" data-parent="#bjui-accordionmenu" href="#bjui-collapse<?php echo ($c["sort"]); ?>" class="" ><i class="fa fa-caret-square-o-right"></i>&nbsp;&nbsp;<?php echo ($c["catename"]); ?></a></h4>
                        </div>
                        <div id="bjui-collapse<?php echo ($c["sort"]); ?>" class="panel-collapse panelContent collapse">
                            <div class="panel-body">
                                <ul id="bjui-tree<?php echo ($c["id"]); ?>" class="ztree ztree_main" data-toggle="ztree" data-on-click="MainMenuClick" data-expand-all="false"><?php endif; ?>
							<?php $cate1=M('menu')->where('level=1 and pid='.$c['id'])->order('sort')->select(); ?>
							  <?php if(is_array($cate1)): foreach($cate1 as $key=>$v): if(authcheck('Home/'.$v[alink],session('uid'))): $count1=M('menu')->where('level=2 and pid='.$v['id'])->count(id); ?>
								    <?php if($count1 == 0 ): ?><li data-id="<?php echo ($v["id"]); ?>" data-pid="<?php echo ($c["id"]); ?>" data-url="index.php/home/<?php echo ($v["alink"]); ?>" data-tabid="<?php echo ($v["alink"]); ?>"  data-faicon="caret-right" ><?php echo ($v["catename"]); ?></li>
                                     <?php else: ?>
									 <li data-id="<?php echo ($v["id"]); ?>" data-pid="<?php echo ($c["id"]); ?>" data-faicon="folder-open-o" data-faicon-close="folder-o"><?php echo ($v["catename"]); ?></li><?php endif; ?>
									 <?php $cate2=M('menu')->where('level=2 and pid='.$v['id'])->order('sort')->select(); ?>
							      <?php if(is_array($cate2)): foreach($cate2 as $key=>$vv): if(authcheck('Home/'.$vv[alink],session('uid'))): ?><li data-id="<?php echo ($vv["id"]); ?>" data-pid="<?php echo ($v["id"]); ?>" data-url="index.php/home/<?php echo ($vv["alink"]); ?>" data-tabid="<?php echo ($vv["alink"]); ?>"  data-faicon="caret-right"><?php echo ($vv["catename"]); ?></li><?php endif; endforeach; endif; endif; endforeach; endif; ?>
									</ul>
                            </div>
                        </div>
                        <div class="panelFooter"><div class="panelFooterContent"></div></div>
                    </div><?php endif; endforeach; endif; ?>
					
                </div>
            </div>
        </div>
         <div id="bjui-navtab" class="tabsPage">
            <div class="tabsPageHeader">
                <div class="tabsPageHeaderContent">
                    <ul class="navtab-tab nav nav-tabs">
                        <li data-url="<?php echo U('index/main');?>"><a href="javascript:;"><span><i class="fa fa-home"></i> #maintab#</span></a></li>
                    </ul>
                </div>
                <div class="tabsLeft"><i class="fa fa-angle-double-left"></i></div>
                <div class="tabsRight"><i class="fa fa-angle-double-right"></i></div>
                <div class="tabsMore"><i class="fa fa-angle-double-down"></i></div>
            </div>
            <ul class="tabsMoreList">
                <li><a href="javascript:;">#maintab#</a></li>
            </ul>
            <div class="navtab-panel tabsPageContent">
                <div class="navtabPage unitBox">
                    <div class="bjui-pageContent" style="background:#FFF;">
                        Loading...
                    </div>
                </div>
            </div>
        </div>
    </div>

	
    <footer id="bjui-footer" style="text-align:left">
	您好！<?php echo (session('depname')); ?> <?php echo (session('posname')); ?> <?php echo (session('truename')); ?> (<?php echo (session('username')); ?>) 您的IP:<?php echo (session('loginip')); ?>   登录时间:<?php echo (session('logintime')); ?>

    </footer>
  </div>
</body>
</html>