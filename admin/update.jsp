
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
           <%!
	Connection con;
	Statement stmt;
	
	%>
        <%
            Object r=request.getParameter("result");
            Object id=request.getParameter("tid");
                try
            {
                
              Class.forName("com.mysql.jdbc.Driver");
             
	con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
        stmt=con.createStatement();
        if(r.equals("true"))
        {
            
          int record=stmt.executeUpdate("update testimonial set status='enabled' where t_id='"+id+"'");
          out.print(record);
        }
        else
        {
           
          int record=stmt.executeUpdate("update testimonial set status='disabled' where t_id='"+id+"'");  
          out.print(record);
        }
            }
                catch(Exception e)
                {
                    out.print(e);
                }
            
            %>
 
    </body>
</html>
