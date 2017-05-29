

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>seeker_profile</title>
    </head>
    <body>
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        
        <%-- <c:set var="uid" value="${param.uid}"/>--%>
        <c:set var="uid" value="1"/>
        
        <%-- upload photo
        <div style="height:250px;border: solid 1px black; margin: 10px ">
            
        </div>--%>
        
        
        
        
        <sql:query var="r" dataSource="${ds}">
            select * from task where uid=${uid}
        </sql:query>
        <c:forEach var="x" items="${r.rows}">
            <div class="seeker_profile" style="border:solid 1px black; margin: 10px ">
                <table>
                    <tr>
                        <td>Subject: ${x.subject}</td>
                    <tr>
                        <td>Defination: ${x.defination}</td>
                    </tr>
                    <tr>
                        <td>Date of task done: ${x.date_taskdone}</td>
                    </tr>
                    <tr>
                        <c:choose>
                            <c:when test="${x.provider_uid>0}">
                                <td>Provider : <a href="seeker_profile.jsp?provider_uid=${x.provider_uid}">${x.provider_uid}</a><td>
                                <c:if test="${param.provider_uid==x.provider_uid}">
                                    <sql:query var="s" dataSource="${ds}">
                                        select * from users where uid=${param.provider_uid}
                                    </sql:query>
                                    <c:forEach var="y" items="${s.rows}">
                                        <td>
                                            <div style="border:solid 1px black">
                                             ${y.name}<br/><br/>
                                            <img src="${y.photo}" height="100px" width="100px" alt="no photo" /><br/>
                                            Address: ${y.address}<br/>
                                            Phone no: ${y.phone}<br/>
                                           
                                            </div>
                                            
                                            
                                        </td>  
                                    </c:forEach>    
                                </c:if>    
                            </c:when>  
                            <c:otherwise>
                                <td>Provider:no provider</td>
                            </c:otherwise>
                        </c:choose>            
                        
                    </tr>
                </table>
            </div>
        </c:forEach>
            
        <a href="seeker_profile.jsp?userid=${uid}">Add your task</a>
        <c:if test="${param.userid!=null}">
            <div style="border:solid 1px black; margin:2px">
                <c:if test="${param.add_task!=null}">
                    <c:out value="${param.userid}"/>
                    <sql:update var="u" dataSource="${ds}">
                            insert into task(uid,date,subject,defination,date_taskdone,provider_uid) values(${param.userid},'${dt}','${param.sub}','${param.def}','${param.date_taskdone}',${param.provider_uid})
                        </sql:update>
                </c:if>

                <form>
                    <table>
                        <input type="hidden" name="userid" value="${param.userid}"/>
                        <tr>
                            <td>Subject</td> 
                            <td><input type="text" name="sub" id="sub"/></td>
                        </tr>
                        <tr>
                            <td>defination</td>
                            <td><input type="text" name="def" id="def"/></td>
                        </tr>
                        <tr>
                            <td>date of task done</td>
                            <td><input type="date" name="date_taskdone" id="date_taskdone"/></td>
                        </tr>
                        <tr>
                            <td>provider id</td>
                            <td><input type="text" name="provider_uid" id="provider_uid"/></td>
                        </tr>
                        <tr>
                            <td colspan="2"><input type="submit" value="add task" name="add_task"/><br/></td>
                        </tr>
                    </table>

                </form>
            </div>
        </c:if>
    </body>
</html>
