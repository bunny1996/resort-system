<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,com.eResorts.MyFunctions"%>
<%
String BookingID=request.getParameter("BookingID");

String RoomID=request.getParameter("RoomID");
String ResortID=request.getParameter("ResortID");
String DateOfBooking=request.getParameter("From");
int NoOfRoomsAvailable=0;
int NoOfRooms=0;
int NoOfDays=0;

	Date CancelDate = new Date(System.currentTimeMillis());

%>
<HEAD>


	<script LANGUAGE="Javascript" SRC="validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">
		<SCRIPT LANGUAGE="JavaScript">
	<!--

function CalculatePeriod()
	{
		//alert("Hi");
		var DOA = document.cancelbooking.CancelDate.value;
		
		var DOD = document.cancelbooking.DateOfBooking.value;
		YYYYDOA = DOA.substr(0,4);
		YYYYDOD = DOD.substr(0,4);
		MMDOA = DOA.substr(5,2);
		MMDOD = DOD.substr(5,2);
		DDDOA = DOA.substr(8,2);
		DDDOD = DOD.substr(8,2);
	    var AdmDate = new Date(YYYYDOA,MMDOA,DDDOA);
		var DisDate = new Date(YYYYDOD,MMDOD,DDDOD);
		if(DisDate >= AdmDate)
			{
				if(DisDate>AdmDate)
				{
					var Period = (DisDate - AdmDate)/(1000*60*60*24);
					alert(Period);
					document.cancelbooking.NoOfDays.value = Period;

				}
				else
				{
					var Period=1;
       				document.cancelbooking.NoOfDays.value = Period;

				}
			}
		
	}
		//-->

	</Script>
</HEAD>
<BODY class="SC">
<h3 align=center>Cancel Booking </h3>
<Form name="cancelbooking" onSubmit="return CalculatePeriod()" action="CancelBooking1.jsp">
<table>
<Input type=text name="CancelDate" value="<%=CancelDate%>">
<Input type=text name="DateOfBooking" value="<%=DateOfBooking%>">
<Input type=text name="NoOfDays" value="<%=NoOfDays%>">
<Input type=text name="BookingID" value="<%=BookingID%>">
<Input type=text name="ResortID" value="<%=ResortID%>">
<Input type=text name="RoomID" value="<%=RoomID%>">

	<TR class=row_even ALIGN="CENTER">
			<TD><INPUT TYPE="SUBMIT" VALUE="Submit" ></TD>
			<TD><INPUT TYPE="RESET" VALUE="Reset"></TD>
		</TR>
		</table>
</Form>
</BODY>
