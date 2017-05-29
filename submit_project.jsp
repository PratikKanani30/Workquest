
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">
            
            function go()
            {
                //alert();
                var req;
                
                if(window.XMLHttpRequest)
                    req=new XMLHttpRequest();
                    
                else
                    req=new ActiveXObject("Microsft.XMLHTTP");
                 
                var fn=photo.value;
                var nm=fn;
                var n=fn.indexOf('fakepath');
                
                if(n>0)
                    nm=fn.substr(n+9,fn.length-n-8);
                
                var suid=document.getElementById('suid');
                var puid=document.getElementById('puid');
                var proid=document.getElementById('proid');
                //alert('next1.jsp?suid='+suid.value+'&puid='+puid.value+'&proid='+proid.value+'&zipfile='+nm);
                req.open("GET", "next1.jsp?suid="+suid.value+"&puid="+puid.value+"&proid="+proid.value+"&zipfile="+nm, false);
                req.send(null);
                
                
           // fl.value=photo.value;
            //frm1.submit();
                frm2.submit();
                //alert('last');
            }

        </script>
        
        
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>

        <c:choose>
            <c:when test="${sessionScope.uid!=null}">
                <c:choose>
                    <c:when test="${sessionScope.usertype==2}">
                        <c:set var="uid" value="${sessionScope.uid}" />  
                        <c:out value="uid: ${uid}"/>
                        <c:out value="user type: ${usertype}"/>
                    </c:when>
                    <c:otherwise>
                        <c:redirect url="login.jsp"/>
                    </c:otherwise>
                </c:choose>
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>
        </c:choose>
        
        <c:if test="${param.ext!=null}">
            <c:choose>
                <c:when test="${param.ext=='Invalid Format'}">
                    <script>
                        alert('Invalid File formate..Try again');
                    </script>
                </c:when>
                <c:otherwise>
                    <script>
                        alert('successfully uploaded...');
                    </script>
                </c:otherwise>
            </c:choose>
        </c:if>
        
        
        <sql:query dataSource="${ds}" var="r1">
            select p.uid,u.name,p.proid,s.subname,b.dur,b.cost,a.dateofbidapprove from project p,approvedbid a,users u,bid b,subject s where b.bid=a.bid and b.proid=p.proid and b.uid=${uid} and u.uid=p.uid and s.sub_id=p.subject
        </sql:query>
        <table border="1">
            <tr>
                <td>uid</td>
                <td>name</td>
                <td>proid</td>
                <td>subject</td>
                <td>dur(months)</td>
                <td>cost</td>
                <td>date of project  assigned</td>
                <td>date of completion</td>
                <td>remaining days</td>
                <td>upload zip file</td>
            </tr>

            <c:forEach var="x1" items="${r1.rows}">
                <tr>
                <td>${x1.uid}</td>
                <td>${x1.name}</td>
                <td>${x1.proid}</td>
                <td>${x1.subname}</td>
                <td>${x1.dur}</td>
                <td>${x1.cost}</td>
                <td>${x1.dateofbidapprove}</td>

                <c:set var="dur" value="${x1.dur}" scope="page"/>
                <c:set var="approve_date" value="${x1.dateofbidapprove}"/>
                <c:set var="year" value="${fn:substring(approve_date,0,4)}" scope="page"/>
                <c:set var="month" value="${fn:substring(approve_date, 5, 7)}" scope="page"/>
                <c:set var="date" value="${fn:substring(approve_date, 8, 10)}" scope="page"/>

                <%
                    int year = Integer.parseInt(pageContext.getAttribute("year").toString());
                    int month = Integer.parseInt(pageContext.getAttribute("month").toString());
                    int date = Integer.parseInt(pageContext.getAttribute("date").toString());
                    int dur = Integer.parseInt(pageContext.getAttribute("dur").toString());
                    java.util.GregorianCalendar d = new java.util.GregorianCalendar(year, month, date);

                 //java.util.Date u1=d.getTime();
                    //out.print("<br><br>dur:"+dur+"<br>");
                    dur = dur - 1;
                    d.add(d.MONTH, dur);

                    // out.print(d.get(java.util.Calendar.DATE));
                    java.util.Date u = d.getTime();
                    // out.print(u+"<br><br>");
                    java.text.DateFormat dt = new SimpleDateFormat("y-M-d");
                    String ft = dt.format(u);

                //out.print("regi dt: "+year+"-"+month+"-"+date+"<br/>");
                    //out.print("exp dt:"+ft+"<br>");
                    //out.print("today: "+ new java.util.Date().toString());
                    d.get(GregorianCalendar.DATE);

                    int sec = 1000 * 60 * 60 * 24;
                    long today_sec = new java.util.Date().getTime();
                    long exp_sec = u.getTime();
                    long diff = exp_sec - today_sec;
                    long dd = diff / sec;
                //out.print("<br>today sec:"+today_sec);
                    //out.print("<br>exp sec:"+exp_sec);
                    //out.print("<br>diff:"+diff);
                    //out.print("<br>dd:"+dd+"<br><br>");


                %>

                <c:set var="submition_date" value="<%=ft%>"/>
                <c:set var="remaingday" value="<%=dd%>"/>

                <td>${submition_date}</td>
                <td>${remaingday}</td>
                
                <td>
                    <table align="center">
                        <tr>
                            <td>
                                <form align="center">
                                    <input type="hidden" name="suid" id="suid" value="${uid}" />
                                    <input type="hidden" name="puid" id="puid" value="${x1.uid}"/>
                                    <input type="hidden" name="proid" id="proid" value="${x1.proid}"/>
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <form enctype="multipart/form-data" method="post" id="frm2" action="upload1.jsp">
                                    Zip<input type="file" name="photo" id="photo">
                                </form>
                            </td>
                        </tr>
                        <tr>
                            <td><input type="button" value="submit" onclick="go()"/></td>
                        </tr>
                    </table>
                </td>
                </tr>
            </c:forEach>  
        </table>       
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
