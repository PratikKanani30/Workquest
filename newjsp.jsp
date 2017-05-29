
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/workq" var="ds"/>
        <c:if test="${param.txtnm!=null}">
        <sql:query dataSource="{$ds}" var="r">
            select * from user where name=${param.txtnm}
        </sql:query>
        <c:forEach items="${r.rows}" var="t">
            
            <c:out value="${t.name}"/>
        </c:forEach>
        </c:if>
        <form>
            <table><tr>
                <td>name</td>
                <td><input type="text" name="txtnm" id="txtnm"></td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="password" name="txtpwd" id="txtpwd"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="submit" name="txtbtn" id="txtbtn">
            </tr>
            
            </table>
        </form>
    </body>
</html>
-