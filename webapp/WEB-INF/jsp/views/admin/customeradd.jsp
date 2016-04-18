<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Modal -->
<div class="modal fade" id="form_add_user" role="dialog ">
	<div class="modal-dialog modal-lg" style="width: 80%">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Form Add Customer</h4>
			</div>
			<div class="modal-body">
				<div class=" form">
										<form class="cmxform form-horizontal tasi-form" id="frmAddNewUser" method="POST"
											action="${pageContext.request.contextPath}/admin/addcustomer"
											novalidate="novalidate">
											<div class="form-group ">
												<label for="productname" class="control-label col-lg-2">Name *</label>
												<div class="col-lg-10">
													<input class=" form-control" id="firstName"
														name="firstName" type="text">
												</div>
											</div>
											<div class="form-group ">
												<label for="productname" class="control-label col-lg-2">Phone *</label>
												<div class="col-lg-10">
													<input class=" form-control" id="lastName" name="lastName"
														type="text">
												</div>
											</div>
										   
											<div class="form-group">
												<div class="col-lg-offset-2 col-lg-10">
													<button class="btn btn-success waves-effect waves-light"  
														type="submit">Save</button>
													<button class="btn btn-default waves-effect" data-dismiss="modal" type="button">Cancel</button>
												</div>
											</div>
										</form>
									</div>
									<!-- .form --> 
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>
	</div>
</div>








									