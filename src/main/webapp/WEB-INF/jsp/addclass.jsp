<%--
    Document   : Add Class
    Created on : JUN 22, 2018, 12:42:28 PM
    Author     : Musaib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Class</title>
<link rel="stylesheet" href="/hisabaat/css/datePicker/jquery-ui-1.8.18.custom.css">
<link rel="stylesheet" href="/hisabaat/css/datePicker/demos.css">
<style type="text/css">
.footerTD{
                border-radius:6px;
                background-color:#4b6a84;


                text-align: left;


            }
<!--
.divCSS {
	overflow: scroll;
	height: 100%;
	width: 100%;
}

.fiedlSet {
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-width: 1;
	width: 100%;
	color: #000000;
	font-size: 16px;
	font-weight: bold;
	font-variant: normal;
	font-stretch: wider;
	background-color: #e2ebf3;
	border-top-color: #5d7e9b;
	border-right-color: #5d7e9b;
	border-bottom-color: #5d7e9b;
	border-left-color: #5d7e9b;
}

.legendCSS {
	color: #666666;
}

.tableCSS {
	width: 100%;
	height: 100%;
	position: absolute;
	left: 0px;
	top: 0px;
}

.textAreaCSS {
	height: auto;
	width: auto;
}

.textField {
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-color: #5d7e9b;
	border-right-color: #5d7e9b;
	border-bottom-color: #5d7e9b;
	border-left-color: #5d7e9b;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	width: auto;
	height: auto;
}

.alignRight {
	font-family: Tahoma;
	font-size: 11px;
	font-style: normal;
	text-transform: capitalize;
	color: #325F6D;
	text-align: right;
	vertical-align: middle;
	font-weight: bold;
}

.alignRightMultiple {
	font-family: Tahoma;
	font-size: 11px;
	font-weight: bolder;
	text-align: right;
	vertical-align: middle;
	font-style: normal;
	color: #325F6D;
}

.alignCentreMultiple {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bolder;
	text-align: center;
	vertical-align: middle;
	font-style: normal;
	color: #000000;
}

.autoAdjust {
	height: auto;
	width: auto;
}

.radioSpanCSS {
	font-size: 12px;
	font-family: Arial, Helvetica, sans-serif;
	text-align: left;
	vertical-align: middle;
}

.radioCSS {
	background-position: left center;
}

.spanText {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	font-weight: bold;
	color: #000000;
}

.emptyFieldSet {
	border-top-color: #FA7676;
	border-right-color: #FA7676;
	border-bottom-color: #FA7676;
	border-left-color: #FA7676;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	border-top-width: thin;
	border-right-width: thin;
	border-bottom-width: thin;
	border-left-width: thin;
	background-image: url(images/close.JPG);
	background-repeat: repeat-y;
	background-attachment: scroll;
	background-position: right;
	width: auto;
	height: auto;
	display: inline;
}

.style1 {
	font-family: Tahoma;
	font-size: 14px;
}

.style2 {
	color: #666666;
	font-family: Tahoma;
	font-size: 14px;
}

.style4 {
	font-size: 12px;
	font-family: Tahoma;
	text-align: left;
	vertical-align: middle;
	color: #325f6d;
}

<!--
.header {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	background-color: #4b6a84;
}

.table {
	background-color: #3399CC;
	text-align: center;
	width: auto;
}

.headerText {
	border-radius: 3px;
	width: 10px;
	font-family: Tahoma;
	font-size: 12px;
	background-color: #4b6a84;
	color: #FFFFFF;
	font-weight: normal;
	width: auto;
	height: 27px;
	vertical-align: text-top;
	text-align: center;
	background-image:
		url("/images/ui-bg_diagonals-small_50_466580_40x40.png");
}

.dataText {
	border-radius: 3px;
	font-family: Tahoma;
	color: #4b6a84;
	font-size: 13px;
	letter-spacing: normal;
	text-align: center;
	background-color: #E3EFFF;
}

.dataTextInActive {
	border-radius: 3px;
	font-family: Tahoma;
	color: #4b6a84;
	font-size: 12px;
	font-weight: bold;
	letter-spacing: normal;
	text-align: center;
	background-color: #E3EFFF;
	text-decoration: none;
}

.dataTextActive {
	border-radius: 3px;
	font-family: Tahoma;
	color: #4b6a84;
	font-size: 12px;
	font-weight: bold;
	letter-spacing: normal;
	text-align: center;
	background-color: #E3EFFF;
	text-decoration: underline;
	cursor: pointer;
}

.dataTextHidden {
	font-family: Tahoma;
	color: #4b6a84;
	font-size: 13px;
	letter-spacing: normal;
	text-align: center;
	background-color: #E3EFFF;
}

