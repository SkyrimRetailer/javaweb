<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>财务信息</title>
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
						<li><a href="finacialrecord.jsp" class="active"><i class="lnr lnr-file-empty"></i> <span>财务信息</span></a></li>						
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
					<h3 class="page-title">财务信息</h3>
					
						<div class="panel">
							<!-- TABLE STRIPED -->
							
								<div class="panel-body">
									<table id="finacialrecord_table" class="table table-striped"
										data-toggle="table" 
										data-pagination="true"
										data-pagination-loop="true"
										data-only-info-pagination="false"
										data-side-pagination="client"
										data-smart-display="true"
										data-search="true">										
										<thead>
										 <tr>
											<th data-field="SID">流水号</th>
											<th data-field="InOrOut">收支</th>
											<th data-field="ConsumeType">消费类型</th>
											<th data-field="Description">描述</th>
											<th data-field="UnitPrice">单价</th>
											<th data-field="Amount">数量</th>
											<th data-field="Total">总金额</th>
											<th data-field="Name">处理员工</th>
											<th data-field="Time">时间</th>
											<th data-field="Remark">备注</th>
										 </tr>
										</thead>
									</table>
							
							</div>
							<!-- END TABLE STRIPED -->
						</div>
					
					<div class="col">
							<div class="col-md-6">
							<!-- INPUTS -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">添加账单</h3>
								</div>
								<div class="panel-body">
									<span>流水号：</span>
									<input type="text" Maxlength="10" id="SID" class="form-control" placeholder="例如：0000000014">
									
									<span>收入或支出：</span>
									<select id="InOrOut" name="InOrOut" class="form-control">
										<option value="">----请选择收入或支出----</option>
										<option value="收入">收入</option>
										<option value="支出">支出</option>
									</select>								
									
									<span>消费类型：</span>
									<select id="ConsumeType"class="form-control Type Type_first">
										<option value="">----请选择消费类型----</option>
									</select>
									<select id="InConsumeType" class="form-control Type">
										<option value="">----请选择消费类型----</option>
										<option value="办卡">办卡</option>
										<option value="购课">购课</option>
										<option value="购物">购物</option>
										<option value="其他">其他</option>
									</select>
									<select id="OutConsumeType" class="form-control Type">
										<option value="">----请选择消费类型----</option>
										<option value="器械">器械</option>
										<option value="耗材">耗材</option>
										<option value="货物">货物</option>
										<option value="维修">维修</option>
										<option value="工资">工资</option>
										<option value="房租">房租</option>
										<option value="水电">水电</option>
										<option value="其他">其他</option>
									</select>
									
									<span>描述：</span>
									<input id="Description" Maxlength="50" type="text" class="form-control" placeholder="">

									<span>单价：</span>	
									<input id="UnitPrice" Maxlength="11" type="text" class="form-control" placeholder="">
									
									<span>数量：</span>
									<input id="Amount" Maxlength="11" type="text" class="form-control" placeholder="">
									
									<span>总价：</span>
									<input id="Total" readonly="true" Maxlength="11" type="text" class="form-control" placeholder="">
									
									<span>处理员工号：</span>
									<input id="StaffID" Maxlength="4" type="text" class="form-control" placeholder="">
									
									<span>时间：</span>
									<input id="Time" type="date" class="form-control" placeholder="">
									
									<span>备注：</span>
									<input id="Remark" type="text" class="form-control" placeholder="">
									
									<button type="button" class="btn btn-primary" onclick="add_FinacialRecord()">添加</button>
									<br>
									<br>
									<div id="add_success" class="alert alert-success alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-check-circle"></i> 添加成功！
									</div>
									<div id="add_SIDEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 流水号不能为空！
									</div>
									<div id="add_InOrOutEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 收支不能为空！
									</div>
									<div id="add_ConsumeTypeEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 消费类型不能为空！
									</div>
									<div id="add_UnitPriceEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 单价不能为空！
									</div>
									<div id="add_AmountEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 数量不能为空！
									</div>
									<div id="add_StaffIDEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 员工ID不能为空！
									</div>
									<div id="add_TimeEmpty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 日期不能为空！
									</div>
									<div id="add_SIDExist" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 此流水号已存在！
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
									<h3 class="panel-title">删除账单</h3>
								</div>
								<div class="panel-body">
									<span>流水号：</span>
									<br>
									<input type="text" Maxlength="10" id="DeleteSID" class="form-control" placeholder="例如：0000000014">
									<br>
									<button type="button" class="btn btn-primary" onclick="delete_FinacialRecord()">删除</button>
									<br>
									<br>
									<div id="del_success" class="alert alert-success alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-check-circle"></i> 删除成功！
									</div>
									<div id="del_empty" class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> 流水号不能为空！
									</div>
									<div id="del_nofound" class="alert alert-danger alert-dismissible" role="alert" >
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-times-circle"></i> 查无此账单！
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
			url:"php/FinacialRecord_info.php",
			success:function(result){
			$('#finacialrecord_table').bootstrapTable('load', result);
			}
		})
	})
	var ui =document.getElementById("del_success");
	ui.style.display="none";
	var ui =document.getElementById("del_empty");
	ui.style.display="none";
	var ui =document.getElementById("del_nofound");
	ui.style.display="none";
	var ui =document.getElementById("del_failed");
	ui.style.display="none";
	var ui =document.getElementById("add_success");
	ui.style.display="none";
	var ui =document.getElementById("add_SIDEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_InOrOutEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_ConsumeTypeEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_UnitPriceEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_AmountEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_StaffIDEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_TimeEmpty");
	ui.style.display="none";
	var ui =document.getElementById("add_SIDExist");
	ui.style.display="none";
	var ui =document.getElementById("add_failed");
	ui.style.display="none";
	
	</script>
	<script>
		$(document).ready(function(){	//实现收入或支出、消费类型之间的二级联动
		$("#InOrOut").change(function(){
                var index = $(this).get(0).selectedIndex;
                $('.Type').hide().eq(index).show();
            });
        });
	</script>
	<script>
	window.onload = function(){	//实现总价=单价*数量
		var inputs = document.getElementsByTagName("input");
		for(i=0;i<inputs.length;i++){
			inputs[i].onblur = function(){
				var UnitPrice = document.getElementById("UnitPrice").value;
				var Amount = document.getElementById("Amount").value;
				document.getElementById("Total").value = UnitPrice*Amount;
			}
		}
	}
	</script>
	<script>
	function add_FinacialRecord()
	{
		$.ajax({
		type:"post",
		url:"php/handle_FinacialRecord.php",
		data:{do_what:"add",
		SID:$("#SID").val(),
		InOrOut:$("#InOrOut").val(),
		InConsumeType:$("#InConsumeType").val(),
		OutConsumeType:$("#OutConsumeType").val(),
		Description:$("#Description").val(),
		UnitPrice:$("#UnitPrice").val(),
		Amount:$("#Amount").val(),
		Total:$("#Total").val(),
		StaffID:$("#StaffID").val(),
		Time:$("#Time").val(),
		Remark:$("#Remark").val()
		},
		
		success:function(result){
			var ui =document.getElementById("add_success");
			ui.style.display="none";
			var ui =document.getElementById("add_SIDEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_InOrOutEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_ConsumeTypeEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_UnitPriceEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_AmountEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_SIDExist");
			ui.style.display="none";
			var ui =document.getElementById("add_StaffIDEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_TimeEmpty");
			ui.style.display="none";
			var ui =document.getElementById("add_failed");
			ui.style.display="none";
			if(result == 1){
				var ui =document.getElementById("add_success");
				ui.style.display="";
			}
			else if(result == 0){
				var ui =document.getElementById("add_failed");
				ui.style.display="";				
			}
			else if(result == 2){				
				var ui =document.getElementById("add_SIDEmpty");
				ui.style.display="";	
			}
			else if(result == 3){
				var ui =document.getElementById("add_InOrOutEmpty");
				ui.style.display="";
			}
			else if(result == 4){
				var ui =document.getElementById("add_ConsumeTypeEmpty");
				ui.style.display="";				
			}
			else if(result == 5){
				var ui =document.getElementById("add_UnitPriceEmpty");
				ui.style.display="";				
			}
			else if(result == 6){
				var ui =document.getElementById("add_AmountEmpty");
				ui.style.display="";
			}
			else if(result == 7){
				var ui =document.getElementById("add_SIDExist");
				ui.style.display="";
			}
			else if(result == 8){
				var ui =document.getElementById("add_StaffIDEmpty");
				ui.style.display="";	
			}
			else if(result == 9){
				var ui =document.getElementById("add_TimeEmpty");
				ui.style.display="";
			}
			}
		})
		$(document).ready(function(){
		$.ajax({
			url:"php/FinacialRecord_info.php",
			success:function(result){
			$('#finacialrecord_table').bootstrapTable('load', result);
			}
		})
		})
	}
	function delete_FinacialRecord()
	{
		$.ajax({
		type:"post",
		url:"php/handle_FinacialRecord.php",
		data:{do_what:"delete",
		SID:$("#DeleteSID").val()
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
			if(result==1){
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
			url:"php/FinacialRecord_info.php",
			success:function(result){
			$('#finacialrecord_table').bootstrapTable('load', result);
			}
		})
		})
	}</script>
</body>

</html>
