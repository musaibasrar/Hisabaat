<%-- 
Document   : left
Created on : Jan 4, 2012, 3:41:11 PM
Author     : Musaib
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Left</title>
        <script language="JavaScript" src="/hisabaat/js/motionpack.js"></script>
        <link rel="stylesheet" href="/hisabaat/css/datePicker/jquery-ui-1.8.18.custom.css">
        <link rel="stylesheet" href="/hisabaat/css/datePicker/demos.css">
		
        <script type="text/javascript" src="/hisabaat/js/datePicker/jquery-1.7.1.js"></script>
        <script type="text/javascript" src="/hisabaat/js/datePicker/ui/jquery.ui.core.js"></script>
        <script src="/hisabaat/js/datePicker/ui/jquery.ui.widget.js"></script>
        <script src="/hisabaat/js/datePicker/ui/jquery.ui.datepicker.js"></script>
        <script src="/hisabaat/js/datePicker/ui/jquery.ui.accordion.js"></script>
        <script src="/hisabaat/js/datePicker/ui/sliderAccess.js"></script>
        <script src="/hisabaat/js/datePicker/ui/jquery-ui-timepicker-addon.js"></script>
        <link href="/hisabaat/css/notification/jquery.jnotify.css" rel="stylesheet" type="text/css" />
        <script src="/hisabaat/js/notification/jquery.jnotify.js" type="text/javascript"></script>
		<link rel="stylesheet" href="/hisabaat/css/font-awesome.css">
        <script type="text/javascript">
            var get;
            function getdata1() {
                var startHour, startMin;
                var tDate = new Date();
                startHour = tDate.getHours();
                startMin = tDate.getMinutes();

                if (typeof XMLHttpRequest != "undefined") {
                    get = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    get = new ActiveXObject("Microsoft.XMLHTTP");
                }


                get.onreadystatechange = processdata;
                get.open("POST", "/VisitProcess/getAJaxNextVisit?startHour=" + startHour + "&startMin=" + startMin, true);
                get.send(null);

            }

            function processdata() {
                var id, hourID, patientID, reminderTime, visitTime, rating, name, complaint, link;
                if (get.readyState == 4)
                {
                    if (get.status == 200) {
                        var visits = get.responseXML.getElementsByTagName("Visits")[0];
                        var visitNodes = visits.getElementsByTagName("Visit");
                        for (var i = 0; i < visitNodes.length; i++) {
                            var visit = visitNodes[i];

                            patientID = visit.getElementsByTagName("PatientID")[0].firstChild.nodeValue;
                            visitTime = visit.getElementsByTagName("VisitTime")[0].firstChild.nodeValue;
                            name = visit.getElementsByTagName("PatientName")[0].firstChild.nodeValue;
                            link = "<a target='mainFrame' href='/PatientProcess/viewDetails?id=" + patientID + "'>" + name + "   " + visitTime + "</a>";

                            $(function() {
                                $('#Notification').jnotifyAddMessage({
                                    text: link,
                                    permanent: false,
                                    disappearTime: 30000
                                });

                            });

                        }


                        setTimeout('getdata1();', 60000);


                    }
                }

            }
            /**
             * Comment
             */
            var getExpiringStockCount;
            function getExpiringStock() {
                if (typeof XMLHttpRequest != "undefined") {
                    getExpiringStockCount = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    getExpiringStockCount = new ActiveXObject("Microsoft.XMLHTTP");
                }


                getExpiringStockCount.onreadystatechange = processExpiringStockData;
                getExpiringStockCount.open("POST", "/StockProcess/getExpiringStock", true);
                getExpiringStockCount.send(null);

            }
           
            var getDepletingStockCount;
            function getDepletingStock() {
                if (typeof XMLHttpRequest != "undefined") {
                    getDepletingStockCount = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    getDepletingStockCount = new ActiveXObject("Microsoft.XMLHTTP");
                }


                getDepletingStockCount.onreadystatechange = processDepletingStockData;
                getDepletingStockCount.open("POST", "/StockProcess/getDepletingStock", true);
                getDepletingStockCount.send(null);

            }
            function processDepletingStockData() {

                if (getDepletingStockCount.readyState == 4)
                {
                    if (getDepletingStockCount.status == 200) {
                        var count = getDepletingStockCount.responseXML.getElementsByTagName("DepletingStockCount")[0];
                        var depletingStockCount = count.childNodes[0].nodeValue;
                        var depletingStock = document.getElementById("depletingStock");
                        depletingStock.innerHTML = " " + depletingStockCount;
                        setTimeout('getDepletingStock();', 60000);


                    }
                }

            }

        </script>
        <script type="text/javascript">
            var req;


            function count() {

                var idField = document.getElementById("userid");
                var url = "AppointmentController";
                if (typeof XMLHttpRequest != "undefined") {
                    req = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    req = new ActiveXObject("Microsoft.XMLHTTP");
                }
                reload(req);
                //req.open("POST", url, true);

                //req.send();
                /*req.onreadystatechange = function()
                 {
                 if (req.readyState==4)
                 {
                 if (req.status==200){
                 
                 var count = req.responseXML.getElementsByTagName("count")[0];
                 var childCount=count.childNodes[0].nodeValue;
                 var mdiv = document.getElementById("n1");
                 mdiv.innerHTML=childCount;
                 mdiv.style.visible='block';
                 
                 }
                 }
                 }*/



            }
            function handleRequest() {
                if (req.readyState == 4)
                {
                    if (req.status == 200) {

                        var count = req.responseXML.getElementsByTagName("count")[0];
                        var childCount = count.childNodes[0].nodeValue;
                        var mdiv = document.getElementById("n1");
                        mdiv.innerHTML = childCount;
                        mdiv.style.visible = 'block';

                    }
                }
                setTimeout(function() {
                    reload(req);
                }, 100);
            }



        </script>
        <style>

            .noti_Container {
                position:relative;
                border:1px solid blue; /* This is just to show you where the container ends */
                width:16px;
                height:16px;
                cursor: pointer;
            }
            .noti_bubble {
                position:absolute;
                font-size: 12px;
                top: 450px;
                left: 0px;
                padding-right:2px;
                background-color:transparent;
                color:black;
                font-weight:bold;

                z-index: 2;
                width: 100%;
                height: 16px;
            }
        </style>
        <style>
            body{
                margin:0;
                padding:0;
                background:#FFFFFF;
                font:80% Tahoma;
                color:#555;
                line-height:150%;
                text-align:left;

            }
            /*body{
                margin:0;
                padding:0;
                background:#E6EEF4;
                font:80% Tahoma;
                color:#555;
                line-height:150%;
                text-align:left;

            }*/
            a{
                text-decoration:none;

                color:#cfe0ea;;
            }
            a:hover{
                text-decoration:underline;
                color:#EB6000;
            }
            h1{
                font-size:140%;
                margin:0 20px;
                line-height:80px;	
            }

            #content{margin:0 0px;}
            p{	
                margin:0 auto;
                width:700px;
                padding:1em 0;
            }


            .noti_Container {
                position:relative;
                border:1px solid blue; /* This is just to show you where the container ends */
                width:16px;
                height:16px;
                cursor: pointer;
            }
            .headerTD{
                border-radius:1px;
                background-color:#4b6a84;
                background-image: url("/images/ui-bg_diagonals-small_50_466580_40x40.png");
                color: #FFFFFF;
                font-family: Tahoma;
                font-size: 13px;
                text-transform: uppercase;
                text-align: center;
                font-weight: bold;
                height: 22px;
            }