.headerTD {
	border-radius: 6px;
	background-color: #4b6a84;
	background-image:
		url("/images/ui-bg_diagonals-small_50_466580_40x40.png");
	color: #FFFFFF;
	font-family: Tahoma;
	font-size: 13px;
	text-transform: uppercase;
	text-align: center;
	font-weight: bold;
	height: 22px;
}
</style>

<link rel="stylesheet" href="/hisabaat/css/validation/jquery.ketchup.css">
<script type="text/javascript" src="/hisabaat/js/datePicker/jquery-1.7.1.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery-ui-1.8.17.custom.js"></script>
<script type="text/javascript" language="javascript"
	src="/hisabaat/js/dataTable/jquery.dataTables.js"></script>
<script type="text/javascript" src="/hisabaat/js/datePicker/ui/jquery.ui.core.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.ui.widget.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.ui.datepicker.js"></script>
<script type="text/javascript" src="/hisabaat/js/datePicker/ui/jquery.ui.tabs.js"></script>
<script type="text/javascript" src="/hisabaat/js/datePicker/ui/sliderAccess.js"></script>

<script type="text/javascript"
	src="/hisabaat/js/validation/jquery.ketchup.all.min.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.ui.button.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.ui.accordion.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.effects.core.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.ui.accordion.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.effects.slide.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.effects.bounce.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.effects.clip.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.effects.transfer.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/jquery.effects.blind.js"></script>
<script type="text/javascript"
	src="/hisabaat/js/datePicker/ui/ScrollableGridPlugin.js"></script>
<script type="text/javascript" charset="utf-8">
	$(document).ready(function() {
		$('#myTable').dataTable({
			"sScrollY" : "380px",
			"bPaginate" : false,
			"bLengthChange" : false,
			"bFilter" : true,
			"bSort" : true,
			"bInfo" : false,
			"bAutoWidth" : false
		});
	});
</script>

<script type="text/javascript">
	$(function() {
		// run the currently selected effect
		function runEffect() {

			var clipEffect = 'blind';
			var options = {};
			$("#effect").toggle(clipEffect, options, 1000);
		}
		;
		// set effect from select menu value
		$("#add").button().click(function() {
			runEffect();
			return false;
		});
	});
</script>
<script type="text/javascript" src="/hisabaat/js/datetimepicker_css.js"></script>
<script type="text/javascript">
	function addFeesCategory() {
		var form1 = document.getElementById("form1");
		form1.action = "/hisabaat/FeesProcess/addFeesParticular";
		form1.method = "POST";
		form1.submit();

	}
	$(function() {

		$("#tabs").tabs();
		$("#save").button().click(function() {
			saveClass();
		});
		$("#savesec").button().click(function() {
			saveClass();
		});
		$("#effect").hide();
		
		$('.reset').button().click(function() {
		});
		
		$("#openingbalance").keypress(function (e) {
  		     //if the letter is not digit then display error and don't type anything
  		     if (e.which != 8 && e.which != 0 && (e.which < 48 || e.which > 57) && e.which !=46) {
  		               return false;
  		    }
  		   });
	});

	 $(function(){
         $('.delete').button({
             icons:{
                 primary: "ui-icon-trash"
             }
         }).click(function(){
             deleteRecords();
             return false;

         });
         $('#chckHead').click(function () {
             var length = $('.chcktbl:checked').length;
             var trLength=$('.trClass').length;
             if(length>0){
                 $('.chcktbl:checked').attr('checked', false);
                 this.checked=false;

             }
             else{
                 if (this.checked == false) {
                     $('.chcktbl:checked').attr('checked', false);
                 }
                 else {
                     $('.chcktbl:not(:checked)').attr('checked', true);
                 }

             }

         });
         $('.chcktbl').click(function () {
             var length = $('.chcktbl:checked').length;
             var trLength=$('.trClass').length;
             alert(tdLength);
             if (length > trLength) {

                 $('.chcktbl:not(:checked)').attr('disabled', true);
             }
             else {
                 $('.chcktbl:not(:checked)').attr('disabled', false);
             }
         });
         
     });
	 
	 function saveClass(){

		 var form1=document.getElementById("form1");
         form1.action="/hisabaat/ClassProcess/createClass";
         form1.submit();
         
     }
	 
	function deleteRecords(){
         
		if(confirm('Are you sure, you want to delete the class?')){
			var form1=document.getElementById("form1");
	         form1.action="/hisabaat/ClassProcess/deleteClass";
	        form1.submit();
		}
         
         
     }
