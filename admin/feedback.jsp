

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
	ResultSet rs,rs1;
	%>
        <%
             try
            {
                
              Class.forName("com.mysql.jdbc.Driver");
             
	con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
        stmt=con.createStatement();
      
        rs=stmt.executeQuery("select * from testimonial");
        while(rs.next())
        {
           
        String s=rs.getString("feedback");
        int id=rs.getInt("t_id");
        out.print(s);
        %>
     
      <input type="checkbox" id="ch1" name="ch1" onchange="change(this,<%=id%>)">  <br>
            
         <%
        }
            }
        catch(Exception e)
                {
                
                }
         %>
         <script>
             
             function change(x,y)
             {
              var status;
                  if(x.checked===true)
                  {
                          
                    status=true;
                  
               }
               else
               {
                     status=false;         
                   
                  }
                  window.location="update.jsp?result="+status+"&tid="+y;
              
                      
                            }
         </script>
    </body>
</html>
