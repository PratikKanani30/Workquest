
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
        
        
        <link href="http://fonts.googleapis.com/css?family=Open+Sans" rel='stylesheet' type='text/css'>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
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
            

        <div class="span2">
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>         
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        
        
        
        <div class="add_sub" style="border: solid 1px black; width:250px;height:150px ">
            <form>
                <br/>sub <input type="text" id="subbnm" name="subnm"/><br/>
                <br/><input type="submit" value="add subject" name="add_sub" />
            </form>
         
            <c:if test="${param.add_sub!=null}">

                <sql:query dataSource="${ds}" var="s">
                    select count(*) 'as' from subject where subname='${param.subnm}'
                </sql:query> 

                    <c:choose>
                        <c:when test="${x.as<0}">
                           <sql:update dataSource="${ds}" var="r">
                                insert into subject(subname,date_subadd)values('${param.subnm}','${dt}')
                            </sql:update> 
                        </c:when>
                            <c:otherwise>
                                <br/>Sub already exist..you can not add this subject...
                            </c:otherwise>        
                    </c:choose>    

            </c:if> 
        </div>
        <br/><br/>
        <%--<div style="border:solid 1px black   "--%> 
            <sql:query dataSource="${ds}" var="s">
                select * from subject
            </sql:query> 
            <form>
                <select name="sub" id="sub">
                    <c:forEach var="x" items="${s.rows}">
                        <option value="${x.sub_id}">${x.subname}</option>
                    </c:forEach>
                </select>
                <input type="submit" value="add question" name="add_que"/>
            </form>
            <br/><br/>
            <c:if test="${param.add_que!=null}">
                <form>
                <table>
                     <tr>
                         <td colspan="2">Insert que and ans & select true ans</td>
                    </tr>
                    <tr>
                        <td>Question</td>
                        <td><input type="text" name="que" id="que"/></td>
                        <td><input type="hidden" name="sub_id" value="${param.sub}"/></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="ans" id="ans1" value="ans1" />ans1</td>
                        <td><input type="text" name="ans1" id="ans1"/><br/></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="ans" id="ans2" value="ans2" />ans2</td>
                        <td><input type="text" name="ans2" id="ans2"/></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="ans" id="ans3" value="ans3" />ans3</td>
                        <td><input type="text" name="ans3" id="ans3"/></td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="ans" id="ans4" value="ans4" />ans4</td>
                        <td><input type="text" name="ans4" id="ans4"/></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="add" name="add"/></td>
                    </tr>
                </table>
                </form>    
            </c:if>
            <c:if test="${param.add!=null}">
                <c:out value="${param.ans}"/>
                <c:choose>
                    <c:when test="${param.ans=='ans1'}">
                        <c:set var="true_ans" value="${param.ans1}"/>
                    </c:when>
                    <c:when test="${param.ans=='ans2'}">
                        <c:set var="true_ans" value="${param.ans2}"/>
                    </c:when>
                    <c:when test="${param.ans=='ans3'}">
                        <c:set var="true_ans" value="${param.ans3}"/>
                    </c:when>
                    <c:otherwise>
                        <c:set var="true_ans" value="${param.ans4}"/>
                    </c:otherwise>
                </c:choose>
                <sql:update dataSource="${ds}">
                    insert into question(sub_id,que,ans1,ans2,ans3,ans4,ans) values(${param.sub_id},'${param.que}','${param.ans1}','${param.ans2}','${param.ans3}','${param.ans4}','${true_ans}')
                </sql:update> 
            </c:if>        
            <%--</div>--%>
            
            <script type="text/javascript" src="js/bootstrap-transition.js"></script> 
        <script type="text/javascript" src="js/bootstrap-.js"></script> 
        <script type="text/javascript" src="js/bootstrap-modal.js"></script> 
        <script type="text/javascript" src="js/bootstrap-dropdown.js"></script> 
        <script type="text/javascript" src="js/bootstrap-tooltip.js"></script> 
        <script type="text/javascript" src="js/bootstrap-button.js"></script> 
        <script type="text/javascript" src="js/bootstrap-collapse.js"></script> 
        <script type="text/javascript" src="js/bootstrap-typeahead.js"></script> 
        <script type="text/javascript" src="js/highcharts.js"></script> 
        <script type="text/javascript" src="js/dash-charts.js"></script> 
        <script type="text/javascript" src="js/noty/jquery.noty.js"></script> 
        <script type="text/javascript" src="js/noty/layouts/topRight.js"></script> 
        <!--//--><script type="text/javascript" src="js/noty/themes/default.js"></script> 
        <script type="text/javascript" src="js/dash-noty.js"></script> 
        <script type="text/javascript" src="js/admin.js"></script> 
        </div>
            </div>
        </div>
    </body>
</html>
