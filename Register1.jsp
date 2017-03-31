<%@ page language="java" %>
<%@ page session="true" %>
<%@ page import="java.sql.*,java.io.*,com.eResorts.MyFunctions"%>

<HEAD>


	<script LANGUAGE="Javascript" SRC="Images/validate.js"></script>


	<LINK href="styles.css" type="text/css" rel="stylesheet">

</HEAD>
<BODY class=Grad>
<h3 align=center>User Registration</h3>

<%

	Connection con=null;
	ResultSet rs=null;
	Statement stmt=null;
	String UserID = request.getParameter("UserID");	
	session.setAttribute("UserID",UserID);
	String Password = request.getParameter("upassword");	
	int auth = 1;	
    String RegID = "";	
	MyFunctions MF = new MyFunctions();
	RegID = MF.genNextID("userprofile","RegID","M00");
    String FirstName = request.getParameter("FirstName");	
	String LastName = request.getParameter("LastName");	
	String Age = request.getParameter("Age");	
	String EmailAddress = request.getParameter("EmailAddress");	
	String Address = request.getParameter("Address");	
	String ContactNumber = request.getParameter("ContactNumber");	
	String Occupation = request.getParameter("Occupation");	
	String MemberType = request.getParameter("MemberType");	
	String AmountDeposited = request.getParameter("AmountDeposited");	
	session.setAttribute("MemberType",MemberType);

	try{
			
			con = com.eResorts.ConnectionPool.getConnection();
			stmt =  con.createStatement();
			con.setAutoCommit(false);
			String Query = "Insert into Login values('"+UserID+"','"+Password+"',"+auth+")";
			String Query1 = "Insert into userprofile values('"+RegID+"','"+UserID+"','"+FirstName+"','"+LastName+"','"+Age+"','"+EmailAddress+"','"+Address+"','"+ContactNumber+"','"+Occupation+"','"+MemberType+"','"+AmountDeposited+"')";
			System.out.println("-->"+Query);
			System.out.println("-->"+Query1);
			stmt.addBatch(Query);
			stmt.addBatch(Query1);
			
			int[] result = stmt.executeBatch();
			boolean successFlag = false;
			for(int i=0;i<result.length;i++){
				if(result[i]<1)
				{
					System.out.println("result[i]-->"+result[i]);
					successFlag = false;
					break;
				}else{
					successFlag = true;
				}
			}
			if( successFlag == true)
			{
				con.commit();
				
				%><h6 align=center>Registered sucessfully</h6>
				 
				<jsp:forward page="GuestMenu1.jsp"/>
				<%
			}
			else{
				con.rollback();
				%><h6 align=center>Error in updating..please try again</h6><% 
			}
			
			stmt.close();
			con.close();
		}catch(Exception e){
			stmt.close();
			con.close();
			%><%=e%><%
		}
	
%>
</BODY>

