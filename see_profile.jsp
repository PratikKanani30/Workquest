
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>profile</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%--<c:set var="uid" value="${param.uid}"/>--%>
        <c:set var="uid" value="1"/>
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        <sql:query var="r" dataSource="${ds}">
            <%--select * from users where uid=${param.uid}--%>
            select * from users where uid=${uid}
        </sql:query>
        <sql:query var="s" dataSource="${ds}">
            <%--select * from test_award where uid=${param.uid}--%>
            select * from test_award where uid=${uid}
        </sql:query>    
        <c:forEach var="x" items="${r.rows}">
            <a href="bid.jsp?uid=${uid}&proid=${param.proid}" >back</a>
            <table border='2'align="center" color="blue" style="color: #00bbf3">
                
                <tr>
                    <td colspan="2">User Profile</td>
                </tr>
                
                <tr>
                    <td>Name</td>
                    <td><c:out value="${x.name}" /></td>
                </tr>
                <tr>
                    <td colspan="2" ><img src="${x.photo}" height="100px" width="100px" alt="no photo" /></td>
                </tr>
                <tr>
                    <td>address</td>
                    <td><c:out value="${x.address}" /></td>
                </tr>
                <tr>
                    <td>Phone No</td>
                    <td>${x.phone}</td>
                </tr>
                <c:forEach var="y" items="${s.rows}">
                   <tr>
                        <td>Exam ${y.testid}</td>
                        <td><c:out value="${y.award}" /></td>
                    </tr> 
                </c:forEach>
            </table>
        </c:forEach>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
