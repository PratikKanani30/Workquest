
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
function editRecord(id){
    var f=document.form;
    f.method="post";
    f.action='edit.jsp?id='+id;
    f.submit();
}
</script>
    </head>
    <body>
       


<br><br>
<form method="post" name="form">
<table border="1">
<tr><th>Name</th><th>Address</th><th>Contact No</th><th>Email</th></tr>
<%
            Connection con;
            Statement st; 


int sumcount=0;
try{
            Class.forName("com.mysql.jdbc.Driver");
	  con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
	  String query = "select * from user where ";
            st = con.createStatement();
            ResultSet rs = st.executeQuery(query);
%>      




<%
while(rs.next()){
%>
<tr><td><%=rs.getString(2)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getString(4)%></td>
<td><%=rs.getString(5)%></td>
<td><input type="button" name="edit" value="Edit" style="background-color:green;font-weight:bold;color:white;" onclick="editRecord(<%=rs.getString(1)%>);" ></td>
</tr>
<%
}
%>
<%
}
catch(Exception e){
e.printStackTrace();
}
%>
</table>
</form>
</body>
</html>
    </body>
</html>
