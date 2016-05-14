
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Modal -->
<div class="modal fade" id="form_add_import" role="dialog ">
	<div class="modal-dialog modal-lg" style="width: 80%">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">Form Customer</h4>
			</div>
			<div class="modal-body">
				<div class=" form">
					<form class="cmxform form-horizontal tasi-form" id="addOwedForm"
						method="get" action="#" novalidate="novalidate">
						<div class="form-group ui-widget">
							<label for="productName" class="control-label col-lg-2">Customer
								Name *</label>
							<div class="col-lg-10">
								<input class=" form-control" required="required"
									id="customerName" name="customerName" type="text"> <input
									class="hidebtn" id="cusID">
							</div>
						</div>
						<div class="form-group ">
							<label for="phoneNumber" class="control-label col-lg-2">Phone Number </label>
							<div class="col-lg-10">
								<input class="form-control " readonly="readonly" id="phoneNumber"
									name="phoneNumber" type="text">
							</div>
						</div>	
						<div class="form-group ">
							<label for="phoneNumber" class="control-label col-lg-2">Amount </label>
							<div class="col-lg-10">
								<input class="form-control " id="txtAmount" type="text">
							</div>
						</div>					
					</form>
				</div>
				<!-- .form -->
			</div>
			<div class="modal-footer">
				<div class="form-group" align="right">
						<button class="btn btn-success waves-effect waves-light"
							style="width: 100px;" id="savebtn">Save</button>
						<button class="btn btn-default waves-effect"
							style="width: 100px; margin-right: 10px;" id="cencelBtn" data-dismiss="modal"
							type="button">Cancel</button>
				</div>
			</div>
		</div>
	</div>
</div>









