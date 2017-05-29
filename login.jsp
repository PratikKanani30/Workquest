
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div class="login">
        <fieldset>
           <legend>Fill Up to get Registered</legend>
        
           <form method="post">
            <table align="center">
           <!-- <table align="center" width=40% width="100%" cellspacing="2" cellpadding="2"> -->
                <tr>
                    <td>name:</td>
                    <td width="75%" height="40%"><input type="text" name="name" placeholder="Enter your email" required></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td width="70%" height="40%"> <input type="password" name="password" placeholder="Enter your password" required></td>
                </tr>
                <tr>
                    <td width="75%" colspan="2" align="center"><input type="submit" name="login" value="Login"></td>
                </tr>
            </table>
           </form>
        </fieldset>
           
      </div>
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        <c:set var="name" value="${param.name}"/>
        <c:set var="password" value="${param.password}"/>
        
        <c:choose>
            <c:when test="${param.login!=null}">
                <c:choose>
                    <c:when test="${name!=null}">
                        
                        <sql:query dataSource="${ds}" var="s">
                            select count(*) 'as' from users where email='${name}' and password='${password}'
                        </sql:query>
                        <c:forEach var="x" items="${s.rows}">
                            <c:choose>
                                <c:when test="${x.as>0}">
                                    <sql:query dataSource="${ds}" var="r">
                                        select * from users where email='${name}' and password='${password}'
                                    </sql:query>
                                    <c:forEach var="y" items="${r.rows}">
                                        <c:set scope="session" var="uid" value="${y.uid}"/>
                                        <c:set scope="session" var="usertype" value="${y.usertype}"/>
                                        <sql:update dataSource="${ds}" var="t">
                                            update users set status='active' where uid=${y.uid}
                                        </sql:update>
                                            
                                        <c:choose>
                                            <c:when test="${y.usertype==1}">
                                                <c:redirect url="loggedin_provider.jsp"/>
                                            </c:when>
                                            <c:otherwise>
                                                <c:redirect url="loggedin_seeker.jsp"/>
                                            </c:otherwise>
                                        </c:choose> 
                                    </c:forEach>    
                                </c:when>
                                <c:otherwise>
                                    Login Failed...Try again.
                                </c:otherwise>
                            </c:choose>
                        </c:forEach>    
                    </c:when>
                    <c:otherwise>
                         Login Failed...Try again.
                    </c:otherwise>
                </c:choose>
            </c:when>
        </c:choose>
                    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
