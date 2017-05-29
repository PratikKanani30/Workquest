

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript">

            function go()
            {
                var req;
                if(window.XMLHttpRequest)
                    req=new XMLHttpRequest();
                else
                 req=new ActiveXObject("Microsft.XMLHTTP");

                var fn=photo.value;
                 var nm=fn;
                 var n=fn.indexOf('fakepath');
                if(n>0)
                nm=fn.substr(n+9,fn.length-n-8);
            alert("next.jsp?image="+nm+"&name="+document.getElementById('name').value+ "&address=" + document.getElementById('address').value);
                req.open("GET", "next.jsp?image="+nm+"&name="+document.getElementById('name').value+ "&address=" + document.getElementById('address').value , false);
                req.onReadyStateChange=abc;
                req.send(null);
               
                
                
           // fl.value=photo.value;
            //frm1.submit();
           // frm2.submit();
            }
            function abc()
            {
                if(req.ReadyState==4)
                {
                    document.getElementById('test').innerHTML=req.responseText;
                }
            }
        </script>
    
    </head>
    <body>
         <div id="test">
            mklk
        </div>
        <%
if(request.getParameter("file")!=null)
{
%>
<img src="upload/<%=request.getParameter("file")%>" />
<%
}
%>

        <form>
            <c:if test="${sessionScope.user==null}">
                <c:redirect url="login.jsp"></c:redirect>
            </c:if>
            <sql:setDataSource driver="com.mysql.jdbc.Driver" user="root" password="" url="jdbc:mysql://localhost/workq" var="ds"/>
            <sql:query dataSource="${ds}" var="r" sql="select * from user where email='${sessionScope.user}'"> </sql:query>
            
            <table>             
                <c:forEach items="${r.rows}" var="x">
                    
                    <tr>
        <td align="left" width="41%">Name</td>

        <td width="57%"><input type="text" required value="${x.name}" name="name" id="name" size="30"></td>
    </tr>
   
     
    <tr>
        <td align="left" width="41%">Address</td>
        <td width="57%">
            <input type="text" required value="${x.address}" name="address" id="address" size="50"></td>
    </tr>
      
    
    <tr>
        <td align="left" width="41%">phone</td>
        <td width="57%">
            <input type="tel" required value="${x.phone}" name="phone" id="phn" size="30"></td>
    </tr>
    
    <tr >
        <td align="left" width="41%">City</td>
        <td width="57%">
<select name="city">
<option value="Default">Default</option>
<option value="rajkot">rajkot</option>
<option value="ahmedabad">ahmedabad</option>
<option value="surat">surat</option>
<option value="vadodara">vadodara</option>
<option value="ghandhinagar">ghandhinagar</option>
</select></td>
        

    </tr>
    
    <tr >
        <td align="left" width="41%">State</td>
        <td width="57%">
<select name="state">
<option value="Default">Default</option>
<option value="gujarat">gujarat</option>
<option value="panjab">panjab</option>
<option value="rajasthan">rajasthan</option>
<option value="uttarprades">uttarprades</option>
<option value="kerala">kerala</option>
</select></td>
        

    </tr> 
    
     <tr >
        <td align="left" width="41%">Country</td>
        <td width="57%">
