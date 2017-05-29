
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>seeker</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
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
        
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        <div id="seeker" style="height: 200px">
                    <sql:query var="s" dataSource="${ds}" sql="select * from subject"></sql:query>
                    <ul>
                        
                        <c:forEach var="y" items="${s.rows}">
                            <li style="display: inline; padding: 20px"><a href="project_bid.jsp?sub=${y.sub_id}">${y.subname}</a></li>
                        </c:forEach>
                    </ul>
                </div>

                <c:set var="t" value="${param.sub}"/>
                <c:if test="${t!=null}"> 
                    
                    <sql:query var="r" dataSource="${ds}">
                        select p.proid,p.date,s.subname,p.maxcost,p.maxdur,p.bidlastdate from project p,subject s where p.bidlastdate>'${dt}' and s.sub_id='${t}'  
                        </sql:query>
                        <table border='1' align="center" style="height: 100px">
                        <tr>
                            <td>bid for project</td>
                            <td>Date of project upload</td>
                            <td>Subject</td>
                            <td>Defination</td>
                            <td>max cost</td>
                            <td>max duration</td>
                            <td>last date of bid</td>
                        </tr>
                        <c:forEach var="x" items="${r.rows}">
                            <tr>
                                <td><a href="bid.jsp?proid=${x.proid}">bid</a></td>
                                <td>${x.date}</td>
                                <td>${x.subname}</td>
                                <td>${x.defination}</td>
                                <td>${x.maxcost}</td>
                                <td>${x.maxdur}</td>
                                <td>${x.bidlastdate}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
                        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
