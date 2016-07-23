<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<div id="addtocart" style="display: none;" class="hidden-print" style="width: 80%;">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" aria-hidden="true" id="closepopup">
						<span class="button b-close"><span>×</span></span>
					</button>
					<h4 class="modal-title">មុខ ទំនិញ</h4>

				</div>
				<div class="modal-body" style="overflow: auto;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>ឈ្មោះ</th>
								<th>តំលៃ</th>
								<th>ចំនួន</th>
								<th>សរុប</th>
								<th>ផ្សេងទៀត</th>
								<th></th>
							</tr>
						</thead>
						<tbody id="orderdetail">

						</tbody>
					</table>
<hr>
					<div class="form-horizontal">
						<div>
							<label class="control-label col-md-2" >លក់ជូន :</label>
							<div class="col-md-3">
								<input type="text" class="form-control" maxlength="30"  id="tocusname"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-2" >ប្រាក់សរុប $ :</label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30"
									readonly="readonly"  id="totalamount"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-1" >ដុល្លា :</label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30"  id="txtpay" value="0"
									style="margin-bottom: 2px;">
							</div>
						</div>
						<div>
							<label class="control-label col-md-2" >អាស័យ​ដ្ឋាន :</label>
							<div class="col-md-3">
								<input type="text" class="form-control" id="cusaddr"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-2">ប្រាក់សរុប ៛ :</label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30" 
									readonly="readonly" name="txtName" id="totalreil"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-1">រៀល :</label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30" id="txtpayreil" value="0"
									style="margin-bottom: 2px;" readonly="readonly">
							</div>
						</div>
						<div>
							<label class="control-label col-md-2" >ទូរស័ព្ទ :</label>
							<div class="col-md-3">
								<input type="text" class="form-control" id="cusphone"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-2">អត្រាប្រាក់ :</label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30"
									readonly="readonly"  id="exchangerate"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-1">អាប់ ៛ :</label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30" value="0"
									readonly="readonly"  id="txtchange"
									style="margin-bottom: 2px;">
							</div>
						</div>
						<div>
							<label class="control-label col-md-2" >ថ្ងៃខែឆ្នាំ :</label>
							<div class="col-md-3">
								<input type="text" class="form-control" id="cusdate" readonly="readonly"
									style="margin-bottom: 2px;">
							</div>
							<label class="control-label col-md-2"></label>
							<div class="col-md-2">
							</div>
							<label class="control-label col-md-1">អាប់ $ : </label>
							<div class="col-md-2">
								<input type="text" class="form-control" maxlength="30" value="0"
									readonly="readonly"  id="txtchangedollar"
									style="margin-bottom: 2px;">
							</div>
						</div>
					
					</div>
				</div>
				<div class="modal-footer" style="height: 80px; overflow: auto;">
					<div align="right">
						<button type="button" id="btnbuymore" class="btn btn-default">
							<span class="button b-close"><span>បន្ថៃមទំនិញ</span></span>
						</button>
						<button type="button" id="btnconfirm"
							class="btn btn-default hidebtn b-close">
							<span class="button b-close"><span>យល់ព្រម</span></span>
						</button>
						<button type="button" id="btnconfirmorder"
							class="btn btn-default hidebtn">
							<span class="button b-close"><span>Confirm</span></span>
						</button>
						<button type="button" id="btncancel"
							class="btn btn-default hidebtn">
							<span class="button b-close"><span>លុបចោល</span></span>
						</button>
						<button type="button" id="btncancelorder"
							class="btn btn-default hidebtn">
							<span class="button b-close"><span>Cancel Order</span></span>
						</button>
					</div>
				</div>
			</div>
		</div>