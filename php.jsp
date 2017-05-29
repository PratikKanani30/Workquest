
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
	ResultSet rs,rs1;
	%>
        <%
             try
            {
                
              Class.forName("com.mysql.jdbc.Driver");
             
	con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
        stmt=con.createStatement();
      
        rs=stmt.executeQuery("select * from question");
        while(rs.next())
        {
           
        int s=rs.getInt(1);
        String  s1=rs.getString(3);
        String  s2=rs.getString(4);
        String  s3=rs.getString(5);
        String  s4=rs.getString(6);
        String  s5=rs.getString(7);
        
    
       
        %>
        <%=s%>
        <br/>
       
        <%=s1%>
        <br/>
         <input type="radio" id="r1" name="rg1" itemStateChanged="change(this,<%=s2%>)">  
        <%=s2%>
        <br/>
         <input type="radio" id="r2" name="rg1" itemStateChanged="change(this,<%=s3%>)">  
        <%=s3%>
        <br/>
         <input type="radio" id="r3" name="rg1" itemStateChanged="change(this,<%=s4%>)">  
        <%=s4%>
        <br/>
         <input type="radio" id="r4" name="rg1" itemStateChanged="change(this,<%=s5%>)">  
        <%=s5%>
        <br/>
        <%
        }
            }
             catch(Exception e)
             {
                 
             }
        %>
        <script>
             
             function change(x)
             {
              var ans;
              x.valueOf().toString();
                 if(rg1.equals("Next"))
			{
				
				try
				{

					ans=rs.getString(6);
					if(s_ans.equals(ans))
						score++;
					else
						score--;
					l10.setText(""+score);
					rs.next();
				}

				catch(Exception ex4)
				{
				}
			}
			

                  window.location="update.jsp?result="+status+"&tid="+y;
              
                      
                            }
         </script>
    </body>
</html>
