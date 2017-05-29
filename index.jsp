

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        
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

<script language="javascript" src="js/circularnav.js"></script>
<script language="javascript" src="js/bootstrap.js"></script>
<script language="javascript" src="js/bootstrap.min.js"></script>
<script language="javascript" src="js/classie.js"></script>
<script language="javascript" src="js/custom.js"></script>
<script language="javascript" src="js/jquery-ui.js"></script>
<script language="javascript" src="js/jquery.min.js"></script>
<script language="javascript" src="js/jquery.parallax.js"></script>
<script language="javascript" src="js/jquery.prettyPhoto.js"></script>
<script language="javascript" src="js/jquery.sticky.js"></script>
<script language="javascript" src="js/modernizr.custom.js"></script>
<script language="javascript" src="js/spectrum.js"></script>




        <title>JSP Page</title>
    </head>
    <body>
        
        
       <jsp:include page="header.jsp"></jsp:include>     
        <div id="main">
         <!-- Slider Start-->
         
         <div class="fullwidthbanner-container">
         
             <div class="fullwidthbanner rslider">
             
                 <ul>
                 <li data-transition="fade" data-slotamount="7" data-masterspeed="500"  data-saveperformance="on">
                     <img src="images/slider-bg-1.jpg"  alt="Pixma" data-lazyload="images/slider-bg-1.jpg" data-bgposition="center top" data-bgfit="cover" data-bgrepeat="no-repeat">

                 <%-- <div class="caption modern_big_bluebg h1 lft tp-caption start"
                              data-x="40"
                              data-y="85"
                              data-speed="700"
                              data-endspeed="800"
                              data-start="1000"
                              data-easing="easeOutQuint"
                              data-endeasing="easeOutQuint">
                             <h3>PREMIUM BUSINESS TEMPLATE</h3>
                         </div>
                         <div class="caption list_slide lfb tp-caption start"
                              data-easing="easeOutExpo"
                              data-start="1400"
                              data-speed="1050"
                              data-y="180"
                              data-x="40">
                             <div class="list-slide">
                                 <i class="fa fa-camera slide-icon"></i>
                                 <h5 class="dblue"> 10 predefined color skins </h5>
                             </div>
                         </div>
                         <div class="caption list_slide lfb tp-caption start"
                              data-easing="easeOutExpo"
                              data-start="1800"
                              data-speed="1200"
                              data-y="220"
                              data-x="40">
                             <div class="list-slide">
                                 <i class="fa fa-search slide-icon"></i>
                                 <h5 class="dblue"> SEO optimized template files </h5>
                             </div>
                         </div>
                         <div class="caption list_slide lfb tp-caption start"
                              data-easing="easeOutExpo"
                              data-start="2200"
                              data-speed="1350"
                              data-y="260"
                              data-x="40">
                             <div class="list-slide">
                                 <i class="fa fa-code slide-icon"></i>
                                 <h5 class="dblue"> Working Ajax Contact Form </h5>
                             </div>
                         </div>
                         <div class="caption lfb caption_button_1 fadeout tp-caption start"
                              data-x="40"
                              data-y="330"
                              data-speed="900"
                              data-endspeed="300"
                              data-start="2700"
                              data-hoffset="-70"
                              data-easing="easeOutExpo">
                             <a class="btn-special hidden-xs btn-grey" href="#">Learn More</a>
                         </div>
                         <div class="caption lfb caption_button_2 fadeout tp-caption start"
                              data-x="210"
                              data-y="330"
                              data-speed="800"
                              data-endspeed="300"
                              data-start="2900"
                              data-hoffset="70"
                              data-easing="easeOutExpo">
                             <a class="btn-special hidden-xs btn-color" href="#">Buy Now</a>
</div>--%>
                     </li>
                     <!-- THE FIRST SLIDE -->
         		</ul>
</div>
</div>
            <div class="slogan bottom-pad-small">
               <div class="container">
                  <div class="row">
                     <div class="slogan-content">
                        <div class="col-lg-9 col-md-9">
                           <h2 class="slogan-title">We design and develop the best website's for customers!</h2>
                        </div>
                        <div class="col-lg-3 col-md-3">
                           <div class="get-started">
                               <a href="registration.jsp"><button class="btn btn-special btn-color pull-right">registration here</button></a>
                           </div>
