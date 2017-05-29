
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.GregorianCalendar"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>WorkQuest - Admin</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.css"/>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <style type="text/css">body{padding-top:60px;}</style>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        
        <link href="css/table.css" rel="stylesheet">
        
        
        <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>   
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        
        <sql:query dataSource="${ds}" var="r1" sql="select u.uid,u.name,u.reg_date,p.plan_id,p.dur from users u,plan p where p.plan_id=u.plan"></sql:query>
        
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner"><div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span></a>
                    <a class="brand" href="index.html">
                        <img src="assets/img/logo-small.png" alt=""> Workquest Admin</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav"><li class="active">
                                <a href="index.jsp"><i class="fa-home"></i>Home</a>
                            </li>
                            <li><a href="test.jsp"><i class="icon-signal"></i>Charts</a></li>
                            <li><a href="plan.jsp"><i class="icon-folder-open icon-white"></i>add plan</a></li> 
                            <li><a href="add_sub.jsp"><i class="icon-calendar icon-white"></i>Add Subject</a></li> 
                            <li><a href="expiry_plan.jsp"><i class="icon-bookmark icon-white"></i>expiry plan</a></li>
                            
                            
                                    <li><a href="user.html"><i class="icon-user icon-white"></i>User</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="span3">
                    <div class="dash-unit">
                        <img src="images/team-member-1.jpg" alt="Brian Smith">
                        <h1>BRIAN SMITH</h1>
                        <h4>Gujarat, INDIA.</h4>
                        <h6>Joined April 19, 2009</h6>
                        <p><i class="icon-envelope icon-white"></i>
                            <a href="#" class="tooltip-test" data-placement="top" title="New Mails">
                                <span class="badge badge-one">6</span></a> - <i class="icon-comment icon-white"></i>
                                <a href="#" class="tooltip-test" data-placement="top" title="New Messages">
                                    <span class="badge badge-one">2</span></a></p>
                    </div>
                </div>
        <div class="span2">
        <table border="1">
            <tr>
                <td>uid</td>
                <td>name</td>
                <td>plan</td>
                <td>duration(months)</td>
                <td>registration dt</td>
                <td>expiry dt</td>
                <td>remaining day</td>
            </tr>
            <c:forEach var="x1" items="${r1.rows}">
                
               <c:set var="dur" value="${x1.dur}" scope="page"/>
               <c:set var="reg_date" value="${x1.reg_date}"/>
                
               <c:set var="year" value="${fn:substring(reg_date,0,4)}" scope="page"/>
               <c:set var="month" value="${fn:substring(reg_date, 5, 7)}" scope="page"/>
               <c:set var="date" value="${fn:substring(reg_date, 8, 10)}" scope="page"/>
               
               <% 
                int year=Integer.parseInt(pageContext.getAttribute("year").toString());
                int month=Integer.parseInt(pageContext.getAttribute("month").toString());
                int date=Integer.parseInt(pageContext.getAttribute("date").toString());
                int dur=Integer.parseInt(pageContext.getAttribute("dur").toString());
                java.util.GregorianCalendar d=new java.util.GregorianCalendar(year, month, date);
                
                //java.util.Date u1=d.getTime();
                //out.print("<br><br>dur:"+dur+"<br>");
                dur=dur-1;
                d.add(d.MONTH,dur);
                
               // out.print(d.get(java.util.Calendar.DATE));
                java.util.Date u=d.getTime();
               // out.print(u+"<br><br>");
                java.text.DateFormat dt=new SimpleDateFormat("y-M-d");
                String ft= dt.format(u);
                
               //out.print("regi dt: "+year+"-"+month+"-"+date+"<br/>");
               //out.print("exp dt:"+ft+"<br>");
               //out.print("today: "+ new java.util.Date().toString());
                // d.get(GregorianCalendar.DATE);
                 
                int sec=1000*60*60*24;
                long today_sec=new java.util.Date().getTime();
                long exp_sec=u.getTime();
                long diff=exp_sec-today_sec;
                long dd=diff/sec;
                //out.print("<br>today sec:"+today_sec);
                //out.print("<br>exp sec:"+exp_sec);
                //out.print("<br>diff:"+diff);
                //out.print("<br>dd:"+dd+"<br><br>");
                
                
               %>
                         
               <c:set var="exp_dt" value="<%=ft%>"/>
               <c:set var="diff" value="<%=dd%>"/>
               
              
               
               
                <tr>
                    <c:if test="${diff<4}">
                    <form>
                        
                        <input type="hidden" name="user_id" id="user_id" value="${x1.uid}"/>
                        <input type="hidden" name="remaining_day" id="remaining_day" value="${diff}"/>
                        <td>${x1.uid}</td>
                        <td>${x1.name}</td>
                        <td>${x1.plan_id}</td>
                        <td>${x1.dur} </td>
                        <td>${x1.reg_date}</td>
                        <td>${exp_dt}</td>
                        <td>${diff}</td>
                        <td><input type="submit" value="alert" name="alert_user" onclick="alert_user()"/></td>
                        
                    </form>
                    </c:if>
                        <c:if test="${param.alert_user!=null}">
                            <sql:update dataSource="${ds}" var="r2" sql="insert into alert_user(uid,remaining_day,alert_date) values (${param.user_id},${param.remaining_day},'${dt}')"></sql:update>
                            
                        </c:if>    
                </tr>
               
                    
            </c:forEach>    
        </table>
        
        
        </div>   
        
    </body>
</html>
