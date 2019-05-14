<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>职员类型</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				<a href="index.jsp"><img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo"></a>
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
					<span class="page-title">&nbsp;健身房管理系统</span>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>欢迎</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="index.jsp"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
							</ul>
						</li>
						<!-- <li>
							<a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
						<li><a href="home.jsp" class=""><i class="lnr lnr-home"></i> <span>主页</span></a></li>
						<li><a href="staff.jsp" class=""><i class="lnr lnr-user"></i> <span>职员信息</span></a></li>
						<li><a href="stafftype.jsp" class="active"><i class="lnr lnr-code"></i> <span>职员类型</span></a></li>
						<li><a href="member.jsp" class=""><i class="lnr lnr-chart-bars"></i> <span>会员信息</span></a></li>
						<li><a href="workoutrecord.jsp" class=""><i class="lnr lnr-alarm"></i> <span>健身记录</span></a></li>
						<li><a href="finacialrecord.jsp" class=""><i class="lnr lnr-file-empty"></i> <span>财务信息</span></a></li>						
					</ul>
				</nav>
			</div>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">职员类型信息</h3>
					<div class="col">
						<div class="col-md-6">
							<div class="panel">
							<!-- TABLE STRIPED -->
								<div class="panel-body">
									<div id="stafftype_toolbar">
										<button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal">
							                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
							            </button>
							            <button id="btn_edit" type="button" class="btn btn-default" onclick="edit_Stafftype()">
							                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							            </button>
							            <button id="btn_delete" type="button" class="btn btn-default" onclick="delete_Stafftype()">
							                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							            </button>
									</div>
									<table id="stafftype_table" class="table table-striped"></table>
								</div>							
							<!-- END TABLE STRIPED -->
							</div>
						</div>
					</div>
					<div class="col">
							<div class="col-md-6">
							<!-- INPUTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">添加职员类型</h3>
								</div>
								<div class="panel-body">
									<span>类型ID：</span>
									<br>
									<input type="text" Maxlength="4" id="TypeID" required="required" class="form-control" placeholder="例如：0014">
									<br>
									<span>工种名称：</span>
									<br>
									<input type="text" id="TypeName" Maxlength="10" class="form-control" placeholder="例如：前台">
									<br>
									<span>基本月薪：</span>
									<br>
									<input id="BasicSalary" type="text" Maxlength="11" class="form-control" placeholder="">
									<br>
									<button type="button" class="btn btn-primary" onclick="add_StaffType()">添加</button>
									<br>
									<br>
									<div id="add_success" class="alert alert-success alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-check-circle"></i> 添加成功！
									</div>
									<div id="add_IDEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> ID不能为空！
									</div>
									<div id="add_NameEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 名称不能为空！
									</div>
									<div id="add_SalaryEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 月薪不能为空！
									</div>
									<div id="add_IDExist" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 此ID已存在！
									</div>
									<div id="add_failed" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 添加失败！
									</div>
								</div>
							</div>
							<!-- END INPUTS -->
						</div>
					</div>
						<div class="col-md-6">
						<!-- DELETE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">删除职员类型</h3>
								</div>
								<div class="panel-body">
									<span>类型ID：</span>
									<br>
									<input type="text" Maxlength="4" id="DeleteTypeID" class="form-control" placeholder="">
									<br>
									<button type="button" class="btn btn-primary" onclick="delete_StaffType()">删除</button>
									<br>
									<br>
									<div id="del_success" class="alert alert-success alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-check-circle"></i> 删除成功！
									</div>
									<div id="del_empty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> ID不能为空！
									</div>
									<div id="del_nofound" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 查无此类型！
									</div>
									<div id="del_failed" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 删除失败！
									</div>
								</div>
							</div>
							<!-- END DELETE -->
					</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
		<!-- END MAIN -->
		<div class="clearfix"></div>
		<footer>
			<div class="container-fluid">
				<p class="copyright">Copyright &copy; 2018.SkYoung All rights reserved.</p>
			</div>
		</footer>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<link href="assets/bootstrap-table-develop/dist/bootstrap-table.min.css"  rel="stylesheet">
   <script src="assets/bootstrap-table-develop/dist/bootstrap-table.js"></script>
   <script src="assets/bootstrap-table-develop/dist/locale/bootstrap-table-zh-CN.js"></script>
   <script> 
   $('#stafftype_table').bootstrapTable({
       	url: 'init.stafftype',         //请求后台的URL（*）
        method: 'post',                      //请求方式（*）
        toolbar: '#stafftype_toolbar',                //工具按钮用哪个容器
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortable: false,                     //是否启用排序
        sortOrder: "asc",                   //排序方式
        //queryParams: oTableInit.queryParams,//传递参数（*）
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber: 1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
        contentType: "application/x-www-form-urlencoded",
        strictSearch: false,
        showColumns: true,                  //是否显示所有的列
        showRefresh: true,                  //是否显示刷新按钮
        minimumCountColumns: 2,             //最少允许的列数
        clickToSelect: true,                //是否启用点击选中行
        //height: 700,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
        uniqueId: "cardID",                     //每一行的唯一标识，一般为主键列
        showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表     
        columns: [
        	{checkbox: true,visible: true}, 
        	{field: 'typeID',		title: 'ID',		sortable: true}, 
        	{field: 'typeName',		title: '类别名',		sortable: true}, 
        	{field: 'basicSalary',	title: '基本工资',	sortable: true}, 
        ],
    });
	</script>
	<script>
	function add_StaffType()
	{
		$.ajax({
		type:"post",
		url:"php/handle_StaffType.php",
		data:{do_what:"add",
		TypeID:$("#TypeID").val(),
		TypeName:$("#TypeName").val(),
		BasicSalary:$("#BasicSalary").val()
		},
		
		success:function(result){
			var ui =document.getElementById("add_success");
			ui.style.display="none";
			var ui =document.getElementById("add_IDEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_NameEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_SalaryEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_IDExist");
			ui.style.display="none";
			var ui =document.getElementById("add_failed");
			ui.style.display="none";
			if(result == 1) {
				var ui =document.getElementById("add_success");
				ui.style.display="";
			}
			else if(result == 0){
				var ui =document.getElementById("add_failed");
				ui.style.display="";		
			}
			else if(result == 2){
				var ui =document.getElementById("add_IDEmpty");
				ui.style.display="";
	
			}
			else if(result == 3){
				var ui =document.getElementById("add_NameEmpty");
				ui.style.display="";
			}
			else if(result == 4){
				var ui =document.getElementById("add_IDExist");
				ui.style.display="";	
			}
			else if(result == 5){
				var ui =document.getElementById("add_SalaryEmpty");
				ui.style.display="";
			}
			}
		})
		$(document).ready(function(){
		$.ajax({
			url:"php/StaffType_info.php",
			success:function(result){
			$('#stafftype_table').bootstrapTable('load', result);
			}
		})
		})
	}
	function delete_StaffType()
	{
		$.ajax({
		type:"post",
		url:"php/handle_StaffType.php",
		data:{do_what:"delete",
		TypeID:$("#DeleteTypeID").val()
		},
		
		success:function(result){
			var ui =document.getElementById("del_success");
			ui.style.display="none";
			var ui =document.getElementById("del_empty");
			ui.style.display="none";
			var ui =document.getElementById("del_nofound");
			ui.style.display="none";
			var ui =document.getElementById("del_failed");
			ui.style.display="none";
			if(result==1)
			 {
				var ui =document.getElementById("del_success");
				ui.style.display="";
			 	
			}
			else if(result==0){
				var ui =document.getElementById("del_failed");
				ui.style.display="";
			}
			else if(result==2){
				
				var ui =document.getElementById("del_empty");
				ui.style.display="";
			}
			else if(result==3){
				
				var ui =document.getElementById("del_nofound");
				ui.style.display="";
			}
			}
		})
		$(document).ready(function(){
		$.ajax({
			url:"php/StaffType_info.php",
			success:function(result){
			$('#stafftype_table').bootstrapTable('load', result);
			}
		})
		})
	}</script>
</body>

</html>
