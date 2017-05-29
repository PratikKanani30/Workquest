

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
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
        <c:choose>
            <c:when test="${sessionScope.uid!=null}">
                <c:set var="uid" value="${sessionScope.uid}" />
            </c:when>
            <c:otherwise>
                <c:redirect url="login.jsp"/>
            </c:otherwise>
        </c:choose>
        <fmt:formatDate var="dt" value="<%=new java.util.Date()%>" pattern="y-M-d"></fmt:formatDate>   
        <sql:setDataSource var="ds" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/workq" user="root" password=""/>
        <div style="height: 250px; padding-left:200px; padding-bottom: 20px" >
            <section class="color-8">
				<p class="perspective">
                                    <a href="add_project.jsp"><button class="btn btn-8 btn-8a btn-color">add project</button></a>
				</p>
				<p class="perspective">
                                    <a href="approve_bid.jsp"><button class="btn btn-8 btn-8b btn-color">see bid & approve bid</button></a>
				</p>
				<br /><br/>
				<p class="perspective">
                                    <a href="see_approved_bid.jsp"><button class="btn btn-8 btn-8c btn-color">See approved bid & Chat</button></a>
				</p>
				<p class="perspective">
                                    <a href="download_project.jsp"><button class="btn btn-8 btn-8d btn-color">Download Work</button></a>
				</p>
                                <br/><br/>
				<p class="perspective">
                                    <a href="plan.jsp"><button class="btn btn-8 btn-8d btn-color">Plan</button></a>
				</p>
				<p class="perspective">
                                    <a href="logout.jsp"><button class="btn btn-8 btn-8e btn-color">Logout</button></a>
				</p>
				<br />
				
			</section>
        
        
 
        </div>
        <sql:query dataSource="${ds}" var="r1">
            select * from alert_user where uid=${uid} and alert_date<=${dt}
        </sql:query>
        <c:forEach var="x1" items="${r1.rows}">
            <c:set  var="remaining_day" value="${x1.remaining_day}"/>
            <c:set var="alert_date" value="${x1.alert_date}"/>
        </c:forEach>
        
        <c:if test="${remaining_day!=null}">    
            <c:out value="${remaining_day} day remaining...renew your plan"/>
        </c:if>    
        
        <script>
            var remaining_day='<c:out value="${remaining_day}"/>';
            var alert_date='<c:out value="${alert_date}"/>';
            
            if(remaining_day!=null)
            {
              //alert(alert_date+'<br> '+remaining_day+' days to expire you plan...renew plan...' );
            }
        </script> 
        
        
        <script>
			var buttons7Click = Array.prototype.slice.call( document.querySelectorAll( '#btn-click button' ) ),
				buttons9Click = Array.prototype.slice.call( document.querySelectorAll( 'button.btn-8g' ) ),
				totalButtons7Click = buttons7Click.length,
				totalButtons9Click = buttons9Click.length;

			buttons7Click.forEach( function( el, i ) { el.addEventListener( 'click', activate, false ); } );
			buttons9Click.forEach( function( el, i ) { el.addEventListener( 'click', activate, false ); } );

			function activate() {
				var self = this, activatedClass = 'btn-activated';

				if( classie.has( this, 'btn-7h' ) ) {
					// if it is the first of the two btn-7h then activatedClass = 'btn-error';
					// if it is the second then activatedClass = 'btn-success'
					activatedClass = buttons7Click.indexOf( this ) === totalButtons7Click-2 ? 'btn-error' : 'btn-success';
				}
				else if( classie.has( this, 'btn-8g' ) ) {
					// if it is the first of the two btn-8g then activatedClass = 'btn-success3d';
					// if it is the second then activatedClass = 'btn-error3d'
					activatedClass = buttons9Click.indexOf( this ) === totalButtons9Click-2 ? 'btn-success3d' : 'btn-error3d';
				}

				if( !classie.has( this, activatedClass ) ) {
					classie.add( this, activatedClass );
					setTimeout( function() { classie.remove( self, activatedClass ) }, 1000 );
				}
			}

			document.querySelector( '.btn-7i' ).addEventListener( 'click', function() {
				classie.add( document.querySelector( '#trash-effect' ), 'trash-effect-active' );
			}, false );
		</script>
                <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>
