
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="login">
        <fieldset>
           <legend>Fill Up to get Registered</legend>
        
           <form method="post">
            <table>
                <tr>
                    <td>name:</td>
                    <td><input type="text" name="name" placeholder="Enter your email" required></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td> <input type="password" name="password" placeholder="Enter your password" required></td>
                </tr>
                <tr>
                    <td  colspan="2" align="center"><input type="submit" value="Login"></td>
                </tr>
            </table>
           </form>
        </fieldset>
           
      </div>
        
        <%!
            Connection con;
            Statement st;  
            ResultSet rs;
        %>
        
        <%
            Object name=request.getParameter("name");
            if(name!=null)
            {
                Object password=request.getParameter("password");
                Class.forName("com.mysql.jdbc.Driver");
	        con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
	        st=con.createStatement();
                rs=st.executeQuery("select * from user where email='"+name+"' and password='"+password+"'");
 
                if(rs.next())
                {   
                    String a=rs.getString(1);
                    session.setAttribute("user",name);
                    response.sendRedirect("provider_profile.jsp");
                    
                }
                
                else
                {
                    out.println("Login Failed...Try again.");
                }
               
            }
            
          
        %>
        
      
    </body>
</html>
r