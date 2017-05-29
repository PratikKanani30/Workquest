

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib  prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="css/font-awesome.css"/>
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap-responsive.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"/>
<link href="css/bootstrap1.css" rel="stylesheet" type="text/css"/>
<link href="css/superfish.css" rel="stylesheet" type="text/css"/>
<link href="css/switcher.css" rel="stylesheet" type="text/css"/>
<link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
<link href="css/pricing-table.css" rel="stylesheet" type="text/css"/> 

<script language="javascript" src="js/bootstrap.js"></script>
<script language="javascript" src="js/bootstrap.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1"/>

        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <div id="main">
            <!-- Title, Breadcrumb Start-->
            <div class="breadcrumb-wrapper">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <h2 class="title">Plan Details</h2>
                     </div>
                     <div class="col-lg-6 col-md-6 col-xs-12 col-sm-6">
                        <div class="breadcrumbs pull-right">
                           <ul>
                              <li>You are here:</li>
                              <li><a href="index.html">Home</a></li>
                              <li><a href="#">Features</a></li>
                              <li>Plan Details</li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Title, Breadcrumb End-->
            <!-- Main Content start-->
            <div class="content">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="title">Plan Details</h3>
                        <!-- pricing table -->
                        <div class="p_table">
                           <!-- column style 1 -->
                           
                                 <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
                       <sql:query dataSource="${ds}" var="s1">
                            select * from plan
                        </sql:query> 
                       
                            <c:set var="i" value="1"/>
                        <c:forEach items="${s1.rows}" var="t">
                            <div class="column_1">
                           
                               <ul>
                                 <!-- column header -->
                                 <li class="header_row_1 align_center">
                                    <h2 class="col${i}">${t.plan_name}</h2>
                                    <c:set var="i" value="${i+1}"/>
                                 </li>
                                 
                                 <li class="header_row_2 align_center">
                                    <h1 class="col1"><span>$ ${t.cost}</span></h1>
                                    
                                 </li>
                                 <!-- data rows -->
                                 <li class="row_style_3 align_center"><span>${t.max_bid_pro}Bid</span></li>
                                 
                                 <li class="row_style_1 align_center"><span>${t.dur}Month</span></li>
                                 <!-- column footer -->
                                 
                              </ul>
                           </div>
                        </c:forEach>
                          
                           </div>
                        </div>
                        
                     </div>
                  </div>
                 </div>
                </div>
         </
        
        
        
        
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
