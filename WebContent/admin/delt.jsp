<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/feedback","root","ankit");
	 PreparedStatement ps=con.prepareStatement("DELETE FROM two_wheel WHERE phoneno= +phoneno LIMIT 1");
			 int i = ps.executeUpdate();
			 if(i > 0) {

				out.print("Record Deleted Successfully");

				}
			else {
				out.println("There is a problem in Deleting Record."); 
				out.print("Check Manually in your Database");
			    }
				%>
				<table>
				<tr>
				
				<tr><a href="/home/admin/two_wheel_view.jsp">view</a></tr>
				</tr>
				</table>
    

</body>
</html>