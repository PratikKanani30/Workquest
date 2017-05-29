
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script lang="javascript" src="js/classie.js"></script>
        <script lang="javascript" src="js/modernizr.custom.js"></script>
        <link href="css/component.css" rel="stylesheet" type="text/css"/>
        <link href="css/default.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"></jsp:include>
        <h1 align="center" style="margin-top: 40px;color: #003bb3">Choose your subject for exam </h1>
        <div style="background-color: #DDD;margin-bottom: 30px;padding: 10px">
            
            <section class="color-8">
				<p class="perspective">
                                    <a href="php1.jsp"><button class="btn btn-8 btn-8a btn-color">PHP</button></a>
				</p>
                                <p class="perspective">
                                    <a href="c#.jsp"><button class="btn btn-8 btn-8a btn-color">C#</button></a>
				</p>
                              
                                <p class="perspective">
                                    <a href="asp.jsp"><button class="btn btn-8 btn-8a btn-color">ASP</button></a>
				</p>
                                <br/>
                                <p class="perspective">
                                    <a href="java.jsp"><button class="btn btn-8 btn-8a btn-color">JAVA</button></a>
				</p>
                                
                                <p class="perspective">
                                    <a href="c++.jsp"><button class="btn btn-8 btn-8a btn-color">C++</button></a>
				</p>
                                <p class="perspective">
                                    <a href="Graphics.jsp"><button class="btn btn-8 btn-8a btn-color">Graphics</button></a>
				</p>
                                <br/>
            </section>
        
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
