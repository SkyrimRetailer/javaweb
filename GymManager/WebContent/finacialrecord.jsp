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
						<li><a href="finacialrecord.jsp" class="active"><i class="lnr lnr-file-empty"></i> <span>财务信息</span></a></li>
						<li><a href="authority.jsp" class=""><i class="lnr lnr-magic-wand"></i> <span>权限管理</span></a></li>						
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
									<div id="toolbar">
										<button id="btn_edit" type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal">
							                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
							            </button>
							            <button id="btn_edit" type="button" class="btn btn-default" onclick="edit_FinacialRecord()">
							                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							            </button>
							            <button id="btn_delete" type="button" class="btn btn-default" onclick="delete_FinacialRecord()">
							                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							            </button>
									</div>
									<table id="finacialrecord_table" class="table table-striped"></table>
								</div>
							<!-- END TABLE STRIPED -->
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
	<!-- ADD MODAL -->
		<div class="modal fade modalIndex" id="addModal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">添加</h4>
                    </div>
                    <div class="modal-body">
						<span>收入或支出：</span>
						<select id="add_InOrOut" name="InOrOut" class="form-control">
							<option value="">----请选择收入或支出----</option>
							<option value="收入">收入</option>
							<option value="支出">支出</option>
						</select>								
						
						<span>消费类型：</span>
						<select id="add_ConsumeType"class="form-control Type Type_first">
							<option value="">----请选择消费类型----</option>
						</select>
						<select id="add_InConsumeType" class="form-control Type">
							<option value="">----请选择消费类型----</option>
							<option value="办卡">办卡</option>
							<option value="购课">购课</option>
							<option value="购物">购物</option>
							<option value="其他">其他</option>
						</select>
						<select id="add_OutConsumeType" class="form-control Type">
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
						<input id="add_Description" Maxlength="50" type="text" class="form-control" placeholder="">

						<span>单价：</span>	
						<input id="add_UnitPrice" Maxlength="11" type="text" class="form-control" placeholder="">
						
						<span>数量：</span>
						<input id="add_Amount" Maxlength="11" type="text" class="form-control" placeholder="">
						
						<span>总价：</span>
						<input id="add_Total" readonly="readonly" Maxlength="11" type="text" class="form-control" placeholder="">
						
						<span>处理员工号：</span>
						<input id="add_StaffID" Maxlength="4" type="text" class="form-control" placeholder="">
						
						<span>时间：</span>
						<input id="add_Time" type="datetime-local" class="form-control" placeholder="">
						
						<span>备注：</span>
						<input id="add_Remark" type="text" class="form-control" placeholder="">
						<br>
						<br>
						<div id="add_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="add_icon"></i> <i id="add_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="add_FinacialRecord()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END ADD MODAL -->
		<!-- EDIT MODAL -->
		<div class="modal fade modalIndex" id="editModal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">编辑</h4>
                    </div>
                    <div class="modal-body">
                    	<span>流水号：</span>
                    	<br>
                    	<input type="text" Maxlength="10" id="edit_SID" readonly="readonly" class="form-control">
                    	<br>
						<span>收入或支出：</span>
						<select id="edit_InOrOut" name="InOrOut" class="form-control">
							<option value="">----请选择收入或支出----</option>
							<option value="收入">收入</option>
							<option value="支出">支出</option>
						</select>								
						
						<span>消费类型：</span>
						<select id="edit_ConsumeType"class="form-control Type Type_first">
							<option value="">----请选择消费类型----</option>
						</select>
						<select id="edit_InConsumeType" class="form-control Type">
							<option value="">----请选择消费类型----</option>
							<option value="办卡">办卡</option>
							<option value="购课">购课</option>
							<option value="购物">购物</option>
							<option value="其他">其他</option>
						</select>
						<select id="edit_OutConsumeType" class="form-control Type">
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
						<input id="edit_Description" Maxlength="50" type="text" class="form-control" placeholder="">

						<span>单价：</span>	
						<input id="edit_UnitPrice" Maxlength="11" type="text" class="form-control" placeholder="">
						
						<span>数量：</span>
						<input id="edit_Amount" Maxlength="11" type="text" class="form-control" placeholder="">
						
						<span>总价：</span>
						<input id="edit_Total" readonly="readonly" Maxlength="11" type="text" class="form-control" placeholder="">
						
						<span>处理员工：</span>
						<input id="edit_Staff" readonly="readonly" Maxlength="4" type="text" class="form-control" placeholder="">
						
						<span>时间：</span>
						<input id="edit_Time" type="text" class="form-control" placeholder="">
						
						<span>备注：</span>
						<input id="edit_Remark" type="text" class="form-control" placeholder="">
						<br>
						<br>
						<div id="edit_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="edit_icon"></i> <i id="edit_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="update_FinacialRecord()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END EDIT MODAL -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<link href="assets/bootstrap-table-develop/dist/bootstrap-table.min.css"  rel="stylesheet">
    <script src="assets/bootstrap-table-develop/dist/bootstrap-table.js"></script>
    <script src="assets/bootstrap-table-develop/dist/locale/bootstrap-table-zh-CN.js"></script>
    <script> 
    $('#finacialrecord_table').bootstrapTable({
       	url: 'init.finacialrecord',         //请求后台的URL（*）
        method: 'post',                      //请求方式（*）
        toolbar: '#toolbar',                //工具按钮用哪个容器
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
        uniqueId: "sID",                     //每一行的唯一标识，一般为主键列
        showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表     
        columns: [
        	{checkbox: true,visible: true}, 
        	{field: 'SID',			title: '流水号',		sortable: true}, 
        	{field: 'inOrOut',		title: '收支',		sortable: true}, 
        	{field: 'consumeType',	title: '消费类型',	sortable: true}, 
        	{field: 'description',	title: '描述',		sortable: true}, 
        	{field: 'unitPrice',	title: '单价',		sortable: true}, 
        	{field: 'amount',		title: '数量',		sortable: true}, 
        	{field: 'total',		title: '总价',		sortable: true},
        	{field: 'name',			title: '处理员工',	sortable: true},
        	{field: 'time',			title: '时间',		sortable: true},
        	{field: 'remark',		title: '备注',		sortable: true},
        ],
    });
	
	</script>
	<script>
		$(document).ready(function(){	//实现收入或支出、消费类型之间的二级联动
		$("#add_InOrOut").change(function(){
                var index = $(this).get(0).selectedIndex;
                //$('.Type').hide().eq(index).show();
                if(index == 1){
                	$("#add_InConsumeType").show();
                	$("#add_OutConsumeType").hide();
                	$("#add_ConsumeType").hide();
                }else if(index == 2){
                	$("#add_OutConsumeType").show();
                	$("#add_InConsumeType").hide();
                	$("#add_ConsumeType").hide();
                }else{
                	$("#add_ConsumeType").show();
                	$("#add_InConsumeType").hide();
                	$("#add_OutConsumeType").hide();
                }
            });
			$("#edit_InOrOut").change(function(){
	            var index = $(this).get(0).selectedIndex;
	            //$('.Type').hide().eq(index).show();
	            if(index == 1){
	            	$("#edit_InConsumeType").show();
	            	$("#edit_OutConsumeType").hide();
	            	$("#edit_ConsumeType").hide();
	            }else if(index == 2){
	            	$("#edit_OutConsumeType").show();
	            	$("#edit_InConsumeType").hide();
	            	$("#edit_ConsumeType").hide();
	            }else{
	            	$("#edit_ConsumeType").show();
	            	$("#edit_InConsumeType").hide();
	            	$("#edit_OutConsumeType").hide();
	            }
	        });
        });
		
	</script>
	<script>
	window.onload = function(){	//实现总价=单价*数量
		var inputs = document.getElementsByTagName("input");
		for(i=0;i<inputs.length;i++){
			inputs[i].onblur = function(){
				var UnitPrice = document.getElementById("add_UnitPrice").value;
				var Amount = document.getElementById("add_Amount").value;
				document.getElementById("add_Total").value = UnitPrice*Amount;
				var UnitPrice = document.getElementById("edit_UnitPrice").value;
				var Amount = document.getElementById("edit_Amount").value;
				document.getElementById("edit_Total").value = UnitPrice*Amount;
			}
		}
	}
	</script>
	<script>
	function add_FinacialRecord(){
		var label = document.getElementById("add_label");
		var notice = document.getElementById("add_notice");
		var icon = document.getElementById("add_icon");
		label.style.display="none";
		if(document.getElementById("add_InOrOut").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "收支不能为空!";
			return;
		}else if((document.getElementById("add_InOrOut").value == "收入" && document.getElementById("add_InConsumeType").value == "")||(document.getElementById("add_InOrOut").value == "支出" && document.getElementById("add_OutConsumeType").value == "")){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "消费类型不能为空!";
			return;
		}else if(document.getElementById("add_UnitPrice").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "单价不能为空!";
			return;
		}else if(document.getElementById("add_Amount").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "数量不能为空!";
			return;
		}else if(document.getElementById("add_StaffID").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "处理员工号不能为空!";
			return;
		}
		else if(document.getElementById("add_Time").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "时间不能为空!";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"add.finacialrecord",
				data:{
				InOrOut:$("#add_InOrOut").val(),
				InConsumeType:$("#add_InConsumeType").val(),
				OutConsumeType:$("#add_OutConsumeType").val(),
				Description:$("#add_Description").val(),
				UnitPrice:$("#add_UnitPrice").val(),
				Amount:$("#add_Amount").val(),
				Total:$("#add_Total").val(),
				StaffID:$("#add_StaffID").val(),
				Time:$("#add_Time").val(),
				Remark:$("#add_Remark").val()
				},
				
				success:function(result){
					if(result == 1){
						$('#addModal').modal("hide");
						$("#finacialrecord_table").bootstrapTable('refresh');
					}else if(result == "no-permission"){
						$('#addModal').modal("hide");
						alert("抱歉！您没有添加数据权限。")
					}
					else{
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "添加失败!";
					}
				}
			})
		}
	}
		
	
	function delete_FinacialRecord()
	{
		var rows=$("#finacialrecord_table").bootstrapTable("getSelections");//得到选中的列              
		if(rows.length>0){
			var message="";
			var ID=[];
		    for(var i=0;i<rows.length;i++){
				if(i==0){
					message=rows[i].SID + "\t" + rows[i].inOrOut+ "\t" + rows[i].consumeType +"\t" + rows[i].description + "\t" +rows[i].unitPrice + "\t" +rows[i].amount + "\t" + rows[i].total;
					ID.push(rows[i].SID);
				}else{
					message=message + "\n" + rows[i].SID + "\t" + rows[i].inOrOut+ "\t" + rows[i].consumeType +"\t" + rows[i].description + "\t" +rows[i].unitPrice + "\t" +rows[i].amount + "\t" + rows[i].total;
					ID.push(rows[i].SID);
				}
		    }
			if(confirm("是否删除 "+rows.length+" 条数据：\n\n"+message+"\n\n该操作不可恢复！")){
				//开始删除数据
				$.ajax({
					type:"post",
					url:"delete.finacialrecord",
					data:{string:JSON.stringify(ID)},
					success:function(result){
						if(result == 1){
							$("#finacialrecord_table").bootstrapTable('refresh');
						}else if(result == "no-permission"){
							alert("抱歉！您没有删除数据权限。")
						}
						else{
							alert("删除失败");
						}
					}
				})
			}else{
				
			}
		}else{
			alert("请选择要删除的列");
		}
	}
	
	function edit_FinacialRecord(){
		var label = document.getElementById("edit_label");
		var notice = document.getElementById("edit_notice");
		var icon = document.getElementById("edit_icon");
		label.style.display="none";
		
	    var rows=$("#finacialrecord_table").bootstrapTable("getSelections");//得到选中的列              
	        if(rows.length>0){
				if(rows.length>1){
					alert("只能选择一条数据进行编辑");
				}else{
					document.getElementById('edit_SID').value = rows[0].SID;
					document.getElementById('edit_InOrOut').value = rows[0].inOrOut;
					if(document.getElementById('edit_InOrOut').value == "收入"){
						$("#edit_InConsumeType").show();
		            	$("#edit_OutConsumeType").hide();
		            	$("#edit_ConsumeType").hide();
						document.getElementById('edit_InConsumeType').value = rows[0].consumeType;	
					}else if(document.getElementById('edit_InOrOut').value == "支出"){
						$("#edit_OutConsumeType").show();
		            	$("#edit_InConsumeType").hide();
		            	$("#edit_ConsumeType").hide();
						document.getElementById('edit_OutConsumeType').value = rows[0].consumeType;	
					}
					document.getElementById('edit_ConsumeType').value = rows[0].consumeType;
					document.getElementById('edit_Description').value = rows[0].description;
					document.getElementById('edit_UnitPrice').value = rows[0].unitPrice;
					document.getElementById('edit_Amount').value = rows[0].amount;
					document.getElementById('edit_Total').value = rows[0].total;
					document.getElementById('edit_Staff').value = rows[0].name;
					document.getElementById('edit_Time').value = rows[0].time;
					document.getElementById('edit_Remark').value = rows[0].remark;
					$('#editModal').modal("show");
				}
			}else{
				alert("请选择要编辑的列");
			}     
	}
	
	function update_FinacialRecord(){
		var label = document.getElementById("edit_label");
		var notice = document.getElementById("edit_notice");
		var icon = document.getElementById("edit_icon");
		label.style.display="none";
		if(document.getElementById("edit_InOrOut").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "收支不能为空!";
			return;
		}else if((document.getElementById("edit_InOrOut").value == "收入" && document.getElementById("edit_InConsumeType").value == "")||(document.getElementById("edit_InOrOut").value == "支出" && document.getElementById("edit_OutConsumeType").value == "")){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "消费类型不能为空!";
			return;
		}else if(document.getElementById("edit_UnitPrice").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "单价不能为空!";
			return;
		}else if(document.getElementById("edit_Amount").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "数量不能为空!";
			return;
		}else if(document.getElementById("edit_Time").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "时间不能为空!";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"update.finacialrecord",
				data:{
				SID:$("#edit_SID").val(),
				InOrOut:$("#edit_InOrOut").val(),
				InConsumeType:$("#edit_InConsumeType").val(),
				OutConsumeType:$("#edit_OutConsumeType").val(),
				Description:$("#edit_Description").val(),
				UnitPrice:$("#edit_UnitPrice").val(),
				Amount:$("#edit_Amount").val(),
				Total:$("#edit_Total").val(),
				Time:$("#edit_Time").val(),
				Remark:$("#edit_Remark").val()
				},
				
				success:function(result){
					if(result == 1){
						$('#editModal').modal("hide");
						$("#finacialrecord_table").bootstrapTable('refresh');
					}else if(result == "no-permission"){
						$('#editModal').modal("hide");
						alert("抱歉！您没有编辑数据权限。")
					}
					else{
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "修改失败!";
					}
				}
			})
		}
	}
	</script>
</body>

</html>