</div>
                        <div class="clearfix"></div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Slogan End--> 
          <!-- Main Content start-->
          <div class="main-content" align="center">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="content-box big ch-item bottom-pad-small">
                            <div class="ch-info-wrap">
                              <div class="ch-info">
                                 <div class="ch-info-front ch-img-1"><i class="fa fa-arrows-alt"></i></div>
                                 <div class="ch-info-back">
                                    <i class="fa fa-arrows-alt"></i>
                                 </div>
                              </div>
                           </div>
                           <div class="content-box-info">
                              <h3>Work Provider</h3>
                              <p>
                              	Work Provider Can register him/herself in the site and can see, update their profile Can upload project/tasks to be done User can search the work.
                              Can see the details of jobseeker who bid for project.
                              Can download work done by work seeker
                              	Can pay using paypal system.
                              Can get email and sms alerts if want.
                              	Can give feedback.

                              </p>
                              <a href="loggedin_provider.jsp">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="content-box big ch-item bottom-pad-small">
                           <div class="ch-info-wrap">
                              <div class="ch-info">
                                 <div class="ch-info-front ch-img-1"><i class="fa fa-eye"></i></div>
                                 <div class="ch-info-back">
                                    <i class="fa fa-eye"></i>
                                 </div>
                              </div>
                           </div>
                           <div class="content-box-info">
                              <h3>Work Seeker</h3>
                              <p>
                             	Work Seeker Can register him/herself in the site and can see, update their profile Can bid for uploaded project/task.
                            	If bid is approved then can get task and upload work done.
                            	Payment can be done using paypal system.
                            	Can get email and sms alerts if want.
                            	Can give exam on the basis of knowledge type they have.
                            	Can get rewards on the basis of exams.
                            	Can give feedback. 

                              </p>
                              <a href="loggedin_seeker.jsp">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-4 col-sm-4 col-xs-4">
                        <div class="content-box big ch-item">
                           <div class="ch-info-wrap">
                              <div class="ch-info">
                                 <div class="ch-info-front ch-img-1"><i class="fa fa-edit"></i></div>
                                 <div class="ch-info-back">
                                    <i class="fa fa-edit"></i>
                                 </div>
                              </div>
                           </div>
                           <div class="content-box-info">
                              <h3>Test Your Knowledge</h3>
                              <p>
                                 For Test Your Knowledge appear exam...check your result and also get reward base on your score..you can select subject base on your subject and your skills..
                              </p>
                              <a href="test.jsp">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Main Content end-->

            <!-- Product Content Start-->
            <div class="product-lead bottom-pad">
            	<div class="bg-overlay">
                   <div class="container">
                      <div class="row">
                         <div class="col-md-6 col-sm-12 col-xs-12 text-center animate_afl d1">
                             <img src="images/img.jpg" alt="iPhone5c" height="450px">
                         </div>
                         <div class="col-md-4 col-sm-12 col-xs-12 animate_afr d3">
                            <div class="app-service">
                               <h3>WorkQuest App Services</h3>
                               <h4>Being able to work from anywhere at any time</h4>
                               <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.
                               </p>
                               <p>
                                  
                               </p>
                               <div class="divider"></div>
                               <div class="learnmore">
                                  <a class="btn-special btn-grey" href="#">Learn More</a>
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
            	</div>
            </div> 
            <!-- Product Content end--> 
            <!-- Recent works start-->
            <div class="bottom-pad">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 animate_afl d1">
                        <h3 class="title">Recent Works</h3>
                     </div>
                  </div>
                  <div class="row">
                     <div class="col-lg-12 col-md-12 col-xs-12">
                        <div class="row portfolio-pad">
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d2">
                              <div class="portfolio-item">
                                 <a href="images/portfolio-1.jpg" class="portfolio-item-link" data-rel="prettyPhoto" >
                                    <span class="portfolio-item-hover"></span>
                                    <span class="fullscreen"><i class="fa fa-search"></i></span><img src="images/portfolio-1.jpg" alt=" "/>
                                 </a>
                                 <div class="portfolio-item-title">
                                    <a href="single-project.html">Insta Genius</a>
                                       <p>
                                          Design / Development
                                       </p>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                           </div>
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d3">
                               <div class="portfolio-item">
                                  <a href="images/portfolio-2.jpg" class="portfolio-item-link" data-rel="prettyPhoto" >
                                  <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img src="images/portfolio-2.jpg" alt=" "/>
                                  </a>
                                  <div class="portfolio-item-title">
                                     <a href="single-project.html">YA Sound</a>
                                     <p>
                                        Sound / Audio
                                     </p>
                                  </div>
                                  <div class="clearfix"></div>
                               </div>
                           </div>
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d4">
                               <div class="portfolio-item">
                                  <a href="images/portfolio-3.jpg" class="portfolio-item-link" data-rel="prettyPhoto" >
                                  <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img src="images/portfolio-3.jpg" alt=" "/>
                                  </a>
                                  <div class="portfolio-item-title">
                                     <a href="single-project.html">Nike Shoe</a>
                                     <p>
                                        Apareal / Shoe
                                     </p>
                                  </div>
                                  <div class="clearfix"></div>
                               </div>
                           </div>
                        </div>
                        <div class="row">
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d5">
                               <div class="portfolio-item">
                                  <a href="images/portfolio-4.jpg" class="portfolio-item-link" data-rel="prettyPhoto" >
                                  <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img src="images/portfolio-4.jpg" alt=" "/>
                                  </a>
                                  <div class="portfolio-item-title">
                                     <a href="single-project.html">Camera Icon</a>
                                     <p>
                                        Icon / Device
                                     </p>
                                  </div>
                                  <div class="clearfix"></div>
                               </div>
                           </div>
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d6">
                               <div class="portfolio-item">
                                  <a href="images/portfolio-7.jpg" class="portfolio-item-link" data-rel="prettyPhoto" >
                                  <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img src="images/portfolio-7.jpg" alt=" "/>
                                  </a>
                                  <div class="portfolio-item-title">
                                     <a href="single-project.html">Penguin</a>
                                     <p>
                                        Animal / Nature
                                     </p>
                                  </div>
                                  <div class="clearfix"></div>
                               </div>
                           </div>
                           <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12 item animate_afc d7">
                               <div class="portfolio-item">
                                  <a href="images/portfolio-6.jpg" class="portfolio-item-link" data-rel="prettyPhoto" >
                                  <span class="portfolio-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img src="images/portfolio-6.jpg" alt=" "/>
                                  </a>
                                  <div class="portfolio-item-title">
                                     <a href="single-project.html">Sound Box</a>
                                     <p>
                                        Audio / Sound
                                     </p>
                                  </div>
                                  <div class="clearfix"></div>
                               </div>
                           </div>
                        </div>
                           <div class="clearfix"></div>
                     </div>
                  </div>
               </div>
            </div>
            <!-- Recent work end-->
			<!-- Features start --> 
            
            <div class="features bottom-pad">
            <div class="container">
                  <div class="row">
                     <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <h3 class="title">Our Services</h3>
                        <div class="row">
                           <div class="circular-nav">
                              <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12 animate_afl animate_start">
                                 <div id="cn-tabs">
                                    <div class="service service-1" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>Premium Sliders</h4>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.</p>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.</p>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                          <div class="clearfix"></div>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-2" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>Unlimited Colors</h4>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                          <div class="clearfix"></div>
                                       </div>
                                    </div>
                                    <div class="service service-3" style="display: none;"> 
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>Shortcodes</h4>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-4" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>300+ Icons</h4>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-5" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>HTML5 / CSS3</h4>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.</p>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.</p>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. The key findings under this theme are that the freelance sector has grown. The research and its findings have implications for human resources managers employing public relations staff, public relations managers and directors who commission freelance practitioners and the freelancers themselves. Jobseekers can get work of web designing, logo designing, content writing, programming, etc. and service provider wants job seekers who work at their own home. WorkQuest assures job seeker that they can work at home and at any time. Simply WorkQuest is a bridge between the free lancers and work providers.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-6" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>After Sale Support</h4>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-7" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>Google Fonts</h4>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-8" style="display: none;">
                                       <div class="cn-content" style="opacity: 0;">
                                          <h4>Ajax Contact Form</h4>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                    <div class="service service-9" style="display: block;">
                                       <div class="cn-content" style="opacity: 1;">
                                          <h4>Valid HTML Files</h4>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. </p>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. </p>
                                          <p>WorkQuest is job services provisioning product for jobseekers & job providers. It involves an investigation into freelancing in the public relations industry with data collected from both freelancers and the work providers. A majority of clients claim an increased use of freelancers in the current era and this was linked to a need for flexibility and new business development. .</p>
                                          <a style="cursor: pointer;">Read More <i class="fa fa-angle-right"></i><i class="fa fa-angle-right"></i></a>
                                       </div>
                                       <div class="clearfix"></div>
                                    </div>
                                 </div>
                                 <div class="clearfix"></div>
                              </div>
                              <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 col-lg-offset-1 col-md-offset-1 animate_afr animate_start">
                                 <div class="cn-wrapper" style="border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; overflow: hidden;">
                                    <ul>
                                       <li class="circle-1 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(-10deg) skew(50deg);">
                                           <a class="active" style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;"><span class="fa fa-picture-o"></span></a></li>
                                       <li class="circle-2 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(30deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-rocket"></span></a></li>
                                       <li class="circle-3 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(70deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-puzzle-piece"></span> </a></li>
                                       <li class="circle-4 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(110deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-thumbs-o-up"></span></a></li>
                                       <li class="circle-5 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(150deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-html5"></span></a></li>
                                       <li class="circle-6 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(190deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-user"></span></a></li>
                                       <li class="circle-7 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(230deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-google-plus"></span> </a></li>
                                       <li class="circle-8 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(270deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-envelope-o"></span></a></li>
                                       <li class="circle-9 circle" style="left: 50%; margin-top: -1.4em; margin-left: -10em; overflow: hidden; -webkit-transform: rotate(310deg) skew(50deg);"><a style="-webkit-transform: skew(-50deg) rotate(-70deg) scale(1); border-top-left-radius: 50%; border-top-right-radius: 50%; border-bottom-right-radius: 50%; border-bottom-left-radius: 50%; text-align: center; padding-top: 2em; cursor: pointer;" class=""><span class="fa fa-hand-o-right"></span></a></li>
                                    </ul>
                                    <div class="clearfix"></div>
                                 </div>
                              </div>
                              <div class="clearfix"></div>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
             <!-- Features End --> 
             <!-- Latest Posts start --> 
            <div class="latest-posts">
               <div class="container">
                  <div class="row">
                     <div class="col-lg-12 col-md-12 com-sm-12 col-xs-12">
                        <h3 class="title">Latest Posts</h3>
                     </div>
                     <div class="clearfix"></div>
                     <div class="blog-showcase col-lg-12 col-md-12 col-sm-12 col-xs-12 animate_afb d1">
                        <ul>
                           <li class="">
                              <div class="blog-showcase-thumb col-lg-4">
                                 <div class="post-body">
                                    <a class="post-item-link" href="images/portfolio-6.jpg" data-rel="prettyPhoto"><span class="post-item-hover">
                                    </span><span class="fullscreen"><i class="fa fa-search"></i></span><img alt="" src="images/portfolio-6.jpg">
                                    </a>
                                 </div>
                              </div>
                              <div class="blog-showcase-extra-info col-lg-4">
                                 <span><a href="#">Sep 11th, 2013</a></span>
                                 <h4><a href="#" class="title">Blog post title</a></h4>
                                 <p>Mauris sed mauris bibendum est imperdiet porttitor tincidunt at lorem. Proin augue massa</p>
                                 <a href="#">Read more <i class="fa fa-angle-double-right"></i></a>
                              </div>
                           </li>
                           <li>
                              <div class="blog-showcase-thumb col-lg-4">
                                 <div class="post-body">
                                    <a class="post-item-link" href="images/portfolio-1.jpg" data-rel="prettyPhoto"><span class="post-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img alt="" src="images/portfolio-1.jpg"></a>
                                 </div>
                              </div>
                              <div class="blog-showcase-extra-info col-lg-4">
                                 <span><a href="#">Sep 11th, 2013</a></span>
                                 <h4><a href="#" class="title">Blog post title</a></h4>
                                 <p>Mauris sed mauris bibendum est imperdiet porttitor tincidunt at lorem. Proin augue massa</p>
                                 <a href="#">Read more <i class="fa fa-angle-double-right"></i></a>
                              </div>
                           </li>
                           <li class="blog-first-el">
                              <div class="blog-showcase-thumb col-lg-4">
                                 <div class="post-body">
                                    <a class="post-item-link" href="images/portfolio-3.jpg" data-rel="prettyPhoto"><span class="post-item-hover"></span><span class="fullscreen"><i class="fa fa-search"></i></span><img alt="" src="images/portfolio-3.jpg"></a>
                                 </div>
                              </div>
                              <div class="blog-showcase-extra-info col-lg-4">
                                 <span><a href="#">Sep 11th, 2013</a></span>
                                 <h4><a href="#" class="title">Blog post title</a></h4>
                                 <p>Mauris sed mauris bibendum est imperdiet porttitor tincidunt at lorem. Proin augue massa</p>
                                 <a href="#">Read more <i class="fa fa-angle-double-right"></i></a>
                              </div>
                           </li>
                        </ul>
                        <div class="clearfix"></div>
                     </div>
                  </div>
                  <div class="divider"></div>
               </div>
            </div>
            <!-- Latest Posts End -->
           <!-- Our Clients Start-->
            <div class="our-clients">
            	<div class="bg-overlay">
                   <div class="container">
                      <div class="row">
                         <div class="client">
                            <div class="client-logo">
                               <div class="col-lg-8 col-md-8 col-sm-6 col-xs-12">
                                  <div class="clients-title">
                                     <h3 class="title">Our Clients</h3>
                                     <div class="carousel-controls pull-right">
                                        <a class="prev" href="#client-carousel" data-slide="prev"><i class="fa fa-angle-left"></i></a>
                                        <a class="next" href="#client-carousel" data-slide="next"><i class="fa fa-angle-right"></i></a>
                                        <div class="clearfix"></div>
                                     </div>
                                  </div>
                                  <div class="clearfix"></div>
                                  <div class="row">
                                     <div id="client-carousel" class="client-carousel carousel slide">
                                        <div class="carousel-inner">
                                           <div class="item active">
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d1">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-1.png"></a></div>
                                              </div>
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d2">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-2.png"></a></div>
                                              </div>
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d3">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-3.png"></a></div>
                                              </div>
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item animate_afc d4">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-4.png"></a></div>
                                              </div>
                                           </div>
                                           <div class="item">
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-5.png"></a></div>
                                              </div>
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-6.png"></a></div>
                                              </div>
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-7.png"></a></div>
                                              </div>
                                              <div class="col-lg-3 col-md-3 col-sm-3 col-xs-6 item">
                                                 <div class="item-inner"><a href="#"><img alt="Upportdash" src="images/logo-8.png"></a></div>
                                              </div>
                                           </div>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                               <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                                  <!-- Testimonials Widget Start -->
                                  <div class="row ">
                                     <div class="testimonials widget">
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                           <div class="testimonials-title">
                                              <h3 class="title">Testimonials</h3>
                                           </div>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div id="testimonials-carousel" class="testimonials-carousel slide animate_afr d5">
                                           <div class="carousel-inner">
                                               
                                               
                                             <%!
	Connection con;
	Statement stmt;
	ResultSet rs;
	%>
        <%
          
          
           
            
                Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost/workq","root","");
		stmt=con.createStatement();
               rs=stmt.executeQuery("select feedback from testimonial where status='enabled'"); 
               int i=1;
               String st="";
              while(rs.next())
            {
            String s=rs.getString("feedback");
            
             if(i==1)
                 st="item active";
             else
                 
                 st="item";  
             i++;
            %>                                   
                                               
                                               
                                              <div class="<%=st%>">
                                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="testimonial item">
                                                       <p>
                                                          <%=s%>
                                                       </p>
                                                       <div class="testimonials-arrow">
                                                      
                                                       </div>
                                                       <div class="author">
                                                          <div class="testimonial-image "><img alt="" src="images/team-member-1.jpg"></div>
                                                          <div class="testimonial-author-info">
                                                             <a href="#"><span class="color">Monica Sing</span></a> FIFO Themes
                                                          </div>
                                                       </div>
                                                    </div>
                                                 </div>
                                              </div>
                                               
            <%
            } 
            
            %>                                 
                                               
                                               
                                              <%--<div class="item">
                                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="testimonial item">
                                                       <p>
                                                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                                       </p>
                                                       <div class="testimonials-arrow">
                                                       </div>
                                                       <div class="author">
                                                          <div class="testimonial-image "><img alt="" src="images/team-member-2.jpg"></div>
                                                          <div class="testimonial-author-info">
                                                             <a href="#"><span class="color">Monzurul Haque</span></a> FIFO Themes
                                                          </div>
                                                       </div>
                                                    </div>
                                                 </div>
                                              </div>
                                              <div class="item">
                                                 <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                    <div class="testimonial item">
                                                       <p>
                                                          Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type.
                                                       </p>
                                                       <div class="testimonials-arrow">
                                                       </div>
                                                       <div class="author">
                                                          <div class="testimonial-image "><img alt="" src="images/team-member-3.jpg"></div>
                                                          <div class="testimonial-author-info">
                                                             <a href="#"><span class="color">Carol Johansen</span></a> FIFO Themes
                                                          </div>
                                                       </div>
                                                    </div>
                                                 </div>
                                              </div>--%>
                                           </div>
                                        </div>
                                     </div>
                                  </div>
                               </div>
                            </div>
                         </div>
                      </div>
                   </div>
            	</div>
            </div>
            <!-- Our Clients End -->  
         </div>
         <!-- Content End -->
         <jsp:include page="footer.jsp"></jsp:include>
          <!-- Scroll To Top --> 
         <a href="#" class="scrollup"><i class="fa fa-angle-up"></i></a>
        </div>
        
        
        
        
        
       <%--<form action="registration" method="post">
        <div>
            <a href="login.jsp">login</a>
        </div>
        <div>
            
          <a href="registration.jsp">registration</a>  
        </div>
           <div>
            
          <a href="provider_profile.jsp">edit ur profile</a>  
        </div>
        </form>--%>
    </body>
</html>
