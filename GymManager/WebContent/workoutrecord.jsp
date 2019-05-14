<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>健身记录</title>
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
						<li><a href="member.jsp" class=""><i class="lnr lnr-chart-bars"></i> <span>会员信息</span></a></li>
						<li><a href="workoutrecord.jsp" class="active"><i class="lnr lnr-alarm"></i> <span>健身记录</span></a></li>
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
					<h3 class="page-title">健身记录</h3>
					<div class="col">
						<div class="col-md-6">
							<div class="panel">
							<!-- TABLE STRIPED -->
							
								<div class="panel-body">
									<table id="workoutrecord_table" class="table table-striped"
										data-toggle="table" 
										data-pagination="true"
										data-pagination-loop="true"
										data-only-info-pagination="false"
										data-side-pagination="client"
										data-smart-display="true"
										data-search="true">										
										<thead>
										 <tr>
											<th data-field="CheckinDate">时间</th>
											<th data-field="CardID">会员卡号</th>
											<th data-field="Name">姓名</th>
											<th data-field="Gender">性别</th>
										 </tr>
										</thead>
									</table>
							
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
									<h3 class="panel-title">添加记录</h3>
								</div>
								<div class="panel-body">
									<span>会员卡号：</span>
									<br>
									<input type="text" Maxlength="8" id="CardID" required="required" class="form-control" placeholder="例如：00000014">
									<br>
									<button type="button" class="btn btn-primary" onclick="add_WorkoutRecord()">添加</button>
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
									<div id="add_RecordExist" class="alert alert-warning alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 今天已经签到过了！
									</div>
									<div id="add_failed" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 添加失败！
									</div>
									<div id="add_nofound" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 查无此人！
									</div>
									<div id="add_overdue" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 该会员卡已过期！
									</div>
								</div>
							</div>
							<!-- END INPUTS -->
						</div>
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
   <script> $(document).ready(function(){
		$.ajax({
			url:"php/WorkoutRecord_info.php",
			success:function(result){
			$('#workoutrecord_table').bootstrapTable('load', result);
			}
		})
	})
	var ui =document.getElementById("add_success");
	ui.style.display="none";
	var ui =document.getElementById("add_IDEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_RecordExist");
	ui.style.display="none";
	var ui =document.getElementById("add_failed");
	ui.style.display="none";
	var ui =document.getElementById("add_nofound");
	ui.style.display="none";
	var ui =document.getElementById("add_overdue");
	ui.style.display="none";
	
	</script>
	<script>
	function add_WorkoutRecord()
	{
		$.ajax({
		type:"post",
		url:"php/handle_WorkoutRecord.php",
		data:{do_what:"add",
		CardID:$("#CardID").val()
		},
		
		success:function(result){
			var ui =document.getElementById("add_success");
			ui.style.display="none";
			var ui =document.getElementById("add_IDEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_RecordExist");
			ui.style.display="none";
			var ui =document.getElementById("add_failed");
			ui.style.display="none";
			var ui =document.getElementById("add_nofound");
			ui.style.display="none";
			var ui =document.getElementById("add_overdue");
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
				var ui =document.getElementById("add_RecordExist");
				ui.style.display="";
			}
			else if(result == 4){
				var ui =document.getElementById("add_nofound");
				ui.style.display="";
			}
			else if(result == 5){
				var ui =document.getElementById("add_overdue");
				ui.style.display="";
			}
			}
		})
		$(document).ready(function(){
		$.ajax({
			url:"php/WorkoutRecord_info.php",
			success:function(result){
			$('#workoutrecord_table').bootstrapTable('load', result);
			}
		})
		})
	}
	</script>
</body>

</html>