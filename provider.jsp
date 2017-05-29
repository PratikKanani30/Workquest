
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>provider</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <%--  <c:choose>
<c:when test="${param.uid!=null}">--%>
                <div id="upload_def">
                    <form>
                        <table align="center">
                            <tr>
                                <td>Subject</td>
                                <td>
                                    <select id="sub" name="sub">
                                        <option>php</option>
                                        <option>java</option>
                                        <option>dotnet</option>
                                        <option>android</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td>Defination</td> 
                                <td><textarea id="def" name="def" height="20"></textarea></td>
                            </tr>
                            <tr>
                                <td>Max Cost</td> 
                                <td><input type="text" id="cost" name="cost"></td>
                            </tr>
                            <tr>
                                <td>Max Duration</td> 
                                <td><input type="text" id="dur" name="dur"></td>
                            </tr>
                            <tr>
                                <td>Bid last date</td> 
                                <td><input type="text" id="ldt" name="ldt"></td>
                            </tr>
                            <tr>
                                <td rowspan="2"><input type="submit" value="submit"></td>
                       <tr>
                        </table>
                    </form>
                </div>

                <c:if test="${param.sub!=null}">
                    <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
                    <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>
                    <sql:update var="u" dataSource="${ds}">
                        <%--insert into task(uid,date,subject,defination,maxcost,maxdur,bidlastdate) values(${param.uid},'${dt}','${param.sub}','${param.def}',${param.cost},'${param.dur}','${param.ldt}')--%>
                        insert into project(uid,date,subject,defination,maxcost,maxdur,bidlastdate) values(1,'${dt}','${param.sub}','${param.def}',${param.cost},'${param.dur}','${param.ldt}')
                    </sql:update>
                </c:if>
                    <%-- </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp" ></c:redirect>       
</c:otherwise>--%>
                    <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