.sideaccordian{
		
		font-size: 12px;
		/* border: 0px; */
		border-radius: 5px;
		/* border-bottom:  1px solid #010d1c !important; */
}


.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default { border: 1px solid #cccccc; background: #ffffff url(images/ui-bg_glass_100_f6f6f6_1x400.png) 50% 50% repeat-x; font-weight: bold; color: #1c94c4; }
.ui-widget-content {
    border: 1px solid #b6cfe2;
    background: #ffffff;
    color: #222222;
}


        </style>

        <script>
            function f1()
            {
                document.getElementById("n1").style.visibility = 'hidden';
            }
        </script>
        <script type="text/javascript">
            var req;


            function count() {

                var idField = document.getElementById("userid");
                var url = "AppointmentController";
                if (typeof XMLHttpRequest != "undefined") {
                    req = new XMLHttpRequest();
                } else if (window.ActiveXObject) {
                    req = new ActiveXObject("Microsoft.XMLHTTP");
                }
                var url = "AppointmentController";
                req.open("POST", url, true);



                //req.open("POST", url, true);

                req.send();
                req.onreadystatechange = function()
                {
                    if (req.readyState == 4)
                    {
                        if (req.status == 200) {

                            var count = req.responseXML.getElementsByTagName("count")[0];
                            var childCount = count.childNodes[0].nodeValue;
                            var mdiv = document.getElementById("n1");
                            mdiv.innerHTML = childCount;
                            mdiv.style.visible = 'block';

                        }
                    }
                }



            }


            var timer = null;
            function auto_reload()
            {
                alert();
                window.location = '/notication';
            }

        </script>
        <script language="JavaScript">
            var clockID = 0;
            function UpdateClock() {
                if (clockID) {
                    clearTimeout(clockID);
                    clockID = 0;
                }
                var months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
                var tDate = new Date();
                var clockDiv = document.getElementById('clock');
                var hours, min, sec;
                if (tDate.getHours() < 10) {
                    hours = "0" + tDate.getHours();

                }
                else {
                    hours = tDate.getHours();
                }
                if (tDate.getMinutes() < 10) {
                    min = "0" + tDate.getMinutes();

                }
                else {
                    min = tDate.getMinutes();
                }
                if (tDate.getSeconds() < 10) {
                    sec = "0" + tDate.getSeconds();

                }
                else {
                    sec = tDate.getSeconds();
                }
                clockDiv.innerHTML = " " + months[tDate.getMonth()] + " " + tDate.getDate() + " " + tDate.getFullYear() + " "
                        + hours + ":"
                        + min + ":"
                        + sec;

                clockID = setTimeout("UpdateClock()", 1000);
            }
            function StartClock() {
                clockID = setTimeout("UpdateClock()", 1);
            }
            function KillClock() {
                if (clockID) {
                    clearTimeout(clockID);
                    clockID = 0;
                }

            }
            function change(id, image) {
                var img = document.getElementById(id);
                img.src = "/images/" + image;

            }
            
           
        </script>

        <script>
            $(function() {


                $("#container").accordion({
                    collapsible: true,
                    active: false,
                    autoHeight: false,
                    navigation: true
                });


            });
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
    <body onload="StartClock()" onunload="KillClock()">
       <!--  <form name="theClock">

            <div id="clock" class="headerTD"></div>
        </form> -->
	<%-- <div class="headerTD" style="width: 95%" ><label style="font-size:14px;">A.Y:&nbsp;<c:out default="" value="${currentAcademicYear}"/></label></div> --%>

        <div id="container" style="width: 95%" >
        
        	<h5 class="sideaccordian" ><a href="#">Bill</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/MessItemsMoveProcess/issueItems" style="font-size: 12px;">Generate</a>
            			</td>
            		</tr>
                </table>
            </div>
        
        
            <h5 class="sideaccordian" ><a href="#">Customer</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/StudentProcess/viewAll" style="font-size: 12px;">View All</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/StudentProcess/addNew" style="font-size: 12px;">Add New</a>
            			</td>
            		</tr>
            		<!-- <tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/AttendanceProcess/viewAttendance" style="font-size: 12px;">View Attendance</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/AttendanceProcess/markAttendance" style="font-size: 12px;">Mark Attendance</a>
            			</td>
            		</tr> -->
                </table>
            </div>
            
            
            <h5 class="sideaccordian" ><a href="#" >Stock Management</a></h5>
        	
        	<div style="padding-left: 0px;padding-right: 0px;">
            
            	<table style=" border-collapse: collapse;width: 100%">
            		<!-- <tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/MessItemsMoveProcess/issueItems" style="font-size: 12px;">Issue</a>
            			</td>
            		</tr> -->
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/MessItemsProcess/purchaseItems" style="font-size: 12px;">Purchase</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				<a target="mainFrame" href="/hisabaat/MessItemsProcess/viewItems" style="font-size: 12px;">View/Add Items</a>
            			</td>
            		</tr>
            	</table>
            </div>
            
            
            <h5 class="sideaccordian"><a href="#" >Suppliers</a></h5>
              
              <div style="padding-left: 0px;padding-right: 0px;">
            
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/MessSuppliersProcess/paymentSuppliers" style="font-size: 12px;">Make Payment</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/MessSuppliersProcess/balanceSuppliers" style="font-size: 12px;">Balance Report</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				<a target="mainFrame" href="/hisabaat/MessSuppliersProcess/supplierPaymentReport" style="font-size: 12px;">Payment & Receipt Report</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/MessSuppliersProcess/viewSuppliers" style="font-size: 12px;">View/Add Suppliers</a>
            			</td>
            		</tr>
            	</table>
            </div>
            
            <h5 class="sideaccordian" ><a href="#">Expenses</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/AdminProcess/viewAllExpenses" style="font-size: 12px;">Expenses</a>
            			</td>
            		</tr>
                </table>
            </div>
            
            
            
            <h5 class="sideaccordian" ><a href="#">Accounts</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/AccountProcess/createAccount" style="font-size: 12px;">Chart of Accounts</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				<a target="mainFrame" href="/hisabaat/AccountProcess/createVoucher" style="font-size: 12px;">Create Voucher</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/AccountProcess/viewVoucherReceipt" style="font-size: 12px;">View/Cancel Voucher</a>
            			</td>
            			            		
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				<a target="mainFrame" href="/hisabaat/AccountProcess/viewCancelledVouchers" style="font-size: 12px;">Cancelled Vouchers</a>
            			</td>
            		</tr>
                </table>
            </div>
            
            
                  <h5 class="sideaccordian" ><a href="#">Advance Search</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/StudentProcess/advanceSearchStudents" style="font-size: 12px;">Search</a>
            			</td>
            		</tr>
                </table>
            </div>
            
              <h5 class="sideaccordian" ><a href="#">Staff</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/EmployeeProcess/ViewAllEmployee" style="font-size: 12px;">View All</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/EmployeeProcess/addEmployeePage" style="font-size: 12px;">Add Staff</a>
            			</td>
            		</tr>
            		
            		<!-- <tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/AttendanceProcess/attendanceExportViewStaff" style="font-size: 12px;">Export Attendance</a>
            			</td>
            		</tr> -->
                </table>
            </div>
            
            
            
            <h5 class="sideaccordian" ><a href="#">Extras</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/Backup&Restore" style="font-size: 12px;">Backup</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				<a target="mainFrame" href="/hisabaat/changePassword" style="font-size: 12px;">Change Password</a>
            			</td>
            		</tr>
            		<!-- <tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				<a target="mainFrame" href="/hisabaat/uploadattendance" style="font-size: 12px;">Upload Attendance File</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/StudentProcess/archiveViewAll" style="font-size: 12px;">Archive Students</a>
            			</td>
            		</tr> -->
                </table>
            </div>
            
           <!--   <h5 style="font-size: 12px"><a href="#" >H.R.</a></h5>
            <div >
                <a target="mainFrame" href="/hisabaat/HrProcess/advanceSalary" style="font-size: 12px;">Advance Salary</a><br/>
                <a target="mainFrame" href="/hisabaat/HrProcess/salaryApproval" style="font-size: 12px;">Advance Salary Approval</a><br/>
                <a target="mainFrame" href="/hisabaat/HrProcess/salaryIssue" style="font-size: 12px;">Advance Salary Status</a><br/>
                <a target="mainFrame" href="/hisabaat/HrProcess/processSalary" style="font-size: 12px;">Process Salary</a><br/>
                <a target="mainFrame" href="/hisabaat/HrProcess/issueStaffSalary" style="font-size: 12px;">Issue Staff Salary</a><br/>
            </div>
            
            <h5 style="font-size: 12px"><a href="#" >Leave Management</a></h5>
            <div >
                <a target="mainFrame" href="/hisabaat/HrProcess/leaveApplication" style="font-size: 12px;">Leave Application</a><br/>
                <a target="mainFrame" href="/hisabaat/HrProcess/leaveApprovals" style="font-size: 12px;">Leave Approvals</a><br/>
            </div> -->
            
           <!--  <h5 class="sideaccordian"><a href="#" >Mess Cards</a></h5>
            
            <div style="padding-left: 0px;padding-right: 0px;">
            
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/Printids/generateIds" style="font-size: 12px;">Generate IDs</a>
            			</td>
            		</tr>
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				 <a target="mainFrame" href="/hisabaat/Printids/cardValidity" style="font-size: 12px;">Card Validity</a>
            			</td>
            		</tr>
            	</table>
            </div> -->
            
            <h5 class="sideaccordian" ><a href="#">Send Notifications</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				 <a target="mainFrame" href="/hisabaat/SMSProcess/sendSMS" style="font-size: 12px;">SMS</a>
            			</td>
            		</tr>
            		<!-- <tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;">
            				<a target="mainFrame" href="/hisabaat/sendemail" style="font-size: 12px;">Email</a>
            			</td>
            		</tr> -->
                </table>
            </div>
            
               <!-- <h5 class="sideaccordian" ><a href="#">Promotion</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
            				<a target="mainFrame" href="/hisabaat/ClassProcess/promoteClass" style="font-size: 12px;">Promotions</a>
            			</td>
            		</tr>
                </table>
            </div> -->
            
            
            <h5 style="font-size: 12px"><a href="#" >Import</a></h5>
            <div style="padding-left: 0px;padding-right: 0px;">
            	<table style=" border-collapse: collapse;width: 100%">
            		<tr>
            			<td style="text-align: left;  padding: 4px;padding-left:20px ;background-color: #f5f8f9;">
                              <a target="mainFrame" href="/hisabaat/importfile" style="font-size: 12px;">Import Files</a><br/>
				        </td>
				     </tr>
				 </table>
            </div>
            
            </div>
                   
            
            <!-- END -->
           
       
        <script type="text/javascript">
            $(document).ready(function() {

                $('#Notification')
                        .jnotifyInizialize({
                    oneAtTime: false,
                    appendType: 'append'

                })
                        .css({'position': 'absolute',
                    'marginTop': '200px',
                    'left': '0px',
                    'width': '175px',
                    'height': '40px',
                    'z-index': '9999'
                });
                // --------------------------------------------------------------------------

                // For add a notification on button click
                // Parameter:
                // text: Html do you want to show
                // type: 'message' or 'error'
                // permanent: True if you want to make a message permanent
                // disappearTime: Time spent before closing message




                // -----------------------------------------------------
            });
        </script>


        <div id="n1" class="noti_bubble">
            <table width="100%" border="0">


                <tr>                   


                </tr>

            </table>

        </div>

        <script>
            getdata1();
            
        </script>
    </body>

</html>