</script>
<script type="text/javascript">
    
    var xmlHttp;
    var count;
 	
	function GetXmlHttpObject() {
		var xmlHttp = null;
		try {
			xmlHttp = new XMLHttpRequest();
		} catch (e) {
			try {
				xmlHttp = new ActiveXObject("Msxml2.XMLHTTP");
			} catch (e) {
				xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
		return xmlHttp;
	}

</script>
</head>
<%
//allow access only if session exists
String user = null;
if(session.getAttribute("userAuth") == null){
	response.sendRedirect("/hisabaat/UserProcess/sessionTimeOut");
}else user = (String) session.getAttribute("userAuth");
String userName = null;
String sessionID = null;
Cookie[] cookies = request.getCookies();
if(cookies !=null){
for(Cookie cookie : cookies){
	if(cookie.getName().equals("user")) userName = cookie.getValue();
	if(cookie.getName().equals("JSESSIONID")) sessionID = cookie.getValue();
}
}
%>
<body>
	<form id="form1"
		 method="POST">
		<div style="height: 28px">
			<button id="add">Add Class</button>
			<br>
		</div>

		<div id="effect" class="ui-widget-content ui-corner-all">
			<div id="tabs">
				<ul>
					<li><a href="#tabs-1">Add Classes</a></li>
					<li><a href="#tabs-2">Add Sections</a></li>
				</ul>
				
				
			<div id="tabs-1">
					<table width="100%" border="0" align="center" >
					
					
						
						<tr>
						<td  width="20%"></td>
							<td  style="color: #325F6D;font-weight: bold;">Class&nbsp;&nbsp;&nbsp;
							
									<input name="classdetails" id="classdetails" type="text" size="36" />
									</td>
						</tr>
							
						<tr>
							<td><br /></td>
						</tr>
						
						<tr>
						<td  width="40%"></td>
									<td>

										<button id="save">Save</button>

										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="reset">Reset</button>

									</td>


								</tr>
						
						
						
				</table>
			</div>
			
				<div id="tabs-2">
					<table width="100%" border="0" align="center">
						
						<tr>

							<td width="30%" class="alignRight"><label> <font
									color="red"></font>
							</label></td>
							<td width="20%" class="alignRight"></td>
							<td class="alignRight"><font color="red"></font></td>
						</tr>
						
						
						<tr>
						<td width="30%" class="alignRight">Sec &nbsp;</td>
							<td width="12%" align="left"><label> 
							<input name="section" id="section" type="text" size="36"/>
							</label>
							</td>
						</tr>
						
											
								<tr>

									<td><br /></td>
								</tr>
								<tr>
								<td  width="20%"></td>
									<td>

										<button id="savesec">Save</button>

										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button class="reset">Reset</button>

									</td>


								</tr>
				</table>
			</div>
			</div>
			
		</div>

<div style="overflow: scroll; height: 600px">
		<table width="100%">
                    <tr>
                        <td  class="headerTD">Class & Sec</td>
                    </tr>

                    

                </table>
                
               <br><br>
                
			<table width="50%" border="0" style="border-color: #4b6a84;float: left;margin-bottom:50px;">

				<thead>
					<tr>
						<th class="headerText"><input type="checkbox" id="chckHead" /></th>
						<th title="click to sort" class="headerText">Class<img
							alt=" " style="position: relative; top: 4px;"
							src="/hisabaat/css/dataTable/images/sort_both.png" /></th>
					</tr>
				</thead>

				<tbody>

					<c:forEach items="${classdetailslist}" var="classdetailslist">
						<c:if test="${(classdetailslist.classdetails != '')}">
						<tr style="border-color: #000000" border="1" cellpadding="1"
							cellspacing="1">
							<td class="dataText"><input type="checkbox"
								id="<c:out value="${classdetailslist.stdrdid}"/>" class="chcktbl"
								name="classids" value="${classdetailslist.stdrdid}" /></td>
							<td class="dataText"><c:out value="${classdetailslist.classdetails}" /></td>
						</tr>
						</c:if>
					</c:forEach>




				</tbody>
				<tfoot><tr>
                            <td  class="footerTD" colspan="2" ><button class="delete">Delete</button> 
                    
                        </tr></tfoot>
			</table>
			<table width="50%" border="0" style="border-color: #4b6a84;float: left"	>

				<thead>
					<tr>
						<th class="headerText"><input type="checkbox" id="chckHead" /></th>
						<th title="click to sort" class="headerText">Section<img
							alt=" " style="position: relative; top: 4px;"
							src="/hisabaat/css/dataTable/images/sort_both.png" /></th>
					</tr>
				</thead>

				<tbody>

					<c:forEach items="${classdetailslist}" var="classdetailslist">
					<c:if test="${(classdetailslist.section != '')}">
						<tr style="border-color: #000000" border="1" cellpadding="1"
							cellspacing="1">
							
							<td class="dataText"><input type="checkbox"
								id="<c:out value="${classdetailslist.stdrdid}"/>" class="chcktbl"
								name="classids" value="${classdetailslist.stdrdid}" /></td>
								
							
								<td class="dataText"><c:out value="${classdetailslist.section}" /></td>
							
							
							
						</tr>
						</c:if>
					</c:forEach>




				</tbody>
				<tfoot><tr>
                            <td  class="footerTD" colspan="2" ><button class="delete">Delete</button> 
                    
                        </tr></tfoot>
			</table>

		</div>
	</form>

</body>
</html>
