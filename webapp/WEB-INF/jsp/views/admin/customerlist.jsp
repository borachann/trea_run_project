<%@page import="com.kosign.wecafe.enums.Status"%>
<%@page import="com.kosign.wecafe.entities.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
<meta name="author" content="Coderthemes">

<link rel="shortcut icon" href="images/favicon_1.ico">

<title>KOSIGN WeCafe...</title>

<!-- Base Css Files -->
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet" />

<!-- Font Icons -->
<link
	href="${pageContext.request.contextPath}/resources/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/assets/ionicon/css/ionicons.min.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/material-design-iconic-font.min.css"
	rel="stylesheet">

<!-- animate css -->
<link
	href="${pageContext.request.contextPath}/resources/css/animate.css"
	rel="stylesheet" />

<!-- Waves-effect -->
<link
	href="${pageContext.request.contextPath}/resources/css/waves-effect.css"
	rel="stylesheet">

<!-- sweet alerts -->
<link
	href="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.css"
	rel="stylesheet">

<!-- Custom Files -->
<link href="${pageContext.request.contextPath}/resources/css/helper.css"
	rel="stylesheet" type="text/css" />
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" type="text/css" />

<link href="${pageContext.request.contextPath}/resources/css/customize.css" rel="stylesheet" type="text/css" />
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

<script
	src="${pageContext.request.contextPath}/resources/js/modernizr.min.js"></script>

</head>



<body class="fixed-left-void" ng-app="wecafe">

	<!-- Begin page -->
	<div id="wrapper" ng-controller="UserController as controller">

		<!-- Top Bar Start -->
		<%@ include file="topbar.jsp"%>
		<!-- Top Bar End -->


		<!-- ========== Left Sidebar Start ========== -->
		<%@ include file="left_sidebar.jsp"%>
		<!-- Left Sidebar End -->



		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<!-- ============================================================== -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="container">

					<!-- Page-Title -->
					<div class="row">
						<div class="col-sm-12">
							<h4 class="pull-left page-title">Customer List</h4>
						</div>
					</div>


					<div class="panel">
						<div class="panel-heading">
							<div class="row">
									<!-- <h3 class="panel-title">Product Lists</h3> -->
									<div class="col-md-8">
										<form class="form-inline">
											<div class="form-group">
												<label>Search</label> <input type="text"
													class="form-control" id="txtSearch" placeholder="Search" width="400%">
													<input type="button" class="btn btn-default" id="btnSearch" value="Search">
											</div>
											
										</form>
									</div>									
									<div class="col-md-2 pull-right" style="text-align: right;">
										<button id="btn_add_user" class="btn btn-primary">Add Customer</button>
									</div>								
									</div>
						
						</div>
						<div class="panel-body">
							
							<table  id="datatable">
								<thead>
									<tr>
										<th>#</th>
										<th>Name</th>
										<th>Phone Number</th>
										<th>Amount</th>
										<th>Status</th>
										<th>Action</th>
									</tr>
								</thead>
								<tbody id="CONTENTS"> 
								</tbody>
							</table>
						<hr>
							<div class="row">
										<div class="col-md-2">
											<select id="PER_PAGE" class="form-control"> 
												<option value="15">15</option>
												<option value="30">30</option>
												<option value="50">50</option>
												<option value="100">100</option>
											</select>
										</div> 
										<div class="col-md-10 form-horizontal" align="right">
												<label  class="control-label col-md-9">Total Amount : </label>
													<div class="col-md-3">
															<input class="form-control" readonly="readonly" id="allTotalAmount" type="text">
													</div>												
											</div>
										<div id="PAGINATION" class="pull-right"></div>
							</div> 
						</div>
						<!-- end: page -->					
					</div>
					<!-- end Panel -->

				</div>
				<!-- container -->

			</div>
			<!-- content -->

			<%@ include file="footer.jsp"%>

		</div>

	</div>
	<!-- END wrapper -->

<%@ include file="customeradd.jsp"%>


	<script>
            var resizefunc = [];
            var ctx = "${pageContext.request.contextPath}"
        </script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.js"></script>
	<script src="<c:url value='/resources/scripts/dirPagination.js' />"></script>
	<script src="<c:url value='/resources/scripts/app.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/services/user_service.js' />"></script>
	<script
		src="<c:url value='/resources/scripts/controllers/user_controller.js' />"></script>

	<!-- jQuery  -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/waves.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.nicescroll.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.scrollTo.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/chat/moment-2.2.1.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-sparkline/jquery.sparkline.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-detectmobile/detect.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/fastclick/fastclick.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-slimscroll/jquery.slimscroll.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/jquery-blockui/jquery.blockUI.js"></script>

	<!-- sweet alerts -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/sweet-alert/sweet-alert.init.js"></script>

	<!-- flot Chart -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.time.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.tooltip.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.resize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.pie.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.selection.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.stack.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/flot-chart/jquery.flot.crosshair.js"></script>

	<!-- Counter-up -->
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/waypoints.min.js"
		type="text/javascript"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/counterup/jquery.counterup.min.js"
		type="text/javascript"></script>

	<!-- CUSTOM JS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.app.js"></script>
