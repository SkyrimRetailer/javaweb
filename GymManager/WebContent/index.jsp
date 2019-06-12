<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="fullscreen-bg">

<head>
	<title>Login</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box ">
					<div class="left">
						<div class="content">
							<div class="header">
								<div class="logo text-center"><img src="assets/img/logo-dark.png" alt="Klorofil Logo"></div>
								<p class="lead">登录账户</p>
							</div>
							<div class="form-group input-group">
								<label for="signin-email" class="control-label sr-only">用户名</label>
								<span class="input-group-addon"><i class="fa fa-user"></i></span>
								<input type="text" maxlength="16" id="username" class="form-control" placeholder="Username">
							</div>
							<div class="form-group input-group">
								<label for="signin-password" class="control-label sr-only">密码</label>
								<span class="input-group-addon"><i class="fa fa-lock"></i></span>
								<input type="password" maxlength="16" id="password" class="form-control" placeholder="Password">
							</div>	
							<div class="form-group input-group">
								<label class="control-label sr-only">验证码</label>
								<span class="input-group-addon"><i class="fa fa-check-circle"></i></span>
								<input style="width:50%" type="text" maxlength="16" id="checkcode" class="form-control" placeholder="CheckCode">
								<img align="right" id="img" alt="" src="<%= request.getContextPath() %>/CheckCodeServlet" onclick="ChangeImg()">
							</div>
							<div class="form-group">
								<label style="display:none" id="label"></label><span style="display:none" id="notice"></span>
							</div>
							<br>
							<button type="submit" id="login" class="btn btn-primary btn-lg btn-block" onclick="login()"><i style="display:none" id="spin" class="fa fa-spinner fa-spin"></i>登录</button>
							<br>
							<a class="primary" href="register.jsp">注册</a>
							
							<br>	
							<div class="text-primary" id="ShowDiv"></div>
						</div>
					</div>
					<div class="right">
						<div class="overlay"></div>
						<div class="content text">
							<h1 class="heading">健身房管理系统</h1>
							<p>by SkYoung</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
	<!--JAVASCRIPT-->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script>
	function ChangeImg(){
		document.getElementById("img").src="<%=request.getContextPath()%>/CheckCodeServlet?"+Math.random();
	}
	function login(){
		var label = document.getElementById("label");
		var notice = document.getElementById("notice");
		var login = document.getElementById("login");
		var spin = document.getElementById("spin");
		label.style.display="none";
		notice.style.display="none";
		if(document.getElementById("username").value == ""){
			label.innerHTML = "WARNING";
			label.className = "label label-warning";
			label.style.display="";
			notice.innerHTML = "&nbsp;&nbsp;&nbsp;用户名不能为空";
			notice.className = "text-warning element-left";
			notice.style.display="";
			return;
		}
		else if(document.getElementById("password").value == ""){
			label.innerHTML = "WARNING";
			label.className = "label label-warning";
			label.style.display="";
			notice.innerHTML = "&nbsp;&nbsp;&nbsp;密码不能为空";
			notice.className = "text-warning element-left";
			notice.style.display="";
			return;
		}
		else if(document.getElementById("checkcode").value == ""){
			label.innerHTML = "WARNING";
			label.className = "label label-warning";
			label.style.display="";
			notice.innerHTML = "&nbsp;&nbsp;&nbsp;验证码不能为空";
			notice.className = "text-warning element-left";
			notice.style.display="";
			return;
		}
		else{
			login.disabled = true;
			spin.style.display = "";
			$.ajax({
			type:"post",
			url:"login.user",
			data:{
			username:$("#username").val(),
			password:$("#password").val(),
			checkcode:$("#checkcode").val()
			},
			success:function(result){
				if(result  == 0){
					label.innerHTML = "ERROR";
					label.className = "label label-danger";
					label.style.display="";
					notice.innerHTML = "&nbsp;&nbsp;&nbsp;用户名或密码错误";
					notice.className = "text-danger element-left";
					notice.style.display="";
					login.disabled = false;
					spin.style.display = "none";
				}
				else if(result == 2){
					label.innerHTML = "ERROR";
					label.className = "label label-danger";
					label.style.display="";
					notice.innerHTML = "&nbsp;&nbsp;&nbsp;验证码错误";
					notice.className = "text-danger element-left";
					notice.style.display="";
					login.disabled = false;
					spin.style.display = "none";
				}
				else if(result == 1){
					label.innerHTML = "SUCCESS";
					label.className = "label label-success";
					label.style.display="";
					notice.innerHTML = "&nbsp;&nbsp;&nbsp;登录成功";
					notice.className = "text-success element-left";
					notice.style.display="";
					Load("home.jsp");
				}
				else{
					label.innerHTML = "ERROR";
					label.className = "label label-danger";
					label.style.display="";
					notice.innerHTML = "&nbsp;&nbsp;&nbsp;登录失败";
					notice.className = "text-danger element-left";
					notice.style.display="";
					login.disabled = false;
					spin.style.display = "none";
				}
			}
			})
		}
	}
	</script>
	
<script>
	var secs = 3; //倒计时的秒数
	var URL ;
	function Load(url){
	URL = url;
	for(var i=secs;i>=0;i--)
	{
	   window.setTimeout('doUpdate(' + i + ')', (secs-i) * 1000);
	}
	}
	function doUpdate(num)
	{
		document.getElementById('ShowDiv').innerHTML = '将在'+num+'秒后自动跳转到主页' ;
		if(num == 0) { window.location = URL; }
	}
</script>
</body>

</html>