<select name="city">
<option value="Default">Default</option>
<option value="India">India</option>
<option value="US">US</option>
<option value="Australiya">Australiya</option>
<option value="UK">UK</option>
<option value="China">China</option>
</select></td>
        

    </tr>
   
     <tr>
        <td align="left" width="41%">pincode</td>
        <td width="57%">
            <input type="text" required value="${x.pincode}" name="pincode" id="pincode" size="50"></td>
    </tr>
    
    <tr>
        <td align="left" width="41%">Email</td>
        <td width="57%">
            <input type="email" required value="${x.email}" name="email" id="email" size="30"></td>
    </tr>
    
    <tr>
        <td align="left" width="41%">Password</td>
        <td width="57%">
            <input type="password" required  value="${x.password}" name="password" id="password" size="30"></td>
    </tr>
    
    <tr>
        <td align="left" width="41%">Confirm Password</td>
        <td width="57%">
        <input type="password" required  value="" name="confirm_password" id="confirm_password" size="30"></td>
    </tr>
    
    <tr>
        <td align="left" width="41%">usertype</td>
        <td width="57%">
        <input type="text" required value="${x.usertype}" name="usertype" id="usertype" size="30"></td>
    </tr>
    
    
    <tr>
        <td align="left" width="41%">tagline</td>
        <td width="57%">
        <input type="text" required value="${x.tagline}" name="tagline" id="tagline" size="30"></td>
    </tr>
    
   
     
                    <%-- <tr>
                        <td>Enter your Name:</td><input type="hidden" value="${x.uid}" name="user_id" id="user_id">
                        <td><input type="text" name="txtnm" id="txtnm" value="${x.name}"/></td>
                    </tr>
                     <tr>
                        <td>Enter your address:</td>
                        <td><textarea  name="txtadd" id="txtadd">${x.address}</textarea> </td>
                    </tr>
                    <tr>
                        <td>City:</td>
                        <td><input type="text" name="txtcity" id="txtcity" value="${x.city}"/></td>
                    </tr>
                    <tr>
                        <td>State:</td>
                        <td><input type="text" name="txtstate" id="txtstate" value="${x.state}"/></td>
                    </tr>
                    <tr>
                        <td>Country:</td>
                        <td><input type="text" name="txtcountry" id="txtcountry" value="${x.country}"/></td>
                    </tr>
                    <tr>
                        <td>Email-ID:</td>
                        <td><input type="email" name="txtemail" id="txtemail" value="${x.email}"/></td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><input type="tel" name="txtph" id="txtph" value="${x.phone}"/></td>
                    </tr>
                   <tr>
                        <td>Gender:</td>
                        <c:set var="g" value="male"/>
                        <c:choose>
                            <c:when test="${x.gender==g}">
                                <td><input type="radio" name="txtgender" id="txtgender" value="male" checked/>Male</td> 
                                <td><input type="radio" name="txtgender" id="txtgender" value="female" />Female</td>
                        </c:when>
                        
                        <c:otherwise>
                            <td><input type="radio" name="txtgender" id="txtgender" value="male"/>Male</td>
                            <td><input type="radio" name="txtgender" id="txtgender" value="female" checked/>Female</td>
                        </c:otherwise>
                        </c:choose>
                    </tr>
                     <tr>
                         <td>Date of Birth:</td>
                         <td><input type="date" name="bdate" id="bdate" value="${x.birthdate}"/> </td>
                     </tr>
                    <tr>
                        <td>Height:</td>
                        <td><input type="text" name="txtheight" id="txtheight" value="${x.height}"/></td>
                    </tr>
                    <tr>
                        <td>Weight:</td>
                        <td><input type="text" name="txtweight" id="txtweight" value="${x.weight}"/></td>
                    </tr>
                    <tr>
                        <td>Marital Status:</td>
                        <c:set var="ms" value="married"/>
                        <c:choose>
                        <c:when test="${x.maritalstatus==ms}">
                        <td><input type="radio" name="maritalstatus" id="maritalstatus"  value="married" checked />Married</td>
                        <td><input type="radio" name="maritalstatus" id="maritalstatus" value="unmarried"/>Unmarried</td>
                        </c:when>
                        <c:otherwise>
                        <td><input type="radio" name="maritalstatus" id="maritalstatus"  value="married"  />Married</td>
                        <td><input type="radio" name="maritalstatus" id="maritalstatus" value="unmarried" checked/>Unmarried</td>
                        </c:otherwise>
                        </c:choose>
                        </tr>
                    <tr>
                        <td>No of Children:</td>
                        <td><input type="number" name="children" id="children" value="${x.no_of_children}" /></td>
                    </tr>
                    <tr>
                        <td>Surgery Detail:</td>
                        <td><input type="text" name="surgery_detail" id="surgery_detail" value="${x.surgery_detail}"/></td>
                    </tr> 
                </c:forEach> --%>
            </table>
             </c:forEach>
        </form>
       <form enctype="multipart/form-data" method="post" id="frm2" action="upload.jsp" target="_blank">
                            
                  <tr><td>image</td><td>
                          <input type="file" name="photo" id="photo" value="${x.image}">
                      </td></tr>
     </form>
       <input type="button" value="submit" onclick="go()"/>
     </body>
</html> 
        
        
        
        
        <%--<script>
         function go()
            {
                var req;
                if(window.XMLHttpRequest)
                    req=new XMLHttpRequest();
                else
                 req=new ActiveXObject("Microsft.XMLHTTP");

                var fn=photo.value;
                 var nm=fn;
                 var n=fn.indexOf('fakepath');
                if(n>0)
                nm=fn.substr(n+9,fn.length-n-8);
            //alert(nm)
                req.open("GET", "next.jsp?Image="+document.getElementById('photo').value, false);
                req.send(null);
                
                
           // fl.value=photo.value;
            //frm1.submit();
            f1.submit();
            }
        </script>
        
        <div id="upload" class="upload">
            <form method="post" enctype="multipart/form-data" id="f1" action="upload.jsp">
                <table>
                    <tr>
                        <td>
                            upload ur image
                        </td>
                    
                    </tr>
                    <tr>
                        <td>
                            <input type="file" name="photo" id="photo">
                             <input type="submit" name="submit">
                              <div>
                                 <img src="E:/project/images" />
                             </div>
                             <div>
                                 <jsp:include page="approve_bid.jsp" flush="true"/>
                            </div>
                             <div>
                                 <button id="btn1" value="edit profile">edit profile</button>
                             </div>
                             </td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>--%>