<script
		src="${pageContext.request.contextPath}/resources/js/jquery.tmpl.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.bootpag.min.js"></script>
	<!-- Dashboard -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.dashboard.js"></script>

	<!-- Chat -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.chat.js"></script>

	<!-- Todo -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.todo.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/assets/datatables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/assets/datatables/dataTables.bootstrap.js"></script>
		
	<script id="CONTENT_Userlist" type="text/x-jquery-tmpl"> 
	<tr> 
		<td style="display: none;" id="CUS_ID">{{= id }}
		<td>{{= order}}</td>
		<td>{{= customerName}}</td>								
		<td>{{= phoneNumber}}</td>
		<td>{{= amount}}</td>
		<td>{{= status}}</td>
		<td class="actions" style="text-align: center;">
			<a class="on-default edit-row" href="${pageContext.request.contextPath}/admin/viewupdate/{{= supId}}">
				<i class="fa fa-pencil"></i></a> 
			<a class="on-default remove-row" href="javascript:;" id="btnRemove">
				<i class="fa fa-trash-o"></i></a>
		</td>
	</tr>
</script>
	<script type="text/javascript">
            /* ==============================================
            Counter Up
            =============================================== */
            jQuery(document).ready(function($) {
                $('.counter').counterUp({
                    delay: 100,
                    time: 1200
                });
            });
        </script>

	<!-- Examples -->
	<%-- <script src="${pageContext.request.contextPath}/resources/assets/magnific-popup/magnific-popup.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/assets/jquery-datatables-editable/jquery.dataTables.js"></script> 
	    <script src="${pageContext.request.contextPath}/resources/assets/datatables/dataTables.bootstrap.js"></script>
	    <script src="${pageContext.request.contextPath}/resources/assets/jquery-datatables-editable/datatables.editable.init.js"></script> --%>

	<script>
    	$(function(){
    		var check = true;
			var order = 1;
			var v=[];
			var b = true;
			listAllCustomer(1);
    		
    		$("#btnSearch").click(function(){
				str = $("#txtSearch").val();
				if(str == ""){
					listAllCustomer(1);
					return ;
				} 
				$.ajax({
					url: "${pageContext.request.contextPath}/admin/searchuser/" + str,
					type: 'GET',
					dataType: 'JSON',
					beforeSend: function(xhr){
						xhr.setRequestHeader("Accept", "application/json");
						xhr.setRequestHeader("Context-Type", "application/json");
					},
					success: function(data){
						console.log(data); 
						b =true;
						//v=data;	
						if(data.customer.length>0){  
							$("tbody#CONTENTS").html('');					
							for(i=0; i<data.customer.length;i++)
								{
									format(data.customer[i]); 
								}
							$("#CONTENT_Userlist").tmpl(data.customer).appendTo("tbody#CONTENTS"); 
						}else{
							$("tbody#CONTENTS").html('<tr>NO CONTENTS</tr>'); 
						}
					},
					error:function(data,status,er){
						console.log("error: "+data+" status: "+status+" er:"+er);
					}
				});
			});
    		
    		function listAllCustomer(currentPage){
    			var json = {
					 	"currentPage" : currentPage,
			    		"perPage"     : $("#PER_PAGE").val() 
				};
    			$.ajax({
				    url: "${pageContext.request.contextPath}/admin/listcustomer", 
				    type: 'GET', 
				    data: json,  
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) {   
				    	console.log(data);
						b =true;
						v=data;	
						if(data.customer.length>0){  
							$("tbody#CONTENTS").html('');					
							for(i=0; i<data.customer.length;i++)
								{
									format(data.customer[i]); 
								}
							$("#CONTENT_Userlist").tmpl(data.customer).appendTo("tbody#CONTENTS"); 
						}else{
							$("tbody#CONTENTS").html('<tr>NO CONTENTS</tr>'); 
						}
				    	if(check){
				    		setPagination(data.pagination.totalPages,1);
				    		check=false;
				    	}	
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
    		}
    		format = function(value){ 
    			
		 		if(b){
		 			order = v.pagination.perPage * (v.pagination.currentPage-1);
		 			j = order + 1;
		 			value["order"] =j;
		 			b = false;
		 		}
		 		else  
		 		value["order"] = ++j;  
	 }
	 $("#PER_PAGE").change(function(){
			check = true;
			listAllCustomer(1);
	    });

setPagination = function(totalPage, currentPage){
	$('#PAGINATION').bootpag({
        total: totalPage,
        page: currentPage,
        maxVisible: 10,
        leaps: true,
        firstLastUse: true,
        first: 'First',
        last: 'Last',
        wrapClass: 'pagination',
        activeClass: 'active',
        disabledClass: 'disabled',
        nextClass: 'next',
        prevClass: 'prev',
        lastClass: 'last',
        firstClass: 'first'
    }).on("page", function(event, currentPage){
    	check = false;
    	listAllCustomer(currentPage);
    }); 
};

	    	$(document).on('click','#btnStatus',function(){
				var id = $(this).parents("tr").find("#USER_ID").html();
				var _this = $(this);
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/users/status/"+id, 
				    type: 'POST', 
				    dataType: 'JSON', 
				    //data: JSON.stringify(json), 
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				        if(data){
				        	if(_this.hasClass('btn-success')){
				        		_this.removeClass('btn-success');
				        		_this.addClass('btn-warning');
				        		_this.html('Inactive');
				        	}else if(_this.hasClass('btn-warning')){
				        		_this.removeClass('btn-warning');
				        		_this.addClass('btn-success');
				        		_this.html('Active');
				        	}else{
				        		_this.removeClass('btn-warning');
				        		_this.removeClass('btn-success');
				        		_this.removeClass('btn-danger');
				        		_this.removeClass('btn-info');
				        		_this.addClass('btn-success');
				        		_this.html('Active');
				        	}
				        }else{
				        	alert('YOU HAVE ERRORS WHEN CHANGING THE STATUS.');
				        }
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
	    	});
	    	
	    	$(document).on('click','#btnDeleteUser',function(){
				var id = $(this).parents("tr").find("#USER_ID").html();
				var _this = $(this);
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/users/delete/"+id,
				    type: 'POST', 
				    dataType: 'JSON', 
				    //data: JSON.stringify(json), 
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) { 
				        if(data){
			        		_this.parents('tr').find("#btnStatus").removeClass('btn-warning');
			        		_this.parents('tr').find("#btnStatus").removeClass('btn-success');
			        		_this.parents('tr').find("#btnStatus").addClass('btn-danger');
			        		_this.parents('tr').find("#btnStatus").html('Deleted');
				        }else{
				        	alert('YOU HAVE ERRORS WHEN DELETE THE USER.');
				        }
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});
	    	});
	    	 
	    	/* ============================================== Add users =============================================== */
	    	var isAdded=false;
        
        	function clearUser(){
				 $("#username").val("");
				 $("#password").val("");
				 $("#confirmation_password").val("");
				 $("#firstName").val("");
				 $("#lastName").val("");
				 $("#gender").val("");
				 $("#email").val("");
				$("#USER_ROLE").val("");
			}	
                   
        	$('#form_add_user').on('hidden.bs.modal', function (event) {
        		listAllCustomer(1); 
			})
    		
        		
			$("#btn_add_user").click(function(){    	
				//clearFormAdd();
				clearUser();
				$('#form_add_user').modal({
					"backdrop":"static"
				}) ;
			});
			
			

			$("#frmAddNewUser").submit(function(e){
			 
				e.preventDefault();    				
			 	json = {
					 
					"customerName" : $("#firstName").val(),
					"phoneNumber"  : $("#lastName").val()
					 
				};  
				$.ajax({ 
				    url: "${pageContext.request.contextPath}/admin/addcustomer", 
				    type: 'POST', 
				    dataType: 'JSON', 
				    data: JSON.stringify(json), 
				    beforeSend: function(xhr) {
	                    xhr.setRequestHeader("Accept", "application/json");
	                    xhr.setRequestHeader("Content-Type", "application/json");
	                },
				    success: function(data) {
				        if(data){
				        	alert('YOU HAVE BEEN INSERTED SUCCESSFULLY.');
				        	isAdded=true;
				       // 	clearUser();
				      //  	location.href="${pageContext.request.contextPath}/admin/userlist";
				        }else{
				        	alert('YOU HAVE ERRORS WHEN INSERT NEW USER.');
				        }
				    },
				    error:function(data,status,er) { 
				        console.log("error: "+data+" status: "+status+" er:"+er);
				    }
				});  
			});
		});
    	</script>
</body>
</html>