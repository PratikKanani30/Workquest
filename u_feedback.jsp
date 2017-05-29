

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <body>
        
        
         <%!
	Connection con;
	Statement stmt;
	ResultSet rs;
	%>
        <%
          
            Object u=session.getAttribute("user");
            Object f=request.getParameter("txt");
           
            if(u==null)
            {
                Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
		stmt=con.createStatement();
               rs=stmt.executeQuery("select feedback from testimonial where status='enabled'"); 
              while(rs.next())
            {
            String s=rs.getString("feedback");
            out.print(s);
            out.print("<br>");
            }
            }
            else
            {
                %>
                <form method="get">
               <textarea id="txt" name="txt"></textarea>
               <input type="submit" id="btn" name="btn" value="submit"/>
        </form>
               
               <%
                try
                {
                Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
		stmt=con.createStatement();
                out.print(u);
                rs=stmt.executeQuery("select uid from user where email='"+u+"'");
                rs.next();
                int c=rs.getInt("uid");
                int c1=stmt.executeUpdate("insert into testimonial(feedback,uid) Values('"+f+"','"+c+"')");
                out.print("inserted");
                }
                catch(Exception e)
                {
                    out.print(e);
                }
                
            }
        %>  
   
        
    </body>
</html>
