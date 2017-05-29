<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
   <c:if test="${sessionScope.users==null}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
     <sql:setDataSource driver="com.mysql.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/workq" var="ds"></sql:setDataSource>
     <%--<sql:update dataSource="${ds}" var="u" sql="update user set image='${param.photo}',name='${param.name}',address='${param.address}',city='${param.city}',state='${param.state}',country='${param.country}',pincode='${param.pincode}',password='${param.password}',confirm password='${param.confirm_password}',usertype='${param.usertype}',tagline='${param.tagline}', where email='${sessionScope.users}'"></sql:update>--%>
 <%-- <c:redirect url="provider_profile.jsp"></c:redirect>--%>
<sql:update dataSource="${ds}" var="u" sql="update users set image='${param.image}',name='${param.name}',address='${param.address}' where email='${sessionScope.user}'">
    
</sql:update>
 <c:out value="jkhkjh"></c:out>
</body>
</html>