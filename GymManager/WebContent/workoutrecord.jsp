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
				<img src="assets/img/logo-dark.png" alt="Klorofil Logo" class="img-responsive logo">
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
					<span class="page-title">&nbsp;健身房管理系统</span>
				</div>
				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>欢迎，<%=session.getAttribute("username") %></span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="logout.user"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
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
									<div id="add_label" style="display:none">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i id="add_icon"></i> <i id="add_notice"></i>
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
	</div>
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
	 $('#workoutrecord_table').bootstrapTable({
	    url: 'init.workoutrecord',         //请求后台的URL（*）
	    method: 'post',                      //请求方式（*）
	    //toolbar: '#stafftype_toolbar',                //工具按钮用哪个容器
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
	    search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
	    contentType: "application/x-www-form-urlencoded",
	    strictSearch: false,
	    showColumns: true,                  //是否显示所有的列
	    showRefresh: true,                  //是否显示刷新按钮
	    minimumCountColumns: 2,             //最少允许的列数
	    clickToSelect: true,                //是否启用点击选中行
	    //height: 700,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
	    //uniqueId: "typeID",                     //每一行的唯一标识，一般为主键列
	    showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
	    cardView: false,                    //是否显示详细视图
	    detailView: false,                   //是否显示父子表     
	    columns: [
	    	{checkbox: true,visible: true}, 
	    	{field: 'checkinTime',	title: '时间',	sortable: true}, 
	    	{field: 'cardID',		title: '卡号',	sortable: true}, 
	    	{field: 'name',			title: '姓名',	sortable: true},
	    	{field: 'gender',		title: '性别',	sortable: true}, 
	    ],
	});
	</script>
	<script>
	function add_WorkoutRecord(){
		var label = document.getElementById("add_label");
		var notice = document.getElementById("add_notice");
		var icon = document.getElementById("add_icon");
		label.style.display="none";
		
		if(document.getElementById("CardID").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "ID不能为空!";
			return;
		}else{
			$.ajax({
			type:"post",
			url:"add.workoutrecord",
			data:{
			CardID:$("#CardID").val()
			},
			success:function(result){
				
				if(result == 1) {
					label.className = "alert alert-success alert-dismissible";
					label.style.display="";
					icon.className = "fa fa-check-circle";
					notice.innerHTML = "打卡成功！";
					$("#workoutrecord_table").bootstrapTable('refresh');
					return;
				}
				else if(result == 0){
					label.className = "alert alert-danger alert-dismissible";
					label.style.display="";
					icon.className = "fa fa-times-circle";
					notice.innerHTML = "查无此人!";	
					return;
				}
				else if(result == 2){
					label.className = "alert alert-danger alert-dismissible";
					label.style.display="";
					icon.className = "fa fa-times-circle";
					notice.innerHTML = "该会员卡已过期!";
					return;
				}
				else if(result == 3){
					label.className = "alert alert-warning alert-dismissible";
					label.style.display="";
					icon.className = "fa fa-warning";
					notice.innerHTML = "今天已经打卡过了!";
					return;
				}else{
					label.className = "alert alert-danger alert-dismissible";
					label.style.display="";
					icon.className = "fa fa-times-circle";
					notice.innerHTML = "添加失败";	
					return;
				}
				
			}
			})
		}
	}
		
	</script>
</body>

</html>
