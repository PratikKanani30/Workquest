
<%@page import="java.text.SimpleDateFormat"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <c:choose>
            <c:when test="${sessionScope.uid!=null}">
                <c:set var="uid" value="${sessionScope.uid}" />
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>
        </c:choose>
        
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>   
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        
        <sql:query dataSource="${ds}" var="s">
            select u.uid,u.name,u.usertype,u.reg_date,p.plan_id,p.plan_name,p.max_bid_pro,p.dur,p.cost,pd.plan_date from users u,plan p,plan_detail pd where u.uid=${uid} and u.plan=pd.plan_detail_id and pd.plan_id=p.plan_id
        </sql:query>
        <c:forEach var="x" items="${s.rows}">
           <c:if test="${uid!=null}">
               <div style="padding: 30px; padding-left: 200px" height:400px>
               <table>
                    <tr>
                        <td>plan name</td>
                        <td>${x.plan_name}</td>
                    </tr>
                    <tr>
                        <c:choose>
                            <c:when test="${x.usertype==1}">
                                <td>Max allowed Project</td>
                                <td>${x.max_bid_pro}</td>
                            </c:when>
                            <c:otherwise>
                                <td>Max allowed bid</td>
                                <td>${x.max_bid_pro}</td>
                            </c:otherwise>    
                        </c:choose>
                    </tr>
                    <tr>
                        <td>Duration</td>
                        <td>${x.dur} months</td>
                    </tr>
               </table>
               </div>
               <br/><br/>
               <c:set var="dur" value="${x.dur}"/>
               <c:set var="reg_date" value="${x.plan_date}"/>
                             
               
               <c:set var="year" value="${fn:substring(reg_date,0,4)}"/>
               <c:set var="month" value="${fn:substring(reg_date, 5, 7)}"/>
               <c:set var="date" value="${fn:substring(reg_date, 8, 10)}"/>
               
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
               <c:set var="remaining_day" value="<%=dd%>"/>
               
               <br/>registration date :${reg_date}
               <br/>plan expiry date: ${exp_dt}
               <br/>today: ${dt}
               <br>remaining days:${remaining_day} 
               
                        
            </c:if> 
        </c:forEach>
                   
                   
        <c:if test="${remaining_day<=3}">
            <div style="padding: 30px; padding-left: 200px" height:400px>
            
                <form>
                <table>
                    <tr>
                        <sql:query dataSource="${ds}" var="s1">
                            select * from plan
                        </sql:query>
                        <td>Plan</td>
                        <td style="width:400px;float:right ">
                            <select name="plan" onchange="detail()" onclick="detail()">
                                <c:forEach var="x1" items="${s1.rows}">
                                    <option value="${x1.plan_id}">${x1.plan_name}</option>
                                    <input type="hidden" name="plan_nm" id="plan_nm" value="${x1.plan_name}"/>
                                    <input type="hidden" name="max_bid_pro" id="max_bid_pro" value="${x1.max_bid_pro}"/>
                                    <input type="hidden" name="dur" id="dur" value="${x1.dur}"/>
                                    <input type="hidden" name="cost" id="cost" value="${x1.cost}"/>
                                </c:forEach>
                            </select>
                            <div id="display_detail" style="float:right;"></div>
                        </td>

                            <script>
                                function detail()
                                {
                                    var plan_nm=document.getElementById('plan_nm');
                                    var max_bid_pro=document.getElementById('max_bid_pro');
                                    var dur=document.getElementById('dur');
                                    var cost=document.getElementById('cost');
                                    var division=document.getElementById('display_detail');
                                    division.innerHTML='plan name:'+plan_nm.value+'   max bid/project:'+max_bid_pro.value+'  dur:'+dur.value+' month  cost:'+cost.value;
                                }
                            </script>
                    </tr>
                    <tr>
                        <td><input type="submit" value="renew plan" name="renew_plan"/></td>
                    </tr>
                </table>
                </form>
            </div>
                <c:if test="${param.renew_plan!=null}">
                    
                    <c:set var="plan" value="${param.plan}"/>
                    
                    <%-- change status of older plan   --%>
                    <sql:query dataSource="${ds}" var="s2">
                        select plan_detail_id from plan_detail where uid=${uid} and status=1
                    </sql:query>
                        <c:forEach var="x2" items="${s2.rows}">
                            <c:set var="plan_detail_id" value="${x2.plan_detail_id}"/>
                        </c:forEach>
                    <sql:update dataSource="${ds}" var="u">
                        update plan_detail(status) values(0) where plan_detail_id=${plan_detail_id}
                    </sql:update>     
                    
                    <%-- add new plan --%>    
                    <sql:update dataSource="${ds}" var="u1">
                        insert into plan_detail(uid,plan_id,plan_date,status) values(${uid},${plan},'${dt}',1)
                    </sql:update>    

                    <sql:query dataSource="${ds}" var="s3">
                        select plan_detail_id from plan_detail where uid=${uid} and status=1
                    </sql:query>
                        <c:forEach var="x3" items="${s3.rows}">
                            <c:set var="plan_detail_id" value="${x3.plan_detail_id}"/>
                        </c:forEach>    

                    <sql:update dataSource="${ds}" var="u1">
                        update users set plan=${plan_detail_id} and total_bid=0 where uid=${uid}
                    </sql:update>   
                    
                </c:if>
            </div>    
        </c:if>  
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
