<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div class="container visible-print-block"  style="font-size : 13px;"> 
  <div class="text-center"><h3>សេងហ៊ី ចំការមន</h3></div>    
  <p class="text-center">Tel: 077 72 83 83 / 098 71 17 18</p>         
    <div>
  	លក់ជូន : <span id="printtocusname" style="width: 10%;">..................................</span>  	
  	<span class="pull-right">ទូរស័ព្ទ : <span  id="printcusphone"style="width: 10%;">...................</span></span>
  	<br>
  	អាស័យ​ដ្ឋាន : <span id="printcusaddr" style="width: 10%;">.............................</span>  	
  	<span class="pull-right">ថ្ងៃខែឆ្នាំ : <span  id="printcusdate"style="width: 10%;">..................................</span></span>
  </div>
  <table class="table table-condensed" id="tblholdprint">
    <thead id="tblprinthead">
      <tr>
        <td>N<sup>0</sup></td>
        <td>ឈ្មោះ</td>
        <td>ចំនួន</td>
        <td>តំលៃ</td>
        <td>សរុប</td>
        <td>ផ្សេងទៀត</td>
      </tr>
    </thead>
    <tbody id="tblprint">
      
    </tbody>
  </table>


  <div class="row text-right">
  <div class="col-xs-6 text-left">
     អត្រាប្រាក់ :  <span id="printrate"></span> ៛
 <br><br>
 <p>
 	សូមពិនិត្យទំនិញអោយបានច្បាស់លាស់មុននិង ចាកចេញ។ រាល់ទំនិញដែលទិញហើយមិនអាចប្តូរយកប្រាក់វិញបានឡើយ។
 </p>
  </div>
  <div class="col-xs-4">
    <p>
      <strong>
        ប្រាក់សរុប : <br/>
        ប្រាក់សរុប : <br/>
        ទទួលប្រាក់ ដុល្លា : <br/>
        ទទួលប្រាក់ រៀល : <br/>
        អាប់ប្រាក់ រៀល : <br/>
        អាប់ប្រាក់ ដុល្លា : <br/>
      </strong>
    </p>
  </div>
  <div class="col-xs-2 text-left">
    <strong>
      <span id="printtotal"></span> $<br/>
      <span id="printtotalreil"></span> ៛<br/>
      <span id="printpaid"></span> $<br/>
      <span id="printpaidr"></span> ៛<br/>
      <span id="printchange"></span> ៛<br/>
      <span id="printdollar"></span> $<br/>
    </strong>
  </div>
</div>
</div>
