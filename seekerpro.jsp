
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
            <div class="profile" style="margin: 50px">
            <h1>Job Seeker Profile</h1><br/>
            <div class="photo" style="border: #9acfea thick solid;width: 200px;transform: rotate(100deg);float: left;;margin: auto">
              <img src="images/${x.photo}" height="200px" width="200px" alt="no photo" />  
            </div><br/><br/>
            <div class="name" style="font-size: 30px;float: left;font-size: 40px;">
                <c:out value="${x.name}" />
            </div><br/>
            <div class="email" style="padding: 10px">
                <span style="padding: 5px">   <c:out value="${x.email}" /></span> |
                <span style="padding: 5px"> <c:out value="${x.phone}" /></span>
            </div><br/>
            <div class="project" style="column-count: ">
                
                <sql:query var="r" dataSource="${ds}">
            select * from task where uid=${uid}
        </sql:query>
        <c:forEach var="x" items="${r.rows}">
            Subject: ${x.subject}<br/>
            Defination: ${x.defination}<br/>
            Date of task done: ${x.date_taskdone}<br/>
         
            <c:choose>
                            <c:when test="${x.provider_uid>0}">
                                <td>Provider : <a href="seekerpro.jsp?provider_uid=${x.provider_uid}">${x.provider_uid}</a><td><br/><br/>
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
                                Provider:no provider<br/><br/>
                            </c:otherwise>
                        </c:choose>            
            
        </c:forEach>
                </div>    
            </div>
            </div>
        </c:forEach>
            <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
