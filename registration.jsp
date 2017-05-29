
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" session="true" import="java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registration page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        
        <form name="registration" action="" onsubmit="return validate_form();" method="post">
            <table align="center" width=40% width="100%" cellspacing="2" cellpadding="2">
                <tr>
                    <td colspan="2" align="center"><b>Employee Registration Form.</b></td>
                </tr>
                <tr>
                    <td align="left" width="41%">Name</td>
                    <td width="57%"><input type="text" required value="" name="name" id="name" size="30"></td>
                </tr>
                <tr>
                    <td align="left" width="41%">Address</td>
                    <td width="57%">
                    <input type="text" required value="" name="address" id="address" size="50"></td>
                </tr>
                <tr>
                    <td align="left" width="41%">phone</td>
                    <td width="57%">
                    <input type="tel" required value="" name="phone" id="phn" size="30"></td>
                </tr>
                <tr>
                    <td align="left" width="41%">City</td>
                    <td width="57%">
                        <select name="city">
                            <option value="Default">Default</option>
                            <option value="rajkot">rajkot</option>
                            <option value="ahmedabad">ahmedabad</option>
                            <option value="surat">surat</option>
                            <option value="vadodara">vadodara</option>
                            <option value="ghandhinagar">ghandhinagar</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="left" width="41%">State</td>
                    <td width="57%">
                        <select name="state">
                            <option value="Default">Default</option>
                            <option value="gujarat">gujarat</option>
                            <option value="panjab">panjab</option>
                            <option value="rajasthan">rajasthan</option>
                            <option value="uttarprades">uttarprades</option>
                            <option value="kerala">kerala</option>
                        </select>
                    </td>
                </tr> 
                <tr>
                    <td align="left" width="41%">Country</td>
                    <td width="57%">
                        
                        <select name="country">
                            <option value="default">Default</option>
                            <option value="india">India</option>
                            <option value="US">US</option>
                            <option value="Australiya">Australiya</option>
                            <option value="UK">UK</option>
                            <option value="China">China</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td align="left" width="41%">pincode</td>
                    <td width="57%">
                        <input type="text" required value="" name="pincode" id="pincode" size="50">
                    </td>
                </tr>
                <tr>
                    <td align="left" width="41%">Email</td>
                    <td width="57%">
                        <input type="email" required value="" name="email" id="email" size="30">
                    </td>
                </tr>
                <tr>
                    <td align="left" width="41%">Password</td>
                    <td width="57%">
                        <input type="password" required  value="" name="password" id="password" size="30">
                    </td>
                </tr>
                <tr>
                    <td align="left" width="41%">Confirm Password</td>
                    <td width="57%">
                        <input type="password" required  value="" name="confirm_password" id="confirm_password" size="30">
                    </td>
                </tr>
                <tr>
                    <td align="left" width="41%">usertype</td>
                    <td width="57%">
                        <select name="usertype">
                            <option value="1">Work provider</option> 
                            <option value="2">Work seeker</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <sql:query dataSource="${ds}" var="s">
                        select * from plan
                    </sql:query>
                    <%--<td>Plan</td>
                    <td style="width:400px;float:right ">
                        <select name="plan" onclick="detail()" onchange="derail()">
                            <c:forEach var="x" items="${s.rows}">
                                <option value="${x.plan_id}">${x.plan_name}</option>
                                <option 
                                <input type="hidden" name="plan_nm" id="plan_nm" value="${x.plan_name}"/>
                                <input type="hidden" name="max_bid_pro" id="max_bid_pro" value="${x.max_bid_pro}"/>
                                <input type="hidden" name="dur" id="dur" value="${x.dur}"/>
                                <input type="hidden" name="cost" id="cost" value="${x.cost}"/>
                            </c:forEach>
                        </select>
                        <div id="display_detail" style="float:right;"></div>
</td>--%>
                    
                        <script>
                            function detail()
                            {
                               var plan_nm=document.getElementById('plan_nm');
                               var max_bid_pro=document.getElementById('max_bid_pro');
                               var dur=document.getElementById('dur');
                               var cost=document.getElementById('cost');
                               var division=document.getElementById('display_detail');
                               division.innerHTML='plan name:'+plan_nm.value+'   max bid/project:'+max_bid_pro.value+'  dur:'+dur.value+' month  cost:'+cost.value;
                            }
                        </script>
                </tr>
                <tr>
                    <td align="left" width="41%">tagline</td>
                    <td width="57%">
                        <input type="text" required value="" name="tagline" id="tagline" size="30">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <p align="center"><input type="submit" value="Submit" name="submit">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" value="  Reset All   " name="btn">
                    </td>
                </tr>
            </form>
        </table>

            
            <c:if  test="${param.submit!=null}">
                <c:set var="name" value="${param.name}"/>
                <c:set var="address" value="${param.address}"/>
                <c:set var="phone" value="${param.phone}"/>
                <c:set var="city" value="${param.city}"/>
                <c:set var="state" value="${param.state}"/>
                <c:set var="country" value="${param.country}"/>
                <c:set var="pincode" value="${param.pincode}"/>
                <c:set var="email" value="${param.email}"/>
                <c:set var="password" value="${param.password}"/>
                <c:set var="confirm_password" value="${param.confirm_password}"/>
                <c:set var="usertype" value="${param.usertype}"/>
                <c:set var="plan" value="${param.plan}"/>
                <c:set var="tagline" value="${param.tagline}"/>
                
                
                <sql:update dataSource="${ds}" var="r">
                    insert into users(name,address,phone,city,state,country,pincode,email,password,usertype,tagline,status,reg_date) values('${name}','${address}',${phone},'${city}','${state}','${country}',${pincode},'${email}','${password}',${usertype},'${tagline}','deactive','${dt}')
                </sql:update>
                 
                <sql:query dataSource="${ds}" var="r1">
                    select uid from users where name='${name}' and email='${email}' and password='${password}' 
                </sql:query>  
                <c:forEach var="x1" items="${r1.rows}">
                    <c:set var="uid" value="${x1.uid}"/>
                </c:forEach>
                    
                <sql:update dataSource="${ds}" var="u">
                    insert into plan_detail(uid,plan_id,status) values(${uid},${plan},1)
                </sql:update>    
                
                <sql:query dataSource="${ds}" var="r2">
                    select plan_detail_id from plan_detail where uid=${uid} and status=1
                </sql:query>
                <c:forEach var="x2" items="${r2.rows}">
                    <c:set var="plan_detail_id" value="${x2.plan_detail_id}"/>
                </c:forEach>    
                    
                <sql:update dataSource="${ds}" var="u1">
                    update users set plan=${plan_detail_id} where uid=${uid}
                </sql:update>    
                    
                    
                <%--<c:choose>
                    <c:when test="${r>0}">
                        Successfully Registered
                        <a href='verify.jsp'>click here for verification</a>
                    </c:when>
                    <c:otherwise>
                        registration Failed
                        <a href='registration.jsp'>Register Again</a>
                    </c:otherwise>    
</c:choose>--%>
            </c:if>    
        
         
           
           

                    <jsp:include page="footer.jsp" ></jsp:include>
         
    </body>
</html>
