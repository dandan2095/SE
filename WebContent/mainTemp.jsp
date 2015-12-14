<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="zh">
<head>
<title>Maruti Admin</title><meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/fullcalendar.css" />
<link rel="stylesheet" href="css/maruti-style.css" />
<link rel="stylesheet" href="css/maruti-media.css" class="skin-color" />
<link rel="stylesheet" type="text/css" href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.min.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>


<style type="text/css">
	div span img{
		width:25px;
		height:25px;
		margin-left:2px;
		margin-right:2px;
		margin-bottom:3px;
	}

	.tool{
		margin-left:3px;
	}

	.tool img{
		width:40px;
		height:40px
	}

</style>

</head>


<body>
<!--top-Header-menu-->
<div style="margin-top:10px;margin-left:3px;background-color:#E0ECFF">
	<div class="bs-docs-example">
		<ul class="nav nav-pills" style="margin-bottom:0px">
			<li class="dropdown">
				<a id="drop4" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">导航<b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labeledby="drop4">
					<li role="presentation"><a role="menuitem" tabindex="-1" href="http://www.goole.com">动作1</a></li>
	                <li role="presentation"><a role="menuitem" tabindex="-1" href="#anotherAction">动作2</a></li>
	                <li role="presentation"><a role="menuitem" tabindex="-1" href="#">其它</a></li>
	            </ul>
            </li>
            <li class="dropdown">
            	<a id="drop5" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">备注<b class="caret"></b></a>
                	<ul class="dropdown-menu" role="menu" aria-labeledby="drop5">
                    	<li role="presentation"><a role="menuitem" tabindex="-1" href="http://www.goole.com">动作1</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#anotherAction">动作2</a></li>
						<li role="presentation"><a role="menuitem" tabindex="-1" href="#">其它</a></li>
					</ul>
			</li>
			<li class="dropdown">
				<a id="drop6" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">管理<b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labeledby="drop6">
					<li role="presentation"><a role="menuitem"  tabindex="-1" href="http://www.goole.com">动作1</a></li>
                    <li role="presentation"><a role="menuitem"  tabindex="-1" href="#anotherAction">动作2</a></li>
                    <li role="presentation"><a role="menuitem"  tabindex="-1" href="#">其它</a></li>
                </ul>
            </li>
			<li class="dropdown">
				<a id="drop6" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">系统<b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labeledby="drop6">
					<li role="presentation"><a role="menuitem"  tabindex="-1" href="http://www.goole.com">动作1</a></li>
                    <li role="presentation"><a role="menuitem"  tabindex="-1" href="#anotherAction">动作2</a></li>
                    <li role="presentation"><a role="menuitem"  tabindex="-1" href="#">其它</a></li>
                </ul>
            </li>
            <li class="dropdown">
				<a id="drop6" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">帮助<b class="caret"></b></a>
				<ul class="dropdown-menu" role="menu" aria-labeledby="drop6">
					<li role="presentation"><a role="menuitem"  tabindex="-1" href="http://www.goole.com">动作1</a></li>
                    <li role="presentation"><a role="menuitem"  tabindex="-1" href="#anotherAction">动作2</a></li>
                    <li role="presentation"><a role="menuitem"  tabindex="-1" href="#">其它</a></li>
                </ul>
            </li>
            <li>
            	<form id="reToLogin" action="/Publisher/login.jsp" method="post">
					<button type="submit">返回登录界面</button>
				</form>
            </li>
		</ul>
	</div>
</div>


<div class="tool" style="background:#E0ECFF">
    <span><img src="fpng/advanced.png"></span>
    <span><img src="fpng/agt_home.png"></span>
    <span><img src="fpng/attach.png"></span>
    <span><img src="fpng/autostart.png"></span>
    <span><img src="fpng/bookmark_folder.png"></span>
    <span><img src="fpng/camera.png"></span>
    <span><img src="fpng/contexthelp.png"></span>
    <span><img src="fpng/demo.png"></span>
    <span><img src="fpng/fileexport.png"></span>
    <span><img src="fpng/folder_new.png"></span>
    <span><img src="fpng/lin_agt_wrench.png"></span>
    <span><img src="fpng/lock.png"></span>
    <span><img src="fpng/multimedia2.png"></span>
</div>

