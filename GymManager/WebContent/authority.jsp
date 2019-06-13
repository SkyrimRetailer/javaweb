<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>权限管理</title>
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
	<style>
        .Type{
            display: none;;
        }
        .Type_first {
            display: block;
        }
    </style>
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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>欢迎，${sessionScope.username}</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="logout.user"><i class="lnr lnr-exit"></i> <span>注销</span></a></li>
							</ul>
						</li>
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
						<li><a href="workoutrecord.jsp" class=""><i class="lnr lnr-alarm"></i> <span>健身记录</span></a></li>
						<li><a href="finacialrecord.jsp" class=""><i class="lnr lnr-file-empty"></i> <span>财务信息</span></a></li>
						<li><a href="authority.jsp" class="active"><i class="lnr lnr-magic-wand"></i> <span>权限管理</span></a></li>						
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
					<h3 class="page-title">权限管理</h3>
					<!-- START USER AUTHORITY -->
					<div class="col">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">用户权限管理</h3>
								</div>
								<div class="panel-body">
									<select id="all_users" class="form-control">
										<option value="">------请选择用户------</option>
									</select>
									<div align="justify">
										<h5>权限管理：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_AuthorityManage" type="checkbox">
											<span style="width:20%">允许</span>
										</label>
										<br><br>
										
										<h5>职员信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>职员类型信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffTypeRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffTypeAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffTypeEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_StaffTypeDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>会员信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_MemberRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_MemberAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_MemberEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_MemberDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>健身记录：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_WorkoutRecordRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_WorkoutRecordAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_WorkoutRecordDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>财务信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_FinacialRecordRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_FinacialRecordAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_FinacialRecordEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="User_FinacialRecordDelete" type="checkbox">
											<span style="width:20%"> 删除</span>
										</label>
										<br>
										<br>
									</div>
									<button id="user_submit" type="button" class="btn btn-primary" onclick="UserSubmit()">提交</button>
								</div>
							</div>
						</div>
					</div>
					<!-- END USER AUTHORITY -->
					<!-- START ROLE AUTHORITY -->
					<div class="col">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">角色权限管理</h3>
								</div>
								<div class="panel-body">
									<select id="all_roles" class="form-control">
										<option value="">------请选择角色------</option>
									</select>
									<div align="justify">
										<h5>权限管理：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_AuthorityManage" type="checkbox">
											<span style="width:20%">允许</span>
										</label>
										<br><br>
										
										<h5>职员信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>职员类型信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffTypeRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffTypeAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffTypeEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_StaffTypeDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>会员信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_MemberRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_MemberAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_MemberEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_MemberDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>健身记录：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_WorkoutRecordRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_WorkoutRecordAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_WorkoutRecordDelete" type="checkbox">
											<span style="width:20%">删除</span>
										</label>
										<br><br>
										
										<h5>财务信息：</h5>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_FinacialRecordRead" type="checkbox">
											<span style="width:20%">读取</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_FinacialRecordAdd" type="checkbox">
											<span style="width:20%">添加</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_FinacialRecordEdit" type="checkbox">
											<span style="width:20%">编辑</span>
										</label>
										<label class="fancy-checkbox" style="display:inline">
											<input id="Role_FinacialRecordDelete" type="checkbox">
											<span style="width:20%"> 删除</span>
										</label>
										<br>
										<br>
										<span id="test"></span>
									</div>
									<button id="role_submit" type="button" class="btn btn-primary" onclick="RoleSubmit()">提交</button>
								</div>
							</div>
						</div>
					</div>
					<!-- END ROLE AUTHORITY -->
					
					<!-- START ADD AND DELETE ROLE -->
					<div class="col">
						<div class="col-md-6">
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">添加/删除角色</h3>
								</div>
								<div class="panel-body">
									<span>角色名称：</span>
									<br>
									<input type="text" id="Rolename" required="required" class="form-control" >
									<br>
									<button type="button" class="btn btn-primary" onclick="add_Role()">添加</button>
									<button type="button" class="btn btn-primary" onclick="delete_Role()">删除</button>
									<br>
									<br>
									<div id="label" style="display:none">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i id="icon"></i> <i id="notice"></i>
									</div>
								</div>
							</div>
						</div>
					</div>	
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		</div>
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
	<script type="text/javascript">
	var users;
	var roles;
	function init(){
		document.getElementById("user_submit").disabled = true;
		document.getElementById("role_submit").disabled = true;
		$.ajax({
			type:"post",
			url:"init.authority",
			data:{
				init:"init"
			},
			success:function(result){
				var select1 = document.getElementById("all_users");
				var select2 = document.getElementById("all_roles");
				var obj = eval("("+ result +")");
				users = obj.users;
				roles = obj.roles;
				select1.options.length=0;	//清空选项
				select2.options.length=0;
				select1.options.add(new Option("------请选择用户------",""));
				select2.options.add(new Option("------请选择角色------",""));
				for(var i=0;i<users.length;i++){
					select1.options.add(new Option(users[i].username,users[i].username));
				}
				for(var i=0;i<roles.length;i++){
					select2.options.add(new Option(roles[i].rolename,roles[i].rolename));
				}
			}
		})
	}
	init();
	</script>
	<script type="text/javascript">
	$(document).ready(function(){
		$("#all_users").change(function(){
			var select = document.getElementById("all_users");
			var index = select.selectedIndex - 1;
			if(index == -1){
				document.getElementById("user_submit").disabled = true;
				return;
			}
			else{
				document.getElementById("user_submit").disabled = false;
			}
			if(users[index].authorityManage == 1){document.getElementById("User_AuthorityManage").checked=true;}
			else{document.getElementById("User_AuthorityManage").checked=false;}
			if(users[index].staffRead == 1){document.getElementById("User_StaffRead").checked=true;}
			else{document.getElementById("User_StaffRead").checked=false;}
			if(users[index].staffAdd == 1){document.getElementById("User_StaffAdd").checked=true;}
			else{document.getElementById("User_StaffAdd").checked=false;}
			if(users[index].staffEdit == 1){document.getElementById("User_StaffEdit").checked=true;}
			else{document.getElementById("User_StaffEdit").checked=false;}
			if(users[index].staffDelete == 1){document.getElementById("User_StaffDelete").checked=true;}
			else{document.getElementById("User_StaffDelete").checked=false;}
			if(users[index].staffTypeRead == 1){document.getElementById("User_StaffTypeRead").checked=true;}
			else{document.getElementById("User_StaffTypeRead").checked=false;}
			if(users[index].staffTypeAdd == 1){document.getElementById("User_StaffTypeAdd").checked=true;}
			else{document.getElementById("User_StaffTypeAdd").checked=false;}
			if(users[index].staffTypeEdit == 1){document.getElementById("User_StaffTypeEdit").checked=true;}
			else{document.getElementById("User_StaffTypeEdit").checked=false;}
			if(users[index].staffTypeDelete == 1){document.getElementById("User_StaffTypeDelete").checked=true;}
			else{document.getElementById("User_StaffTypeDelete").checked=false;}
			if(users[index].memberRead == 1){document.getElementById("User_MemberRead").checked=true;}
			else{document.getElementById("User_MemberRead").checked=false;}
			if(users[index].memberAdd == 1){document.getElementById("User_MemberAdd").checked=true;}
			else{document.getElementById("User_MemberAdd").checked=false;}
			if(users[index].memberEdit == 1){document.getElementById("User_MemberEdit").checked=true;}
			else{document.getElementById("User_MemberEdit").checked=false;}
			if(users[index].memberDelete == 1){document.getElementById("User_MemberDelete").checked=true;}
			else{document.getElementById("User_MemberDelete").checked=false;}
			if(users[index].workoutRecordRead == 1){document.getElementById("User_WorkoutRecordRead").checked=true;}
			else{document.getElementById("User_WorkoutRecordRead").checked=false;}
			if(users[index].workoutRecordAdd == 1){document.getElementById("User_WorkoutRecordAdd").checked=true;}
			else{document.getElementById("User_WorkoutRecordAdd").checked=false;}
			if(users[index].workoutRecordDelete == 1){document.getElementById("User_WorkoutRecordDelete").checked=true;}
			else{document.getElementById("User_WorkoutRecordDelete").checked=false;}
			if(users[index].finacialRecordRead == 1){document.getElementById("User_FinacialRecordRead").checked=true;}
			else{document.getElementById("User_FinacialRecordRead").checked=false;}
			if(users[index].finacialRecordAdd == 1){document.getElementById("User_FinacialRecordAdd").checked=true;}
			else{document.getElementById("User_FinacialRecordAdd").checked=false;}
			if(users[index].finacialRecordEdit == 1){document.getElementById("User_FinacialRecordEdit").checked=true;}
			else{document.getElementById("User_FinacialRecordEdit").checked=false;}
			if(users[index].finacialRecordDelete == 1){document.getElementById("User_FinacialRecordDelete").checked=true;}
			else{document.getElementById("User_FinacialRecordDelete").checked=false;}
		});
		$("#all_roles").change(function(){
			var select = document.getElementById("all_roles");
			var index = select.selectedIndex - 1;
			if(index == -1){
				document.getElementById("role_submit").disabled = true;
				return;
			}
			else{
				document.getElementById("role_submit").disabled = false;
			}
			if(roles[index].authorityManage == 1){document.getElementById("Role_AuthorityManage").checked=true;}
			else{document.getElementById("Role_AuthorityManage").checked=false;}
			if(roles[index].staffRead == 1){document.getElementById("Role_StaffRead").checked=true;}
			else{document.getElementById("Role_StaffRead").checked=false;}
			if(roles[index].staffAdd == 1){document.getElementById("Role_StaffAdd").checked=true;}
			else{document.getElementById("Role_StaffAdd").checked=false;}
			if(roles[index].staffEdit == 1){document.getElementById("Role_StaffEdit").checked=true;}
			else{document.getElementById("Role_StaffEdit").checked=false;}
			if(roles[index].staffDelete == 1){document.getElementById("Role_StaffDelete").checked=true;}
			else{document.getElementById("Role_StaffDelete").checked=false;}
			if(roles[index].staffTypeRead == 1){document.getElementById("Role_StaffTypeRead").checked=true;}
			else{document.getElementById("Role_StaffTypeRead").checked=false;}
			if(roles[index].staffTypeAdd == 1){document.getElementById("Role_StaffTypeAdd").checked=true;}
			else{document.getElementById("Role_StaffTypeAdd").checked=false;}
			if(roles[index].staffTypeEdit == 1){document.getElementById("Role_StaffTypeEdit").checked=true;}
			else{document.getElementById("Role_StaffTypeEdit").checked=false;}
			if(roles[index].staffTypeDelete == 1){document.getElementById("Role_StaffTypeDelete").checked=true;}
			else{document.getElementById("Role_StaffTypeDelete").checked=false;}
			if(roles[index].memberRead == 1){document.getElementById("Role_MemberRead").checked=true;}
			else{document.getElementById("Role_MemberRead").checked=false;}
			if(roles[index].memberAdd == 1){document.getElementById("Role_MemberAdd").checked=true;}
			else{document.getElementById("Role_MemberAdd").checked=false;}
			if(roles[index].memberEdit == 1){document.getElementById("Role_MemberEdit").checked=true;}
			else{document.getElementById("Role_MemberEdit").checked=false;}
			if(roles[index].memberDelete == 1){document.getElementById("Role_MemberDelete").checked=true;}
			else{document.getElementById("Role_MemberDelete").checked=false;}
			if(roles[index].workoutRecordRead == 1){document.getElementById("Role_WorkoutRecordRead").checked=true;}
			else{document.getElementById("Role_WorkoutRecordRead").checked=false;}
			if(roles[index].workoutRecordAdd == 1){document.getElementById("Role_WorkoutRecordAdd").checked=true;}
			else{document.getElementById("Role_WorkoutRecordAdd").checked=false;}
			if(roles[index].workoutRecordDelete == 1){document.getElementById("Role_WorkoutRecordDelete").checked=true;}
			else{document.getElementById("Role_WorkoutRecordDelete").checked=false;}
			if(roles[index].finacialRecordRead == 1){document.getElementById("Role_FinacialRecordRead").checked=true;}
			else{document.getElementById("Role_FinacialRecordRead").checked=false;}
			if(roles[index].finacialRecordAdd == 1){document.getElementById("Role_FinacialRecordAdd").checked=true;}
			else{document.getElementById("Role_FinacialRecordAdd").checked=false;}
			if(roles[index].finacialRecordEdit == 1){document.getElementById("Role_FinacialRecordEdit").checked=true;}
			else{document.getElementById("Role_FinacialRecordEdit").checked=false;}
			if(roles[index].finacialRecordDelete == 1){document.getElementById("Role_FinacialRecordDelete").checked=true;}
			else{document.getElementById("Role_FinacialRecordDelete").checked=false;}
		});
	});
	</script>
	<script>
	function UserSubmit(){
		var username;
		var authorityManage;
		var staffRead, staffAdd, staffEdit, staffDelete;
		var staffTypeRead, staffTypeAdd, staffTypeEdit, staffTypeDelete;
		var memberRead, memberAdd, memberEdit, memberDelete;
		var workoutRecordRead, workoutRecordAdd, workoutRecordDelete;
		var finacialRecordRead, finacialRecordAdd, finacialRecordEdit, finacialRecordDelete;
		username = document.getElementById("all_users").value;
		if(document.getElementById("User_AuthorityManage").checked){authorityManage=1;} else {authorityManage=0;}
		if(document.getElementById("User_StaffRead").checked){staffRead=1;} else {staffRead=0;}
		if(document.getElementById("User_StaffAdd").checked){staffAdd=1;} else {staffAdd=0;}
		if(document.getElementById("User_StaffEdit").checked){staffEdit=1;} else {staffEdit=0;}
		if(document.getElementById("User_StaffDelete").checked){staffDelete=1;} else {staffDelete=0;}
		if(document.getElementById("User_StaffTypeRead").checked){staffTypeRead=1;} else {staffTypeRead=0;}
		if(document.getElementById("User_StaffTypeAdd").checked){staffTypeAdd=1;} else {staffTypeAdd=0;}
		if(document.getElementById("User_StaffTypeEdit").checked){staffTypeEdit=1;} else {staffTypeEdit=0;}
		if(document.getElementById("User_StaffTypeDelete").checked){staffTypeDelete=1;} else {staffTypeDelete=0;}
		if(document.getElementById("User_MemberRead").checked){memberRead=1;} else {memberRead=0;}
		if(document.getElementById("User_MemberAdd").checked){memberAdd=1;} else {memberAdd=0;}
		if(document.getElementById("User_MemberEdit").checked){memberEdit=1;} else {memberEdit=0;}
		if(document.getElementById("User_MemberDelete").checked){memberDelete=1;} else {memberDelete=0;}
		if(document.getElementById("User_WorkoutRecordRead").checked){workoutRecordRead=1;} else {workoutRecordRead=0;}
		if(document.getElementById("User_WorkoutRecordAdd").checked){workoutRecordAdd=1;} else {workoutRecordAdd=0;}
		if(document.getElementById("User_WorkoutRecordDelete").checked){workoutRecordDelete=1;} else {workoutRecordDelete=0;}
		if(document.getElementById("User_FinacialRecordRead").checked){finacialRecordRead=1;} else {finacialRecordRead=0;}
		if(document.getElementById("User_FinacialRecordAdd").checked){finacialRecordAdd=1;} else {finacialRecordAdd=0;}
		if(document.getElementById("User_FinacialRecordEdit").checked){finacialRecordEdit=1;} else {finacialRecordEdit=0;}
		if(document.getElementById("User_FinacialRecordDelete").checked){finacialRecordDelete=1;} else {finacialRecordDelete=0;} 
		$.ajax({
			type:"post",
			url:"update_user.authority",
			data:{
				Username:username,
				AuthorityManage:authorityManage,
				
				StaffRead:staffRead,
				StaffAdd:staffAdd,
				StaffEdit:staffEdit,
				StaffDelete:staffDelete,
				
				StaffTypeRead:staffTypeRead,
				StaffTypeAdd:staffTypeAdd,
				StaffTypeEdit:staffTypeEdit,
				StaffTypeDelete:staffTypeDelete,
				
				MemberRead:memberRead,
				MemberAdd:memberAdd,
				MemberEdit:memberEdit,
				MemberDelete:memberDelete,
				
				WorkoutRecordRead:workoutRecordRead,
				WorkoutRecordAdd:workoutRecordAdd,
				WorkoutRecordDelete:workoutRecordDelete,
				
				FinacialRecordRead:finacialRecordRead,
				FinacialRecordAdd:finacialRecordAdd,
				FinacialRecordEdit:finacialRecordEdit,
				FinacialRecordDelete:finacialRecordDelete
			},
			success:function(result){
				if(result == 1){
					alert("修改成功");
					init();
				}
				else{
					alert("修改失败");
				}
			}
		})
	}
	function RoleSubmit(){
		var rolename;
		var authorityManage;
		var staffRead, staffAdd, staffEdit, staffDelete;
		var staffTypeRead, staffTypeAdd, staffTypeEdit, staffTypeDelete;
		var memberRead, memberAdd, memberEdit, memberDelete;
		var workoutRecordRead, workoutRecordAdd, workoutRecordDelete;
		var finacialRecordRead, finacialRecordAdd, finacialRecordEdit, finacialRecordDelete;
		rolename = document.getElementById("all_roles").value;
		if(document.getElementById("Role_AuthorityManage").checked){authorityManage=1;} else {authorityManage=0;}
		if(document.getElementById("Role_StaffRead").checked){staffRead=1;} else {staffRead=0;}
		if(document.getElementById("Role_StaffAdd").checked){staffAdd=1;} else {staffAdd=0;}
		if(document.getElementById("Role_StaffEdit").checked){staffEdit=1;} else {staffEdit=0;}
		if(document.getElementById("Role_StaffDelete").checked){staffDelete=1;} else {staffDelete=0;}
		if(document.getElementById("Role_StaffTypeRead").checked){staffTypeRead=1;} else {staffTypeRead=0;}
		if(document.getElementById("Role_StaffTypeAdd").checked){staffTypeAdd=1;} else {staffTypeAdd=0;}
		if(document.getElementById("Role_StaffTypeEdit").checked){staffTypeEdit=1;} else {staffTypeEdit=0;}
		if(document.getElementById("Role_StaffTypeDelete").checked){staffTypeDelete=1;} else {staffTypeDelete=0;}
		if(document.getElementById("Role_MemberRead").checked){memberRead=1;} else {memberRead=0;}
		if(document.getElementById("Role_MemberAdd").checked){memberAdd=1;} else {memberAdd=0;}
		if(document.getElementById("Role_MemberEdit").checked){memberEdit=1;} else {memberEdit=0;}
		if(document.getElementById("Role_MemberDelete").checked){memberDelete=1;} else {memberDelete=0;}
		if(document.getElementById("Role_WorkoutRecordRead").checked){workoutRecordRead=1;} else {workoutRecordRead=0;}
		if(document.getElementById("Role_WorkoutRecordAdd").checked){workoutRecordAdd=1;} else {workoutRecordAdd=0;}
		if(document.getElementById("Role_WorkoutRecordDelete").checked){workoutRecordDelete=1;} else {workoutRecordDelete=0;}
		if(document.getElementById("Role_FinacialRecordRead").checked){finacialRecordRead=1;} else {finacialRecordRead=0;}
		if(document.getElementById("Role_FinacialRecordAdd").checked){finacialRecordAdd=1;} else {finacialRecordAdd=0;}
		if(document.getElementById("Role_FinacialRecordEdit").checked){finacialRecordEdit=1;} else {finacialRecordEdit=0;}
		if(document.getElementById("Role_FinacialRecordDelete").checked){finacialRecordDelete=1;} else {finacialRecordDelete=0;} 
		$.ajax({
			type:"post",
			url:"update_role.authority",
			data:{
				Rolename:rolename,
				AuthorityManage:authorityManage,
				
				StaffRead:staffRead,
				StaffAdd:staffAdd,
				StaffEdit:staffEdit,
				StaffDelete:staffDelete,
				
				StaffTypeRead:staffTypeRead,
				StaffTypeAdd:staffTypeAdd,
				StaffTypeEdit:staffTypeEdit,
				StaffTypeDelete:staffTypeDelete,
				
				MemberRead:memberRead,
				MemberAdd:memberAdd,
				MemberEdit:memberEdit,
				MemberDelete:memberDelete,
				
				WorkoutRecordRead:workoutRecordRead,
				WorkoutRecordAdd:workoutRecordAdd,
				WorkoutRecordDelete:workoutRecordDelete,
				
				FinacialRecordRead:finacialRecordRead,
				FinacialRecordAdd:finacialRecordAdd,
				FinacialRecordEdit:finacialRecordEdit,
				FinacialRecordDelete:finacialRecordDelete
			},
			success:function(result){
				if(result == 1){
					alert("修改成功");
					init();
				}
				else{
					alert("修改失败");
				}
			}
		})
	}
	</script>
	<script>
	function add_Role(){
		var label = document.getElementById("label");
		var notice = document.getElementById("notice");
		var icon = document.getElementById("icon");
		label.style.display="none";
		if(document.getElementById("Rolename").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "角色名称不能为空!";
			return;
		}
		else{
			$.ajax({
				type:"post",
				url:"add_role.authority",
				data:{
				Rolename:$("#Rolename").val()
				},
				success:function(result){
					
					if(result == 1) {
						label.className = "alert alert-success alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-check-circle";
						notice.innerHTML = "添加成功！请在上方设置角色权限";
						init();
						return;
					}
					else if(result == 0){
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "该角色已存在!";	
						return;
					}
					else{
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
	
	function delete_Role(){
		var label = document.getElementById("label");
		var notice = document.getElementById("notice");
		var icon = document.getElementById("icon");
		label.style.display="none";
		if(document.getElementById("Rolename").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "角色名称不能为空!";
			return;
		}
		else{
			$.ajax({
				type:"post",
				url:"delete_role.authority",
				data:{
				Rolename:$("#Rolename").val()
				},
				success:function(result){
					
					if(result == 1) {
						label.className = "alert alert-success alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-check-circle";
						notice.innerHTML = "删除成功";
						init();
						return;
					}
					else if(result == 0){
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "该角色不存在!";	
						return;
					}
					else{
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "删除失败";	
						return;
					}
				}
				})
		}
	}
	
	</script>
</body>

</html>
