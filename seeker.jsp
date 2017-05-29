
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
        <%--<c:choose>
<c:when test="${param.uid!=null}">--%>
                <div id="seeker">
                    <ul>
                            <li><a href="seeker.jsp?sub=php">php</a></li>
                            <li><a href="seeker.jsp?sub=java">java</a></li>
                            <li><a href="seeker.jsp?sub=dotnet">dotnet</a></li>
                            <li><a href="seeker.jsp?sub=android">android</a></li>
                        </ul>
                </div>

                <c:set var="t" value="${param.sub}"/>
                <c:if test="${t!=null}"> 
                    <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
                    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
                    <sql:query var="r" dataSource="${ds}">
                        select * from project where subject='${t}' and bidlastdate>'${dt}'
                        </sql:query>
                    <table border='1'>
                        <tr>
                            <td>bid for project</td>
                            <td>Date of project upload</td>
                            <td>Subject</td>
                            <td>Defination</td>
                            <td>max 20cost</td>
                            <td>max duration</td>
                            <td>last date of bid</td>
                        </tr>
                        <c:forEach var="x" items="${r.rows}">
                            <tr>
                                <td><a href="bid.jsp?uid=1&proid=${x.proid}">bid</a></td>
                                <td>${x.date}</td>
                                <td>${x.subject}</td>
                                <td>${x.defination}</td>
                                <td>${x.maxcost}</td>
                                <td>${x.maxdur}</td>
                                <td>${x.bidlastdate}</td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
                    <%-- </c:when>
                <c:otherwise>
                    <c:redirect url="login.jsp" ></c:redirect>     
                </c:otherwise>
</c:choose>--%>
    </body>
</html>