<div>
<div class="container-fluid" style="padding-left:0px;padding-right:0px">
  <div class="row-fluid" style="margin-top:0px">
    <div style="width:20%;float:left">
		<div class="easyui-accordion" style="width:100%;height:550px">
				<div title="导航树" selected="true">
					<form method="post" action="/Publisher/content.jsp" name="ContentForm" id="ContentForm">
						<ul id="tt1" class="easyui-tree" url="test.json">
						</ul>
						<input type="hidden" name="dmc" id="dmc" value="">
					</form>
				</div>
				<div title="书签" iconCls="icon-ok" style="overflow:auto;padding:10px;">
					content1
				</div>
				<div title="访问记录" iconCls="icon-reload" style="padding:10px;">
					content2
				</div>
				<div title="组合查询" iconCls="icon-reload" style="padding:10px;">
					content3
				</div>
			</div>
    </div>
<script type="text/javascript">
$('#tt1').tree({
onClick: function(node){
		//alert(node.id);  // alert node text property when clicked
		var dmc=node.id;
		document.getElementById("dmc").value=dmc;
		//alert(document.getElementById("dmc").value);
		document.getElementById("ContentForm").submit();
	}
});
</script>
    <div style="width:80%;float:right">
		<div class="easyui-tabs" style="width:100%;height:550px;">
			<div title="首页" style="padding:10px;">
				<div>
		 		   	<span><img src="fpng/agt_games.png"></span>
			    	<span><img src="fpng/agt_business.png"></span>
		  		  	<span><img src="fpng/button_cancel.png"></span>
		    		<span><img src="fpng/button_ok.png"></span>
		    		<span><img src="fpng/restart-1.png"></span>
			    </div>
				<iframe class="myframe" src="content.jsp" style="width:100%;height:465px">
        		</iframe>
			</div>
			<div title="全文搜索" closable="true" style="padding:10px;">
		   		<div style="float:left">
		    		<span><img src="fpng/restart.png"></span>
		    		<span><img src="fpng/unlock.png"></span>
		    		<span><img src="fpng/button_cancel.png"></span>
		    		<span><img src="fpng/viewmag-.png"></span>
		    		<span><img src="fpng/viewmag+.png"></span>
		   		</div>
				<div style="float:right">
					<form id="SearchForm" class="form-search" action="ftsearch" method="get">
  						<div class="input-append">
    					<input type="text" id="SearchText" name="SearchText" class="input-medium search-query" placeholder="请输入搜索内容..." style="height:25px">
    					<button type="submit" class="btn btn-primary btn-small" onkeydown="if(event.keyCode==13) SearchForm.submit()">搜索</button>
  						</div>
        </div>
        	<div style="margin-top:50px">
					显示搜索结果
					<br/>
					balabalabala
				</div>
			</div>
			<div title="其他" iconCls="icon-reload" closable="true" style="padding:10px;">
			其他功能
		</div>
  		</div>
    </div>
  </div>
</div>
</div>

<script src="js/excanvas.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="js/jquery.ui.custom.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.flot.min.js"></script>
<script src="js/jquery.flot.resize.min.js"></script>
<script src="js/jquery.peity.min.js"></script>
<script src="js/fullcalendar.min.js"></script>
<script src="js/maruti.js"></script>
<script src="js/maruti.dashboard.js"></script>
<script src="js/maruti.chat.js"></script>
<script type="text/javascript">
  // This function is called from the pop-up menus to transfer to
  // a different page. Ignore if the value returned is a null string:
  function goPage (newURL) {

      // if url is empty, skip the menu dividers and reset the menu selection to default
      if (newURL != "") {

          // if url is "-", it is this page -- reset the menu:
          if (newURL == "-" ) {
              resetMenu();
          }
          // else, send page to designated URL
          else {
            document.location.href = newURL;
          }
      }
  }

// resets the menu selection upon entry to this page:
function resetMenu() {
   document.gomenu.selector.selectedIndex = 2;
}
</script>
<script>

	$(".t_title h5").bind("click",function(){
		if($(this).parent().find(".t_list").first().css("display")=="none")
			$(this).parent().find(".t_list").first().css("display","block");
		else
			$(this).parent().find(".t_list").first().css("display","none");
	});
	$(".t_title li").bind("click",function(){
		$temp = $(this).attr("link");
		$(".myframe").attr("src",$temp);
	});
</script>

</body>
</html>
