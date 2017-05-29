
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            
        </script>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <c:choose>
            <c:when test="${sessionScope.uid!=null}">
                <c:choose>
                    <c:when test="${sessionScope.usertype==1}">
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
                
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d h:m:s"></fmt:formatDate>   
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        
        <sql:query dataSource="${ds}" var="r">
            select uid,name,status from users where uid in (select b.uid from approvedbid a,bid b where a.bid=b.bid and b.proid in (select proid from project where uid=${uid}))
        </sql:query>
        <c:forEach var="x" items="${r.rows}">
            <table>
                <tr>
                    <td>
                        <c:if test="${x.status=='active'}">
                            <img src="images/active.jpg" height="10px" width="10px" alt="no img"/>
                        </c:if>
                        <c:if test="${x.status!='active'}">
                            <img src="images/deactive.jpg" height="10px" width="10px" alt="no img"/>
                        </c:if>    
                    </td>
                    <td><a href="see_approved_bid.jsp?seeker_uid=${x.uid}&seeker_name=${x.name}" onclick="ping()">${x.name}</a></td>
                </tr>
            </table>
        </c:forEach> 
         
        <div style="height:300px;width:300px;border: 1px black solid;overflow: scroll" id="data">
            ${param.seeker_name}  
            
            <c:if test="${param.seeker_uid!=null}">
                <div>
                    <form>
                        <input type="hidden" name="seeker_uid" value="${param.seeker_uid}"/>
                        <input type="hidden" name="seeker_name" value="${param.seeker_name}"/>
                        <input type="text" name="msg" id="msg"/>
                        <input type="submit" value="send" name="send" id="send"/> 
                    </form>
                        <div  id="frm">
                            
                        </div>
                </div>    
            </c:if> 
            
            <c:if test="${param.send!=null}">
                <sql:update dataSource="${ds}" var="s" sql="insert into chat(sender_uid,receiver_uid,date_chat,message,status) values(${uid},${param.seeker_uid},'${dt}','${param.msg}','unread')"></sql:update> 
            </c:if>  
            
            <c:if test="${param.seeker_uid!=null}">
                <input type="hidden" name="receiver_nm" id="receiver_nm" value="${param.seeker_name}"/>
                <input type="hidden" name="receiver" id="receiver" value="${param.seeker_uid}"/>
                <input type="hidden" name="sender" id="sender" value="${uid}"/>
            </c:if>
        
        </div> 
        
        <script>
            var sender=document.getElementById('sender');
            var receiver=document.getElementById('receiver');
            var receiver_nm=document.getElementById('receiver_nm');
            
    var x;
            if(window.XMLHttpRequest)
            {
                x=new XMLHttpRequest();
            }
            else
            {
                x=new ActiveXObject("Microsoft.XMLHTTP");
            }
            setInterval(show,5000);
          
            function show()
            {
                if(sender!=null)
                {
                    x.onreadystatechange=getdata;
                    x.open("GET","get_chat.jsp?sender="+sender.value+"&receiver="+receiver.value+"&receiver_nm="+receiver_nm.value,false);
                    x.send(null);
                }   
            }
            function getdata()
            {
                if(sender!=null)
                {
                    //alert("getdata");
                    var d=document.getElementById('frm');
                    if(x.readyState==4 && x.status==200)
                    {
                        //alert(d+"in if");
                        d.innerHTML=x.responseText;
                    }
                }
            }
        </script>            
        <jsp:include page="footer.jsp"></jsp:include>    
    </body>
</html>
