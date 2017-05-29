
<%@page  import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.util.*" import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%!
	Connection con;
	Statement stmt,stmt1;
	ResultSet rs;
         Random r;
	%>
     
          <%
           r=new Random();
            int code=r.nextInt(9000);
            out.print(code);
            Object em=request.getParameter("email");
          
            try
            {
                   Object v=request.getParameter("vcode");
                   if(v!=null)
                   {
               Object uc=request.getParameter("usercode");
               Object e=request.getParameter("email");
               
            
           // out.print(v);
            
            if(v.equals(uc))
            {
              
               Class.forName("com.mysql.jdbc.Driver");
        
	con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
        stmt=con.createStatement();
     
        int q=stmt.executeUpdate("UPDATE user SET activation_status='active' where email='"+e+"'");
              
                  out.println("new code");
                  
              
              
            }
            
             }
                   else
                   {
                       out.println("verification code does not match");
                   }
            }
            catch(Exception e)
            {
             out.print(e);   
            }
            %>
            <form method="post">
                <tr>
                    <td>Verification code</td>
                    <td><input type="text" name="usercode" id="veri">
                        <input type="hidden" value="<%=code%>" name="vcode">
                        <input type="hidden" value="<%=em%>" name="useremail">
                        
                    </td>
                    <td>
                        <input type="submit" value="verify">
                    </td>
                </tr>
            </form>
       
    
    
   
</html>
