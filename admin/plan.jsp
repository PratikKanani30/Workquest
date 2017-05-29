

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <title>WorkQuest - Admin</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/main.css" rel="stylesheet">
        <link rel="stylesheet" href="css/font-awesome.css"/>
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <style type="text/css">body{padding-top:60px;}</style>
        <link href="css/bootstrap-responsive.css" rel="stylesheet">
        
        <link href="css/table.css" rel="stylesheet">
        
        
        <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel='stylesheet' type='text/css'>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="navbar-inner"><div class="container">
                    <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span></a>
                    <a class="brand" href="index.html">
                        <img src="assets/img/logo-small.png" alt=""> Workquest Admin</a>
                    <div class="nav-collapse collapse">
                        <ul class="nav"><li class="active">
                                <a href="index.jsp"><i class="fa-home"></i>Home</a>
                            </li>
                            <li><a href="test.jsp"><i class="icon-signal"></i>Charts</a></li>
                            <li><a href="plan.jsp"><i class="icon-folder-open icon-white"></i>add plan</a></li> 
                            <li><a href="add_sub.jsp"><i class="icon-calendar icon-white"></i>Add Subject</a></li> 
                            <li><a href="expiry_plan.jsp"><i class="icon-bookmark icon-white"></i>expiry plan</a></li>
                            
                            
                                    <li><a href="user.html"><i class="icon-user icon-white"></i>User</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="span3">
                    <div class="dash-unit">
                        <img src="images/team-member-1.jpg" alt="Brian Smith">
                        <h1>BRIAN SMITH</h1>
                        <h4>Gujarat, INDIA.</h4>
                        <h6>Joined April 19, 2009</h6>
                        <p><i class="icon-envelope icon-white"></i>
                            <a href="#" class="tooltip-test" data-placement="top" title="New Mails">
                                <span class="badge badge-one">6</span></a> - <i class="icon-comment icon-white"></i>
                                <a href="#" class="tooltip-test" data-placement="top" title="New Messages">
                                    <span class="badge badge-one">2</span></a></p>
                    </div>
                </div>
        
       
                <div class="span3" style="padding-left: 100px; padding-top: 40px">
                    
                    <form>
                                        <table>
                    <tr>
                        <td>Plan Name</td>
                        <td><input type="text" name="plan_nm" id="plan_nm" /></td>
                    </tr>
                    <tr>
                        <td>Max project/bid</td>
                        <td><input type="text" name="max_bid" id="max_bid"/></td>
                    </tr>
                    <tr>
                        <td>Duration</td>
                        <td>
                            <select name="dur">
                                <option value="6">6 Month</option>
                                <option value="12">1 year</option>
                                <option value="18">1.5 year</option>
                                <option value="24">2 year</option>
                                <option value="30">2.5 year</option>
                                <option value="36">3 year</option>
                                <option value="60">5 year</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td>Cost</td>
                        <td><input type="text" name="cost" id="cost"/></td>
                    </tr>
                    
                        <%-- <td class="center" rowspan="2" ><input type="submit" value="add plan" name="add_plan" id="add_plan"/> </td>--%>
                    
                </table>
                        <br/>
                        <span style="padding-left: 100px">    <input type="submit" value="add plan" name="add_plan" id="add_plan"/></span>
            </form>
                </div>
        
            <c:if test="${param.add_plan!=null}">
                <sql:update dataSource="${ds}" var="s">
                    insert into plan(plan_name,max_bid_pro,dur,cost) values ('${param.plan_nm}',${param.max_bid},${param.dur},${param.cost})
                </sql:update> 
            </c:if>  
        
                    </div>
                    <br/>
                    <br/>
                    <br/>
        </div>
       
                    
              
        <br>
      <div id="middlewrap">
    
      	<footer class="clearfix"></footer>
      	
      		<div class="row">
                    
                    <div class="span12" style="padding-left: 150px">
                        <h4><strong>Basic Table</strong></h4>
			
                        <sql:query dataSource="${ds}" var="r" sql="select * from plan"></sql:query>
                        <table class="display">
            <thead>
            <tr>
                <th>plan_id</th>
                <th>plan_name</th>
                <th>max_bid_pro</th>
                <th>dur</th>
                <th>cost</th>
            </tr>
            </thead>
              <c:set var="i" value="1"/>
        <c:forEach var="x" items="${r.rows}">
            <tbody>
              
            <tr class="me${i}">
                
                
                <td class="center">${x.plan_id}</td>
                <td class="center">${x.plan_name}</td>
                <td class="center">${x.max_bid_pro}</td>
                <td class="center">${x.dur}</td>
                <td class="center">${x.cost}</td>
                </tr>
                <c:choose>
                <c:when test="${i==1}">
                    <c:set var="i" value="2"/>
                </c:when> 
                <c:otherwise>
                    <c:set var="i" value="1"/>
                </c:otherwise>
                </c:choose>
            </tbody>
        </c:forEach>
        </table><br/>
                    </div>
                </div>
        </div>
        </div>
                   
                    
                                    
                                
        

    </body>
</html>
