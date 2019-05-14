<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html class="fullscreen-bg">

<head>
	<title>Register</title>
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
	<!--  <link rel="stylesheet" href="assets/css/demo.css">-->
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
	
	<script src="js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="js/jquery.fancy-textbox.js" ></script>
    <link href="css/fancy-textbox.css" rel="stylesheet" />
    
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<div class="vertical-align-wrap">
			<div class="vertical-align-middle">
				<div class="auth-box lockscreen">
					<div class="content">
						<div class="user text-center">
						<h2 class="name">注册账户</h2>
						</div>
						<div align="center">
							<input type="text" class="form-control" data-animation="up" id="username" data-label="用户名" placeholder="username" /><span id="user_notice"></span>
						</div>
						<div align="center">
							<input type="password" class="form-control pass" data-animation="up" id="password" data-label="输入密码" placeholder="password" /><span id="pass_notice"></span>
						</div>
						<div align="center">
							<input type="password" class="form-control pass" data-animation="up" id="passwordcheck" data-label="确认密码" placeholder="password" /><span id="passcheck_notice"></span>
						</div>
						<div align="center">
							<span style="display:none" id="notice"></span>
						</div>
						
						<div style="padding:20px 100px;" >
							<button style="float:left" disabled="true" type="submit" id="register" class="btn btn-info" onclick="register()">注册</button>
							
							<button style="float:right" type="submit" id="back" class="btn btn-info" onclick="back()">返回</button>
						</div>
						<div class="text-primary" id="ShowDiv"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- END WRAPPER -->
	<!--JAVASCRIPT-->
	<!-- <script src="assets/vendor/jquery/jquery.min.js"></script>-->
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script type="text/javascript">
        $(document).ready(function () {
            $('input').ftext();
        });
    </script>
    <script>
	window.onload = function(){	//实现确认输入正确
		var inputs = document.getElementsByTagName("input");
		var notice = document.getElementById("notice");
		var register = document.getElementById("register");
		for(i=0;i<inputs.length;i++){
			inputs[i].onblur = function(){
				var username = document.getElementById("username").value
				var password = document.getElementById("password").value;
				var passwordcheck = document.getElementById("passwordcheck").value;
				if(username == ""){
					notice.innerHTML = "&nbsp;&nbsp;&nbsp;用户名为空";
					notice.className = "text-danger element-left";
					notice.style.display="";
					register.disabled = true;
					return;
				}
				else{
					notice.style.display="none";
				}
				if(password != "" && passwordcheck != ""){
					if(password == passwordcheck){
						notice.innerHTML = "&nbsp;&nbsp;&nbsp;两次密码一致";
						notice.className = "text-success element-left";
						notice.style.display="";
						register.disabled = false;
						return;
					}
					else{
						notice.innerHTML = "&nbsp;&nbsp;&nbsp;两次密码不一致";
						notice.className = "text-danger element-left";
						notice.style.display="";
						register.disabled = true;
						return;
					}
				}
			}
		}
	}
	</script>
	
	<script type="text/javascript">
	function register(){
		var notice = document.getElementById("notice");
		$.ajax({
		type:"post",
		url:"register.user",
		data:{
		username:$("#username").val(),
		password:$("#password").val()
		},
		success:function(result){
			if(result  == 0){
				notice.innerHTML = "&nbsp;&nbsp;&nbsp;用户名已注册";
				notice.className = "text-danger element-left";
				notice.style.display="";
				return;
			}
			else if(result == 1){
				notice.innerHTML = "&nbsp;&nbsp;&nbsp;注册成功";
				notice.className = "text-success element-left";
				notice.style.display="";
				Load("index.jsp", 3);
			}
		}
		})
	}
	</script>
	<script>
	var URL ;
	function Load(url, secs){
		URL = url;
		for(var i=secs;i>=0;i--)
		{
		   window.setTimeout('doUpdate(' + i + ')', (secs-i) * 1000);
		}
	}
	function doUpdate(num)
	{
		document.getElementById('ShowDiv').innerHTML = '将在'+num+'秒后自动跳转到登录界面' ;
		if(num == 0) { window.location = URL; }
	}
	</script>
	<script>
	function back(){
		window.location = "index.jsp";
	}
	
	</script>
</body>

</html>
