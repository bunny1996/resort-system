<%@ page language="java" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.lang.*,java.util.Vector,java.util.StringTokenizer" %>
<%String UserID=(String)session.getAttribute("UserID");
String MemberType=(String)session.getAttribute("MemberType");
String RoomID=request.getParameter("RoomID");
String LocationName=request.getParameter("LocationName");
String RoomCharges=request.getParameter("RoomCharges");
String ResortID=request.getParameter("ResortID");

%>
<HTML>
<head>
		<LINK href="styles.css" type="text/css" rel="stylesheet">
		<script LANGUAGE="Javascript" SRC="Images/calender.js"></script>
		<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>
		<script LANGUAGE="Javascript" SRC="Images/AjaxCall.js"></script>

<script LANGUAGE="Javascript" SRC="">
		function ChkMandatoryField(F,T){
			var val= F.value;
			if(val==""){alert(T+" is mandatory");return false;}
			}
		function validate()

		{
				calcRent();
				var frm = document.forms(0);
			   if(ChkMandatoryField(frm.RoomID,'RoomID')==false) return false;
   			   if(ChkMandatoryField(frm.MemberType,'MemberType')==false) return false;
			   if(ChkMandatoryField(frm.From,'From')==false) return false;
			   if(ChkMandatoryField(frm.To,'To')==false) return false;

			  
		}
	function calcRent(){
			frm = document.forms(0);
			T= frm.MemberType.value;
			//alert(T);
			P = parseInt(frm.ActualCharge.value);
			//alert(P);
			if(T=="Silver"){
			D=15;
			
			}else if(T=="Gold"){
				
			D=20;
			}else if(T=="Platinum"){
				
			D=25;
			}
			Discount = P*(D/100); 
			Rent=P-Discount;
			//alert(Rent);
			frm.RoomRent.value =Rent;
			
		}
function Val()
	{
		var frm = document.forms(0);
		var To = frm.To;
		var From = frm.From;
		var rval = validatePeriod(From,To);
		if(rval==false) {
			alert("To date must exceed From Date"); 
			frm.To.value="";
			return rval;
		}
	}

</script>

<BODY  Class="SC">
<h3 align=center>Book Now</h3>

<FORM NAME="BookNow" OnSubmit="return validate()" ACTION="BookNow1.jsp" >
	
 <center>
 <TABLE width="35%">
		<TR class="row_title">
		  <TH align="center" colspan=3><FONT SIZE="4" COLOR="#AA2504" face='monotype corsiva'>BookNow</FONT></TH>
		</TR>
		<Input type=hidden name='ResortID' value='<%=ResortID%>' readonly>
		<Input type=hidden name='LocationName' value='<%=LocationName%>' readonly>
		<tr class=row_odd>
		  <TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>RoomID </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD colspan=2><Input type=text name='RoomID' value='<%=RoomID%>' readonly></TD></tr>
		  <tr class=row_even>
		  <TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>UserID </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD colspan=2><Input type=text name='UserID' value='<%=UserID%>' readonly></TD></tr>		 
		<tr class=row_odd>
		  <TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>Member Type  </FONT><FONT COLOR="red">*</FONT></TD>
		  <TD colspan=2>		  <Input type=text name='MemberType' value='<%=MemberType%>' readonly> 
</td></tr>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>Actual Charge  </FONT><FONT COLOR="red">*</FONT></TD>
		  
		<TD colspan=2><Input type=text name='ActualCharge' value='<%=RoomCharges%>' readonly>Rs</td></tr>
		<tr class=row_even>
		  <TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>RoomCharges  </FONT><FONT COLOR="red">*</FONT></TD>
		  
		<TD colspan=2><Input type=text name='RoomRent' value='' readonly ></td></tr>
		
		<TR class=row_even>
				<TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>From</Font><FONT COLOR="red">*</FONT></TH>
				<TD><Input type=text name='From' value='' readonly><img onkeypress="fnCalendar(this)" id="imgDate" style="CURSOR: hand" onClick="fnCalendar(this);" height="16" src="Images/CalDis.gif" width="16" border="0" name="imgDate" onMouseOver="fnEnableCalLookup(this)" onMouseOut="fnDisableCalLookup(this)" ></TD>
		</TR>
		<TR class=row_odd>
				<TD align="left"><FONT SIZE="2" COLOR="#AA2504" face='monotype corsiva'>To</Font><FONT COLOR="red">*</FONT></TH>
				<TD><Input type=text name='To' value='' readonly><img onkeypress="fnCalendar(this)" id="imgDate" style="CURSOR: hand" onClick="fnCalendar(this);Val()" height="16" src="Images/CalDis.gif" width="16" border="0" name="imgDate" onMouseOver="fnEnableCalLookup(this)" onMouseOut="fnDisableCalLookup(this)" ></TD>
		</TR>
		
		
  		  <tr class=row_even>
		<TH  colspan=2><INPUT TYPE="submit" value='BookNow'></TH>
		</TABLE>
</FORM>
</BODY>
</HEAD>
</HTML>