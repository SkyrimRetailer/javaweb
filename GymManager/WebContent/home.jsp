<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>健身房管理系统</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
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
						<li><a href="home.jsp" class="active"><i class="lnr lnr-home"></i> <span>主页</span></a></li>
						<li><a href="staff.jsp" class=""><i class="lnr lnr-user"></i> <span>职员信息</span></a></li>
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
					<!-- OVERVIEW -->
					<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">每周概述</h3>
							<p id="Period" class="panel-subtitle"></p>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-calendar"></i></span>
										<p>
											<span id="Workout" class="number">0</span>
											<span class="title">打卡</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span id="Sales" class="number">0</span>
											<span class="title">出售</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-line-chart"></i></span>
										<p>
											<span id="TotalWorkout" class="number">0</span>
											<span class="title">总计打卡</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-bar-chart"></i></span>
										<p>
											<span id="TotalSales" class="number">0</span>
											<span class="title">总计出售</span>
										</p>
									</div>
								</div>
							</div>
							<div class="row">
								<div class="col-md-9">
									<h4>每日健身概况</h4>
									<div id="headline-chart" class="ct-chart"></div>
								</div>
								<div class="col-md-3">									
									<div class="weekly-summary text-align">
										<span class="number"></span>
										<span class="info-label"></span>
									</div>
									<div class="weekly-summary text-align">
										<span id="MonthlyIncome" class="number">￥0</span>
										<span class="info-label">本月收入</span>
									</div>
									<div class="weekly-summary text-align">
										<span id="TotalIncome" class="number">￥0</span>
										<span class="info-label">总收入</span>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- END OVERVIEW -->					
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
	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script>
	$(function() {
		var data, options;

		// headline charts
		data = {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			series: [
				[0, 0, 0, 0, 0, 0, 0],
				[0, 0, 0, 0, 0, 0, 0],
				/*
				[23, 29, 24, 40, 25, 24, 35],
				[14, 25, 18, 34, 29, 38, 44],
				*/
			]
		};

		options = {
			height: 300,
			showArea: true,
			showLine: false,
			showPoint: false,
			fullWidth: true,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Bar('#headline-chart', data, options);
	});
	</script>
	<script>
	function getTime(n){
		var now=new Date();
		var year=now.getFullYear();
		//因为月份是从0开始的,所以获取这个月的月份数要加1才行
		var month=now.getMonth()+1;
		var date=now.getDate();
		var day=now.getDay();
		console.log(date);
		//判断是否为周日,如果不是的话,就让今天的day-1(例如星期二就是2-1)
		if(day!==0){
		n=n+(day-1);
		}
		else{
		n=n+day;
		}
		if(day){
		//这个判断是为了解决跨年的问题
			if(month>1){
			month=month;
			}
			//这个判断是为了解决跨年的问题,月份是从0开始的
			else{
			year=year-1;
			month=12;
			}
		}
		now.setDate(now.getDate()-n);
		year=now.getFullYear();
		month=now.getMonth()+1;
		date=now.getDate();
		console.log(n);
		s=year+"-"+(month<10?('0'+month):month)+"-"+(date<10?('0'+date):date);
		return s;
	}
	var weekstart=getTime(0);	//本周开始日期
	var weekend=getTime(-6);	//本周结束日期
	var lastweekstart=getTime(7);	//上周开始时间
	var lastweekend=getTime(1);		//上周结束时间
	$("#Period").text("	周期："+weekstart+" - "+weekend);
	</script>
	<script>
	function home_init(){
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"Workout",
			startdate:weekstart,
			enddate:weekend
			},
			success:function(result){
			$("#Workout").text(result);
			}
		})
		
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"Sales",
			startdate:weekstart,
			enddate:weekend
			},
			success:function(result){
			$("#Sales").text(result);
			}
		})
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"TotalWorkout"
			},
			success:function(result){
			$("#TotalWorkout").text(result);
			}
		})
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"TotalSales"
			},
			success:function(result){
			$("#TotalSales").text(result);
			}
		})
		var time = new Date();
		var year=time.getFullYear();
		var month=time.getMonth()+1;
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"MonthlyIncome",
			startdate:year+"-"+(month<10?('0'+month):month)+"-"+"01"
			},
			success:function(result){
			$("#MonthlyIncome").text("￥"+result);
			}
		})
		
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"TotalIncome"
			},
			success:function(result){
			$("#TotalIncome").text("￥"+result);
			}
		})
		$.ajax({
			type:"post",
			url:"php/home_init.php",
			data:{do_what:"WorkoutRecord",
			startdate:weekstart,
			laststartdate:lastweekstart
			},
			success:function(result){
				result=eval(result);	//把返回的字符串变为数组
				data = {
				labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
				series: result
				};
				options = {
				height: 300,
				showArea: true,
				showLine: false,
				showPoint: false,
				fullWidth: true,
				axisX: {
					showGrid: false
				},
				lineSmooth: false,
				};

				new Chartist.Bar('#headline-chart', data, options);
			}
		})
	}
	home_init();
	</script>
</body>

</html>
