

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%--  <form>
            <table>
                <tr>
                    <td>
                        Name:
                    </td>
                    <td>
                        <input type="text" id="nm" name="nm"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        City:
                    </td>
                    <td>
                        <input type="text" id="city" name="city"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        State:
                    </td>
                    <td>
                        <input type="text" id="state" name="state"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Item-name:
                    </td>
                    <td>
                        <input type="text" id="item" name="item"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Effect:
                    </td>
                    <td>
                        <input type="text" id="efct" name="efct"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Size:
                    </td>
                    <td>
                        <input type="text" id="size" name="size"/> 
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Total cost:
                    </td>
                    <td>
                        <input type="text" id="cost" name="cost"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        Quantity:
                    </td>
                    <td>
                        <input type="text" id="quantity" name="quantity"/>
                    </td>
                </tr>
                
                <tr>
                    <td>
                        <input type="submit" value="order">
                    </td>
                </tr>
            </table>
</form>--%>
        <%
          String redirecturl = "";

        //Mention URL to redirect content to paypal site
        redirecturl += "https://www.sandbox.paypal.com/cgi-bin/webscr?cmd=_xclick&business=canvasprintingsystem@gmail.com" ;
        
        String name=request.getParameter("nm");
        String city=request.getParameter("city");
        String state=request.getParameter("state");
        String amt=request.getParameter("cost");
        String quntity=request.getParameter("quntity");
        
        //First name i assign static based on login details assign this value
        redirecturl += "&first_name=name";

        //City i assign static based on login user detail you change this value
        redirecturl += "&city=city";

        //State i assign static based on login user detail you change this value
        redirecturl += "&state=gujarat";

        //Product Name
        redirecturl += "&item_name=canvas";

        //Product Amount
        //lb_Footer_total = (Label)(gv1.FooterRow.FindControl("lbl_total")); //*** binding footer control with total.
        redirecturl += "&amount=cost" ;

        //Business contact id
        //redirecturl += "&business=nravindranmca@gmail.com";

        //Shipping charges if any
       // redirecturl += "&shipping=5";

        //Handling charges if any
       // redirecturl += "&handling=5";

        //Tax amount if any
       // redirecturl += "&tax=5";

        //Add quatity i added one only statically 
        redirecturl += "&quantity=quntity";

        //Currency code 
        redirecturl += "&currency=USD";

        //Success return page url
        //redirecturl += "&return=" + ConfigurationManager.AppSettings["SuccessURL"].ToString();
       
        redirecturl += "&return=http://localhost:8084/canvas/index.jsp";

        //Failed return page url
        //redirecturl += "&cancel_return=" + ConfigurationManager.AppSettings["FailedURL"].ToString();
        redirecturl += "&cancel_return=Failed.jsp";

        //Session["ss"] = null;
        response.sendRedirect(redirecturl);
        %>
    </body>
</html>
