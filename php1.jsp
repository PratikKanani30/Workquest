
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <script lang="javascript">
            
            function refreshpage()
            {
                 window.location="php1.jsp";
                
            }
            setInteval("refreshpage",2);
        </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>

<% 
String answer=" ";
 Object u=session.getAttribute("user");
            out.print(u);

Connection conn = null;
Statement st = null;
ResultSet rs = null;
String qids;

Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
 rs = null;
 st = conn.createStatement();
//for(i=1;i<=2;i++) 
String id=request.getParameter("id");
System.out.println("id:"+id);

int i=1,n;
String s,g;
int count;
if(request.getParameter("count")==null)
{
    count=0;
    qids="0";
    n=0;
}
else
{
    count=Integer.parseInt(request.getParameter("count")+"");
    n=Integer.parseInt(request.getParameter("n")+"");
qids=request.getParameter("qids")+"";
 g=request.getParameter("a");
 
  answer=request.getParameter("ans").toString();
        
     //  n++;
if(g.equals(answer))
{
    count++;
    out.println("Correct");
}
else
{
    count--;
    out.println("false");
}

}   

try {
    
    if(n>=10)
    {
           
            out.println("Score="+count+u);
            
            //if(u!=null)
           
                rs=st.executeQuery("select uid from user where email='"+u+"'");
            rs.next();
            int uid=rs.getInt("uid");
             out.print(uid);
           int a=st.executeUpdate("insert into result(uid,score) values("+uid+","+count+")");
            out.print("insert into result(uid,score) values("+uid+","+count+")");
            
                if(count >=8)
                {
                     out.print("A+ grade");
                }       
                else if(count >=6 && count <8)
                {
                    out.print("A grade");
                }
                else if(count >=4 && count <6)
                {
                    out.print("b grade");
                }

    }
    else
    {
         n++;
    
/*Class.forName("com.mysql.jdbc.Driver");
 conn = DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
 rs = null;
 st = conn.createStatement();*/
//for(i=1;i<=2;i++)
// {
rs = st.executeQuery("select * from question where qid not in ("+qids+") order by rand()" );
//out.print("select * from question where qid not in ("+qids+") order by rand() limit 10");

if(rs.next()) {
    int qid=rs.getInt("qid");
    String q=rs.getString("que");
    String ans1=rs.getString("ans1");
    String ans2=rs.getString("ans2");
    String ans3=rs.getString("ans3");
    String ans4=rs.getString("ans4");
    String ans=rs.getString("ans");
    qids=qids+","+qid;

    
%>

<br>
<br/>
<center>
    <div style="margin-bottom: 50px;">
        <table border="1" width="500px" bgcolor="red" cellspacing="0" cellpadding="0" style="background-color: #afd9ee">
  <tr>
    <td width="100%">
<form name="form1">
 <h2 align="center"><font color="red">Online Quize </font></h2>
<b>Select Correct Answer</b>
        <table border="0" width="500px" cellspacing="2" cellpadding="4">
 <tr>
<td width="50%"> Question:</td>

<input type="qid" name="qid" value="<%=qid%>"/>
<tr>
<td><%= q %></td></tr>
<tr>
<td>
1: <input type="radio" name="a" value= "<%=ans1%>" /></td>
    <td><%= ans1 %></td></tr> 
<tr>
<td>
2: <input type="radio" name="a" value="<%=ans2%>" /></td>
<td><%= ans2%></td></tr>
<tr>
<td>
3: <input type="radio" name="a" value="<%=ans3%>" /></td>
<td><%=ans3 %> </td></tr>
<tr>
<td>
4: <input type="radio" name="a" value="<%=ans4%>" /> </td>
<td> <%=ans4 %> </td></tr>
<tr>
<td>
<center>
    <input type="hidden" name="ans" id="ans" value="<%=ans%>"/>
    <input type="hidden" name="count" id="count" value="<%=count%>"/>
        <input type="hidden" name="n" id="n" value="<%=n%>"/>
    <input type="hidden" name="qids" id="qids" value="<%=qids%>"/>
   <input type="submit" value="Submit" name="submit"></center></td></tr>
</table>
   
   
</form>
 </td>
  </tr>
</table>
    </div>
</center>
    <jsp:include page="footer.jsp"></jsp:include>
</body>

<%
}
}
}


// }
        catch (Exception ex)
        {
            ex.printStackTrace();
%>
<%
} 

        finally {
if (rs != null) rs.close();
if (st != null) st.close();
if (conn != null) conn.close();
}


   //  out.print(n);     


    





%>


</html>




