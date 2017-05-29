

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
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
                <div class="span3">
                    <hr><h4>REVENUE INFO</h4>
                    <div id="money">
                        <%--<div class="highcharts-container" id="highcharts-0" style="position: relative; overflow: hidden; width: 200px; height: 186px; text-align: left; line-height: normal; z-index: 0; font-family: 'Lucida Grande', 'Lucida Sans Unicode', Verdana, Arial, Helvetica, sans-serif; font-size: 12px; cursor: auto;"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" width="200" height="186"><defs><clipPath id="highcharts-1"><rect rx="0" ry="0" fill="none" x="0" y="0" width="9999" height="186" stroke-width="0.000001"></rect></clipPath><clipPath id="highcharts-2"><rect fill="none" x="0" y="0" width="200" height="186"></rect></clipPath></defs><rect rx="0" ry="0" fill="none" x="0" y="0" width="200" height="186" stroke-width="0.000001"></rect><g class="highcharts-series-group" zIndex="3"></g><g class="highcharts-point" zIndex="5"><path fill="#62c462" d="M 99.98579379404227 23.25000144671175 A 69.75 69.75 0 0 1 156.23642799136027 134.26168521488853 L 137.4909519942402 120.50779014325902 A 46.5 46.5 0 0 0 99.99052919602818 46.5000009644745 Z" stroke="#F1F3EB" stroke-width="2" stroke-linejoin="round"></path><path fill="rgb(192,192,192)" d="M 99.98579379404227 23.25000144671175 A 69.75 69.75 0 0 1 156.23642799136027 134.26168521488853 L 137.4909519942402 120.50779014325902 A 46.5 46.5 0 0 0 99.99052919602818 46.5000009644745 Z" isTracker="1428555108354" fill-opacity="0.000001" visibility="visible" style=""></path></g><g class="highcharts-point" zIndex="5"><path fill="rgb(193,227,91)" d="M 156.23638672964694 134.26174145129588 A 69.75 69.75 0 0 1 33.48162112219087 113.98494154073909 L 55.65441408146059 106.9899610271594 A 46.5 46.5 0 0 0 137.4909244864313 120.50782763419726 Z" stroke="#F1F3EB" stroke-width="2" stroke-linejoin="round" fill-opacity="1"></path><path fill="rgb(192,192,192)" d="M 156.23638672964694 134.26174145129588 A 69.75 69.75 0 0 1 33.48162112219089 113.98494154073911 L 55.654414081460594 106.98996102715941 A 46.5 46.5 0 0 0 137.4909244864313 120.50782763419726 Z" isTracker="1428555108354" fill-opacity="0.000001" visibility="visible" style=""></path></g><g class="highcharts-point" zIndex="5"><path fill="#2f9734" d="M 33.481600137282584 113.98487502234971 A 69.75 69.75 0 0 1 31.891902564057816 77.9550817996173 L 54.59460170937188 82.9700545330782 A 46.5 46.5 0 0 0 55.65440009152172 106.98991668156647 Z" stroke="#F1F3EB" stroke-width="2" stroke-linejoin="round"></path><path fill="rgb(192,192,192)" d="M 33.4816001372826 113.98487502234974 A 69.75 69.75 0 0 1 31.891902564057816 77.9550817996173 L 54.59460170937188 82.9700545330782 A 46.5 46.5 0 0 0 55.65440009152174 106.9899166815665 Z" isTracker="1428555108354" fill-opacity="0.000001" visibility="visible" style=""></path></g><g class="highcharts-point" zIndex="5"><path fill="#edb836" d="M 31.89191760901008 77.95501369152738 A 69.75 69.75 0 0 1 36.46673989092192 64.21480658546433 L 57.64449326061461 73.80987105697622 A 46.5 46.5 0 0 0 54.59461173934005 82.97000912768492 Z" stroke="#F1F3EB" stroke-width="2" stroke-linejoin="round"></path><path fill="rgb(192,192,192)" d="M 31.89191760901008 77.95501369152738 A 69.75 69.75 0 0 1 36.46673989092192 64.21480658546433 L 57.64449326061461 73.80987105697622 A 46.5 46.5 0 0 0 54.59461173934005 82.97000912768492 Z" isTracker="1428555108354" fill-opacity="0.000001" visibility="visible" style=""></path></g><g class="highcharts-point" zIndex="5"><path fill="#8A9499" d="M 36.466768676147105 64.21474305221861 A 69.75 69.75 0 0 1 39.65786576518793 58.01587022680254 L 59.77191051012528 69.67724681786837 A 46.5 46.5 0 0 0 57.644512450764736 73.80982870147908 Z" stroke="#F1F3EB" stroke-width="2" stroke-linejoin="round"></path><path fill="rgb(192,192,192)" d="M 36.466768676147105 64.21474305221861 A 69.75 69.75 0 0 1 39.65786576518793 58.01587022680254 L 59.77191051012528 69.67724681786837 A 46.5 46.5 0 0 0 57.644512450764736 73.80982870147908 Z" isTracker="1428555108354" fill-opacity="0.000001" visibility="visible" style=""></path></g><g class="highcharts-point" zIndex="5"><path fill="#6eb042" d="M 39.657900749347874 58.01580988468579 A 69.75 69.75 0 0 1 99.97279886885734 23.25000530395387 L 99.98186591257155 46.50000353596924 A 46.5 46.5 0 0 0 59.77193383289858 69.67720658979053 Z" stroke="#F1F3EB" stroke-width="2" stroke-linejoin="round"></path><path fill="rgb(192,192,192)" d="M 39.657900749347874 58.01580988468579 A 69.75 69.75 0 0 1 99.97279886885734 23.25000530395387 L 99.98186591257155 46.50000353596924 A 46.5 46.5 0 0 0 59.77193383289858 69.67720658979053 Z" isTracker="1428555108354" fill-opacity="0.000001" visibility="visible" style=""></path></g><g class="highcharts-legend" zIndex="7"><rect rx="5" ry="5" fill="none" x="0.5" y="0.5" width="7" height="7" stroke-width="1" stroke="#909090" visibility="hidden"></rect><g zIndex="1" clip-path="url(#highcharts-1)"><g></g></g></g><g class="highcharts-tooltip" zIndex="8" style="padding:0;white-space:nowrap;" visibility="visible" transform="translate(104,130)"><rect rx="5" ry="5" fill="none" x="0" y="0" width="75" height="26" stroke-width="5" fill-opacity="0.85" isShadow="true" stroke="black" stroke-opacity="0.049999999999999996" transform="translate(1, 1)"></rect><rect rx="5" ry="5" fill="none" x="0" y="0" width="75" height="26" stroke-width="3" fill-opacity="0.85" isShadow="true" stroke="black" stroke-opacity="0.09999999999999999" transform="translate(1, 1)"></rect><rect rx="5" ry="5" fill="none" x="0" y="0" width="75" height="26" stroke-width="1" fill-opacity="0.85" isShadow="true" stroke="black" stroke-opacity="0.15" transform="translate(1, 1)"></rect><rect rx="5" ry="5" fill="rgb(255,255,255)" x="0" y="0" width="75" height="26" stroke-width="2" fill-opacity="0.85" stroke="#a8ca42" anchorX="-12" anchorY="11"></rect><text x="5" y="18" style="font-family:&quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Verdana, Arial, Helvetica, sans-serif;font-size:12px;color:#333333;fill:#333333;" zIndex="1"><tspan x="5">Sales: 35 %</tspan></text></g><text x="190" y="181" style="font-family:quot;Lucida Grande&quot;, &quot;Lucida Sans Unicode&quot;, Verdana, Arial, Helvetica, sans-serif;font-size:10px;cursor:pointer;color:#909090;fill:#909090;" text-anchor="end" zIndex="8"></text><g class="highcharts-tracker" zIndex="9"></g></svg></div>--%>
                    </div>
                   
                    <h5>- DETAILS:</h5>
                    <p><i class="icos-heart" style="vertical-align:baseline"></i>Total Earnings: <b style="color:#ff6e01">$44.550</b></p>
                </div>
                <div class="span3"><hr><h4>MONTHLY VISITS</h4>
                    <div id="site"></div>
                    <h5>- DETAILS:</h5>
                    <p><i class="icos-fire" style="vertical-align:baseline"></i>Total Visits: <b style="color:#ff6e01">447.763</b>
                    </p>
                </div>
                <div class="span3"><hr><h4>TOTAL USERS</h4>
                    <div id="users">
                        
                    </div>
                    <h5>- DETAILS:</h5>
                    <p><i class="icos-user1" style="vertical-align:baseline"></i>Total Users: <b style="color:#ff6e01">17.110</b>
                    </p>
                </div>
            </div>
        </div>
        <br>
        <div id="middlewrap"><br>
            <footer class="clearfix">
                
            </footer>
            <div class="container">
                <div class="row">
                    <div class="span2">
                        <div class="dash2-unit">
                            <h1>Important Site Stat</h1>
                            <br>
                            <p style="text-align:center">
                                <img src="assets/img/stat01.png" alt="">
                            </p>
                            <h2>Detailed Information</h2>
                            <h6>46%</h6>
                            <br>
                            <p>More...</p>
                        </div>
                    </div>
                    <div class="span2">
                        <div class="dash2-unit">
                            <h1>Important Site Stat</h1>
                            <br>
                            <p style="text-align:center">
                                <img src="assets/img/stat02.png" alt="">
                            </p>
                            <h2>Detailed Information</h2>
                            <h6>Stable</h6>
                            <br>
                            <p>More...</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="footerwrap">
            <footer class="clearfix">
                
            </footer>
            <div class="container">
                <div class="row">
                    <div class="span12">
                        <p><img src="assets/img/logo.png" alt=""></p>
                        <p>Lion Admin Theme - Crafted With Love - Copyright 2012</p>
                    </div>
                </div>
            </div>
        </div>
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
    
    </body>
</html
                

 