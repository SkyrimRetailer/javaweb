<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>职员信息</title>
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
						<li><a href="staff.jsp" class="active"><i class="lnr lnr-user"></i> <span>职员信息</span></a></li>
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
					<h3 class="page-title">职员信息</h3>
					<div class="col">
							<div class="panel">
							<!-- TABLE STRIPED -->
								<div class="panel-body">
									<div id="staff_toolbar">
										<button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#add_Staff_Modal" onclick="refresh_options()">
							                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
							            </button>
							            <button id="btn_edit" type="button" class="btn btn-default" onclick="edit_Staff()">
							                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							            </button>
							            <button id="btn_delete" type="button" class="btn btn-default" onclick="delete_Staff()">
							                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							            </button>
									</div>
									<table id="staff_table" class="table table-striped"></table>
								</div>
								<!-- END TABLE STRIPED -->
						</div>
					</div>
						
					<div class="col">
						<div class="col-md-6">
							<div class="panel">
							<!-- TABLE STRIPED -->
								<div class="panel-body">
									<div id="stafftype_toolbar">
										<button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#add_Stafftype_Modal">
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
	
	<!-- ADD STAFFTYPE MODAL -->
		<div class="modal fade modalIndex" id="add_Stafftype_Modal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">添加职员类型</h4>
                    </div>
                    <div class="modal-body">
                       <span>类型ID：</span>
						<br>
						<input type="text" Maxlength="4" id="add_Stafftype_TypeID" required="required" class="form-control" placeholder="例如：0014">
						<br>
						<span>工种名称：</span>
						<br>
						<input type="text" id="add_Stafftype_TypeName" Maxlength="10" class="form-control" placeholder="例如：前台">
						<br>
						<span>基本月薪：</span>
						<br>
						<input id="add_Stafftype_BasicSalary" type="text" Maxlength="11" class="form-control" placeholder="">
						<br>
						<br>
						<div id="add_Stafftype_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="add_Stafftype_icon"></i> <i id="add_Stafftype_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="add_Stafftype()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END ADD STAFFTYPE MODAL -->
		
		<!-- EDIT STAFFTYPE MODAL -->
		<div class="modal fade modalIndex" id="edit_Stafftype_Modal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">编辑职员类型</h4>
                    </div>
                    <div class="modal-body">
                       <span>类型ID：</span>
						<br>
						<input type="text" Maxlength="4" id="edit_Stafftype_TypeID" readonly="readonly" required="required" class="form-control" placeholder="例如：0014">
						<br>
						<span>工种名称：</span>
						<br>
						<input type="text" id="edit_Stafftype_TypeName" Maxlength="10" class="form-control" placeholder="例如：前台">
						<br>
						<span>基本月薪：</span>
						<br>
						<input id="edit_Stafftype_BasicSalary" type="text" Maxlength="11" class="form-control" placeholder="">
						<br>
						<br>
						<div id="edit_Stafftype_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="edit_Stafftype_icon"></i> <i id="edit_Stafftype_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="update_Stafftype()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END EDIT STAFFTYPE MODAL -->
		
		<!-- ADD STAFF MODAL -->
		<div class="modal fade modalIndex" id="add_Staff_Modal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">添加职员</h4>
                    </div>
                    <div class="modal-body">
                       	<span>职员ID：</span>
						<br>
						<input type="text" Maxlength="4" id="add_Staff_StaffID" class="form-control" placeholder="例如：0014">
						<br>								
						<span>职员姓名：</span>
						<br>
						<input type="text" Maxlength="20" id="add_Staff_Name" class="form-control">
						<br>
						<span>性别：</span>
						<br>
						<select id="add_Staff_Gender" class="form-control">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>									
						<br>
						<span>职员类型：</span>
						<br>
						<select id="add_Staff_StaffType" class="form-control">
							<option value="0001">老板</option>
							<option value="0002">前台</option>
							<option value="0003">保洁</option>
							<option value="0004">教练</option>
						</select>
						<br>
						<span>联系方式：</span>
						<br>
						<input id="add_Staff_Tel" Maxlength="13" type="text" class="form-control" placeholder="">
						<br>
						<br>
						<div id="add_Staff_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="add_Staff_icon"></i> <i id="add_Staff_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="add_Staff()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END ADD STAFF MODAL -->
		
		<!-- EDIT STAFF MODAL -->
		<div class="modal fade modalIndex" id="edit_Staff_Modal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">编辑职员信息</h4>
                    </div>
                    <div class="modal-body">
                       	<span>职员ID：</span>
						<br>
						<input type="text" Maxlength="4" id="edit_Staff_StaffID" readonly="readonly" class="form-control" placeholder="例如：0014">
						<br>								
						<span>职员姓名：</span>
						<br>
						<input type="text" Maxlength="20" id="edit_Staff_Name" class="form-control">
						<br>
						<span>性别：</span>
						<br>
						<select id="edit_Staff_Gender" class="form-control">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>									
						<br>
						<span>职员类型：</span>
						<br>
						<select id="edit_Staff_StaffType" class="form-control">
							<option value="0001">老板</option>
							<option value="0002">前台</option>
							<option value="0003">保洁</option>
							<option value="0004">教练</option>
						</select>
						<br>
						<span>联系方式：</span>
						<br>
						<input id="edit_Staff_Tel" Maxlength="13" type="text" class="form-control" placeholder="">
						<br>
						<br>
						<div id="edit_Staff_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="edit_Staff_icon"></i> <i id="edit_Staff_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="update_Staff()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END EDIT STAFF MODAL -->
		
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
       search: false,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
       contentType: "application/x-www-form-urlencoded",
       strictSearch: false,
       showColumns: true,                  //是否显示所有的列
       showRefresh: true,                  //是否显示刷新按钮
       minimumCountColumns: 2,             //最少允许的列数
       clickToSelect: true,                //是否启用点击选中行
       //height: 700,                        //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
       uniqueId: "typeID",                     //每一行的唯一标识，一般为主键列
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
   
   $('#staff_table').bootstrapTable({
	   url: 'init.staff',         //请求后台的URL（*）
	   method: 'post',                      //请求方式（*）
	   toolbar: '#staff_toolbar',                //工具按钮用哪个容器
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
	   uniqueId: "staffID",                     //每一行的唯一标识，一般为主键列
	   showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
	   cardView: false,                    //是否显示详细视图
	   detailView: false,                   //是否显示父子表     
	   columns: [
	   	{checkbox: true,visible: true}, 
	   	{field: 'staffID',		title: 'ID',		sortable: true}, 
	   	{field: 'name',			title: '姓名',		sortable: true}, 
	   	{field: 'gender',		title: '性别',		sortable: true}, 
	   	{field: 'typeName',		title: '员工类型',	sortable: true}, 
	   	{field: 'tel',			title: '联系方式',	sortable: true},
	   	{field: 'basicSalary',	title: '基本工资',	sortable: true},
	   ],
  	});
   	
	function refresh_options(){
		var rows=$("#stafftype_table").bootstrapTable("getData");//得到所有的数据
		var select1 = document.getElementById("add_Staff_StaffType");
		var select2 = document.getElementById("edit_Staff_StaffType");
		select1.options.length=0;	//清空选项
		select2.options.length=0;
		for(var i=0;i<rows.length;i++){	//动态添加职员类型选项
			select1.options.add(new Option(rows[i].typeName,rows[i].typeID));
			select2.options.add(new Option(rows[i].typeName,rows[i].typeID));
		}
	}
	</script>
	<script>
	function delete_Stafftype(){
		var rows=$("#stafftype_table").bootstrapTable("getSelections");//得到选中的列              
		if(rows.length>0){
			var message="";
			var ID=[];
		    for(var i=0;i<rows.length;i++){
				if(i==0){
					message=rows[i].typeID + "\t" + rows[i].typeName + "\t" + rows[i].basicSalary;
					ID.push(rows[i].typeID);
				}else{
					message=message + "\n" + rows[i].typeID + "\t" + rows[i].typeName + "\t" + rows[i].basicSalary;
					ID.push(rows[i].typeID);
				}
		    }
			if(confirm("是否删除 "+rows.length+" 条数据：\n\n"+message+"\n\n该操作不可恢复！")){
				//开始删除数据
				$.ajax({
					type:"post",
					url:"delete.stafftype",
					data:{string:JSON.stringify(ID)},
					success:function(result){
						if(result == 1){
							$("#stafftype_table").bootstrapTable('refresh');
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
	
	function add_Stafftype(){
		var label = document.getElementById("add_Stafftype_label");
		var notice = document.getElementById("add_Stafftype_notice");
		var icon = document.getElementById("add_Stafftype_icon");
		label.style.display="none";
		
		if(document.getElementById("add_Stafftype_TypeID").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "ID不能为空!";
			return;
		}else if(document.getElementById("add_Stafftype_TypeName").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "类型名不能为空!";
			return;
		}else if(document.getElementById("add_Stafftype_BasicSalary").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "基本工资不能为空!";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"add.stafftype",
				data:{
				TypeID:$("#add_Stafftype_TypeID").val(),
				TypeName:$("#add_Stafftype_TypeName").val(),
				BasicSalary:$("#add_Stafftype_BasicSalary").val()
				},
				success:function(result){
					if(result == 0){
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "此ID已存在!";
					}else if(result == 1){
						$('#add_Stafftype_Modal').modal("hide");
						$("#stafftype_table").bootstrapTable('refresh');
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
	
	function edit_Stafftype(){
		var label = document.getElementById("edit_Stafftype_label");
		var notice = document.getElementById("edit_Stafftype_notice");
		var icon = document.getElementById("edit_Stafftype_icon");
		label.style.display="none";
		
	    var rows=$("#stafftype_table").bootstrapTable("getSelections");//得到选中的列              
        if(rows.length>0){
			if(rows.length>1){
				alert("只能选择一条数据进行编辑");
			}else{
				document.getElementById('edit_Stafftype_TypeID').value = rows[0].typeID;
				document.getElementById('edit_Stafftype_TypeName').value = rows[0].typeName;
				document.getElementById('edit_Stafftype_BasicSalary').value = rows[0].basicSalary;
				$('#edit_Stafftype_Modal').modal("show");
			}
		}else{
			alert("请选择要编辑的列");
		}     
	}
	
	function update_Stafftype(){
		var label = document.getElementById("edit_Stafftype_label");
		var notice = document.getElementById("edit_Stafftype_notice");
		var icon = document.getElementById("edit_Stafftype_icon");
		label.style.display="none";
		if(document.getElementById("edit_Stafftype_TypeName").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "类型名不能为空!";
			return;
		}else if(document.getElementById("edit_Stafftype_BasicSalary").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "基本工资不能为空!";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"update.stafftype",
				data:{
				TypeID:$("#edit_Stafftype_TypeID").val(),
				TypeName:$("#edit_Stafftype_TypeName").val(),
				BasicSalary:$("#edit_Stafftype_BasicSalary").val(),
				},
				
				success:function(result){
					if(result == 1){
						$('#edit_Stafftype_Modal').modal("hide");
						$("#stafftype_table").bootstrapTable('refresh');
					}else{
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
	<script>
	function add_Staff(){
		var label = document.getElementById("add_Staff_label");
		var notice = document.getElementById("add_Staff_notice");
		var icon = document.getElementById("add_Staff_icon");
		label.style.display="none";
		if(document.getElementById("add_Staff_StaffID").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "ID不能为空!";
			return;
		}else if(document.getElementById("add_Staff_Name").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "姓名不能为空!";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"add.staff",
				data:{
				StaffID:$("#add_Staff_StaffID").val(),
				Name:$("#add_Staff_Name").val(),
				Gender:$("#add_Staff_Gender").val(),
				Stafftype:$("#add_Staff_StaffType").val(),
				Tel:$("#add_Staff_Tel").val()
				},
				success:function(result){
					if(result == 1){
						$('#add_Staff_Modal').modal("hide");
						$("#staff_table").bootstrapTable('refresh');
					}else if(result == 0){
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "此ID已存在!";
					}else{
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "添加失败!";
					}
				}
			})
		}
	}
	
	function edit_Staff(){
		refresh_options();
		var label = document.getElementById("edit_Staff_label");
		var notice = document.getElementById("edit_Staff_notice");
		var icon = document.getElementById("edit_Staff_icon");
		label.style.display="none";
		
	    var rows=$("#staff_table").bootstrapTable("getSelections");//得到选中的列              
        if(rows.length>0){
			if(rows.length>1){
				alert("只能选择一条数据进行编辑");
			}else{
				document.getElementById('edit_Staff_StaffID').value = rows[0].staffID;
				document.getElementById('edit_Staff_Name').value = rows[0].name;
				$("#edit_Staff_Gender").val(rows[0].gender);
				var opt=document.getElementById("edit_Staff_StaffType").getElementsByTagName("option");
				for(var i=0;i<opt.length;i++){
				   if(opt[i].innerHTML == rows[0].typeName)opt[i].selected=true;
				}
				document.getElementById('edit_Staff_Tel').value = rows[0].tel;
				$('#edit_Staff_Modal').modal("show");
			}
		}else{
			alert("请选择要编辑的列");
		}     
	}
	function update_Staff(){
		var label = document.getElementById("edit_Staff_label");
		var notice = document.getElementById("edit_Staff_notice");
		var icon = document.getElementById("edit_Staff_icon");
		label.style.display="none";
		if(document.getElementById("edit_Staff_Name").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "姓名不能为空!";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"update.staff",
				data:{
					StaffID:$("#edit_Staff_StaffID").val(),
					Name:$("#edit_Staff_Name").val(),
					Gender:$("#edit_Staff_Gender").val(),
					Stafftype:$("#edit_Staff_StaffType").val(),
					Tel:$("#edit_Staff_Tel").val()
				},
				success:function(result){
					if(result == 1){
						$('#edit_Staff_Modal').modal("hide");
						$("#staff_table").bootstrapTable('refresh');
					}else{
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "修改失败!";
					}
				}
			})
		}
	}
	
	function delete_Staff()	{
		var rows=$("#staff_table").bootstrapTable("getSelections");//得到选中的列              
		if(rows.length>0){
			var message="";
			var ID=[];
		    for(var i=0;i<rows.length;i++){
				if(i==0){
					message=rows[i].staffID + "\t" + rows[i].name + "\t" + rows[i].gender + "\t" + rows[i].typeName;
					ID.push(rows[i].staffID);
				}else{
					message=message + "\n" + rows[i].staffID + "\t" + rows[i].name + "\t" + rows[i].gender + "\t" + rows[i].typeName;
					ID.push(rows[i].staffID);
				}
		    }
			if(confirm("是否删除 "+rows.length+" 条数据：\n\n"+message+"\n\n该操作不可恢复！")){
				//开始删除数据
				$.ajax({
					type:"post",
					url:"delete.staff",
					data:{string:JSON.stringify(ID)},
					success:function(result){
						if(result == 1){
							$("#staff_table").bootstrapTable('refresh');
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
</script>
</body>

</html>
