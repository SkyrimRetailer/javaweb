<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>

<head>
	<title>会员信息</title>
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
						<li><a href="member.jsp" class="active"><i class="lnr lnr-chart-bars"></i> <span>会员信息</span></a></li>
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
					<h3 class="page-title">会员信息</h3>
					
						<div class="panel">
							<!-- TABLE STRIPED -->
								<div class="panel-body">
									<div id="toolbar">
										<button id="btn_add" type="button" class="btn btn-default" data-toggle="modal" data-target="#addModal">
							                <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>添加
							            </button>
							            <button id="btn_edit" type="button" class="btn btn-default" onclick="edit_Member()">
							                <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
							            </button>
							            <button id="btn_delete" type="button" class="btn btn-default" onclick="delete_Member()">
							                <span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
							            </button>
									</div>
									<table id="member_table" class="table table-striped"></table>
							</div>
							<!-- END TABLE STRIPED -->
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
				<p class="copyright">Copyright &copy; 2018-2019.SkYoung All rights reserved.</p>
			</div>
		</footer>
		<!-- EDIT MODAL -->
		<div class="modal fade modalIndex" id="editModal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">编辑</h4>
                    </div>
                    <div class="modal-body">
                        <span>会员卡ID：</span>
						<br>
						<input type="text" Maxlength="8" id="edit_CardID" readonly="readonly" class="form-control" placeholder="例如：00000014">
						<br>
						<span>姓名：</span>
						<br>
						<input type="text" Maxlength="20" id="edit_Name" class="form-control">
						<br>
						<span>性别：</span>
						<br>
						<select id="edit_Gender" class="form-control">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
						<br>
						<span>积分：</span>
						<br>
						<input type="text" Maxlength="11" id="edit_Credit" class="form-control">
						<br>									
						<span>联系方式：</span>
						<br>
						<input id="edit_Tel" type="text" Maxlength="13" class="form-control" placeholder="">
						<br>
						<span>起始日期：</span>
						<br>
						<input id="edit_StartDate" type="text" class="form-control"></input>
						<br>
						<span>到期日期：</span>
						<br>
						<input id="edit_OverdueDate" type="text" class="form-control"></input>
						<br>
						<br>
						<div id="edit_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="edit_icon"></i> <i id="edit_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="update_Member()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END EDIT MODAL -->
		<!-- ADD MODAL -->
		<div class="modal fade modalIndex" id="addModal" role="dialog">
			<div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                    	<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title" id="myModalLabel">添加</h4>
                    </div>
                    <div class="modal-body">
                       <span>会员卡ID：</span>
						<br>
						<input type="text" Maxlength="8" id="add_CardID"class="form-control" placeholder="例如：00000014">
						<br>
						<span>姓名：</span>
						<br>
						<input type="text" Maxlength="20" id="add_Name" class="form-control">
						<br>
						<span>性别：</span>
						<br>
						<select id="add_Gender" class="form-control">
							<option value="男">男</option>
							<option value="女">女</option>
						</select>
						<br>
						<span>积分：</span>
						<br>
						<input type="text" Maxlength="11" id="add_Credit" class="form-control">
						<br>									
						<span>联系方式：</span>
						<br>
						<input id="add_Tel" type="text" Maxlength="13" class="form-control" placeholder="">
						<br>
						<span>起始日期：</span>
						<br>
						<input id="add_StartDate" type="date" class="form-control"></input>
						<br>
						<span>到期日期：</span>
						<br>
						<input id="add_OverdueDate" type="date" class="form-control"></input>
						<br>
						<br>
						<div id="add_label" style="display:none">
							<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
							<i id="add_icon"></i> <i id="add_notice"></i>
						</div>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        <button type="button" class="btn btn-primary" onclick="add_Member()">确认</button>
                    </div>
                </div>
            </div>
		</div>
		<!-- END ADD MODAL -->
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
   $('#member_table').bootstrapTable({
       	url: 'init.member',         //请求后台的URL（*）
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
        uniqueId: "cardID",                     //每一行的唯一标识，一般为主键列
        showToggle: false,                    //是否显示详细视图和列表视图的切换按钮
        cardView: false,                    //是否显示详细视图
        detailView: false,                   //是否显示父子表     
        columns: [
        	{checkbox: true,visible: true}, 
        	{field: 'cardID',		title: '卡号',		sortable: true}, 
        	{field: 'name',			title: '姓名',		sortable: true}, 
        	{field: 'gender',		title: '性别',		sortable: true}, 
        	{field: 'credit',		title: '积分',		sortable: true}, 
        	{field: 'tel',			title: '电话',		sortable: true}, 
        	{field: 'startDate',	title: '起始日期',	sortable: true}, 
        	{field: 'overdueDate',	title: '过期日期',	sortable: true},
        ],
    });
	</script>
	<script>
	function add_Member(){
		var startStr = document.getElementById("add_StartDate").value;
		var overdueStr = document.getElementById("add_OverdueDate").value;
		var date1 = new Date(startStr.replace(/-/g,"\/"));
		var date2 = new Date(overdueStr.replace(/-/g,"\/"));
		
		var label = document.getElementById("add_label");
		var notice = document.getElementById("add_notice");
		var icon = document.getElementById("add_icon");
		label.style.display="none";
		if(document.getElementById("add_CardID").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "ID不能为空!";
			return;
		}else if(document.getElementById("add_Name").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "姓名不能为空!";
			return;
		}else if(startStr == "" || overdueStr == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "日期不能为空!";
			return;
		}else if(date1 > date2){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = " 起始日期不能超过到期日期！";
			return;
		}else{
			$.ajax({
				type:"post",
				url:"add.member",
				data:{
				CardID:$("#add_CardID").val(),
				Name:$("#add_Name").val(),
				Gender:$("#add_Gender").val(),
				Credit:$("#add_Credit").val(),
				Tel:$("#add_Tel").val(),
				StartDate:$("#add_StartDate").val(),
				OverdueDate:$("#add_OverdueDate").val()
				},
				success:function(result){
					if(result == 0){
						label.className = "alert alert-danger alert-dismissible";
						label.style.display="";
						icon.className = "fa fa-times-circle";
						notice.innerHTML = "此ID已存在!";
					}else if(result == 1){
						$('#addModal').modal("hide");
						$("#member_table").bootstrapTable('refresh');
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
	
	function delete_Member(){
		var rows=$("#member_table").bootstrapTable("getSelections");//得到选中的列              
		if(rows.length>0){
			var message="";
			var ID=[];
		    for(var i=0;i<rows.length;i++){
				if(i==0){
					message=rows[i].cardID + "\t" + rows[i].name;
					ID.push(rows[i].cardID);
				}else{
					message=message + "\n" + rows[i].cardID + "\t" + rows[i].name;
					ID.push(rows[i].cardID);
				}
		    }
			if(confirm("是否删除 "+rows.length+" 条数据：\n\n"+message+"\n\n该操作不可恢复！")){
				//开始删除数据
				$.ajax({
					type:"post",
					url:"delete.member",
					data:{string:JSON.stringify(ID)},
					success:function(result){
						if(result == 1){
							$("#member_table").bootstrapTable('refresh');
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
		
	function edit_Member(){
		var label = document.getElementById("edit_label");
		var notice = document.getElementById("edit_notice");
		var icon = document.getElementById("edit_icon");
		label.style.display="none";
		
	    var rows=$("#member_table").bootstrapTable("getSelections");//得到选中的列              
	        if(rows.length>0){
				if(rows.length>1){
					alert("只能选择一条数据进行编辑");
				}else{
					document.getElementById('edit_CardID').value = rows[0].cardID;
					document.getElementById('edit_Name').value = rows[0].name;
					document.getElementById('edit_Gender').value = rows[0].gender;
					document.getElementById('edit_Credit').value = rows[0].credit;
					document.getElementById('edit_Tel').value = rows[0].tel;
					document.getElementById('edit_StartDate').value = rows[0].startDate;
					document.getElementById('edit_OverdueDate').value = rows[0].overdueDate;
					$('#editModal').modal("show");
				}
			}else{
				alert("请选择要编辑的列");
			}     
	}
	
	function update_Member(){
		var startStr = document.getElementById("edit_StartDate").value;
		var overdueStr = document.getElementById("edit_OverdueDate").value;
		var date1 = new Date(startStr.replace(/-/g,"\/"));
		var date2 = new Date(overdueStr.replace(/-/g,"\/"));
		
		var label = document.getElementById("edit_label");
		var notice = document.getElementById("edit_notice");
		var icon = document.getElementById("edit_icon");
		label.style.display="none";
		if(document.getElementById("edit_Name").value == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "姓名不能为空!";
			return;
		}
		else if(startStr == "" || overdueStr == ""){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = "日期不能为空!";
			return;
		}
		else if(date1>date2){
			label.className = "alert alert-warning alert-dismissible";
			label.style.display="";
			icon.className = "fa fa-warning";
			notice.innerHTML = " 起始日期不能超过到期日期！";
			return;
		}
		else{
			$.ajax({
				type:"post",
				url:"update.member",
				data:{
				CardID:$("#edit_CardID").val(),
				Name:$("#edit_Name").val(),
				Gender:$("#edit_Gender").val(),
				Credit:$("#edit_Credit").val(),
				Tel:$("#edit_Tel").val(),
				StartDate:$("#edit_StartDate").val(),
				OverdueDate:$("#edit_OverdueDate").val()
				},
				
				success:function(result){
					if(result == 1){
						$('#editModal').modal("hide");
						$("#member_table").bootstrapTable('refresh');
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
</body>

</html>
