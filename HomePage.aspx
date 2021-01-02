<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="OpenOffice.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
     <%--Navigation Bar--%>
        <nav class="navbar navbar-inverse navbar-fixed-top" style="margin-bottom:0px; border-radius:0px;">
        <div class="container-fluid" style="background-color:black;" >
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>                        
            </button>
            <a class="navbar-brand" style="padding:0px;" href="HomePage.aspx"><img src="images/logo.png" class="img-responsive"; style="padding-left:10px;width:170px; height:50px; margin-top:0px; padding-top:0px;"/></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar" style="background-color:black;">
            <ul class="nav navbar-nav navbar-right" style="padding-right:15px;">
                <li><a href="HomePage.aspx#work">How It Works</a></li>
                
                 <li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButtonSignUp_Click">
                     <span class="glyphicon glyphicon-user"></span>  Sign Up</asp:LinkButton> </li> 

                <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButtonLogin_Click">
                     <span class="glyphicon glyphicon-log-in"></span>  Login</asp:LinkButton> </li> 
               
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>

    

    <div class="container-fluid">
        <div class="row" >
            <div class="col-md-12" style="padding-left:0px; margin-left:0px; margin-right-0px; padding-right:0px; margin-top:25px;" >
                <img src="images/mainpage.jpg" class="img-responsive" style="height:600px; width:100%;">
                <div class="text_over_img">
                    <p>Welcome to Jobs4You website<br/> to search any job, online.
                     </p><h3 style="color:#446600; font: bold; margin-top: 9px;margin-bottom: -9px;">Reshape Your Career with us...<br />Search Latest Private Company Jobs in India for 2021-2022. <br />Full time and part time Jobs for Freshers. </h3>
                </div>
                <button class="hire" onclick="hireclick">Career Advice</button>
                <button class="earn" onclick="earnclick">Resume Tips</button>
                  <asp:Button ID="hire" runat="server" class="hire" Text="Career Advice" style="padding-right:20px; padding-left:25px;" PostBackUrl="~/login.aspx"/>
                <asp:Button ID="view" runat="server" class="earn" Text="Resume Tips" style="padding-right:20px; padding-left:25px;" PostBackUrl="~/login.aspx"/>
                
            </div>
        </div>
    </div><%--CONTAINER-FLUID--%>

    <div class="container" id="work">
        <div class="row">
            <div class="col-md-12" style="height:80px; margin-top:15px;" id="bordering">
                <center style=" font-size:30px; font:bold; font-family: 'Raleway', sans-serif;" >HOW DOES IT WORKS?</center></div>
        </div> <%--ROW--%>
        </div><%--Container--%>




        <div class="container" style="background:url('images/employer_work_background.png');margin-top:15px; ">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-5" style=" margin-top:20px; height:500px;">
                <img src="images/employee_work.png" style="width:100%;height:495px;" />
            </div>

            <div class="col-md-5" style=" margin-top:10px;  position:relative;">
               <div class="row">
                   <div class="col-md-12" style=" height:210px; width:100%">
                       <center class="hire_work" STYLE="font-family: 'Raleway', sans-serif;">I Want To Hire</center><br />
                       <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Post a Job Vacancy</span><br /><br />
                       <p style="text-align:justify; color:white; font-size:14px; padding-right:10px;">It's always free to post your job vacancy. You'll automatically begin to receive resumes from our applicants. Alternatively, you can browse through the talent available on our site, and make a direct offer to a applicats instead.</p>
                   </div>
                    <div class="col-md-12" style=" height:135px; width:100%">
                           <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Choose the perfect Applicat</span><br/><br/>
                           <ul style="text-align:justify; color:white; font-size:14px; padding-right:10px; padding-left:50px;">
                               <li>Browse jobseekers profiles</li>
                                <li>Chat in real-time</li>
                                <li>Compare and select the best one</li>
                                <li>Take a interview and your applicant goes to work</li>
                           </ul>
                    </div>
                    <div class="col-md-12" style=" height:150px; width:100%">
                        <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Pay Accordingly!</span><br /><br />
                       <p style="text-align:justify; color:white; font-size:14px; padding-right:10px;">Pay safely using Payment system - release payments according to a decided pattern. You are in control, so you get to make decisions.</p>
                       
                    </div> 
               </div>
            </div>
            <div class="col-md-1"></div>
        </div><%--ROW 1--%>
    </div> <%--Container--%>



    

        <div class="container" style="margin-top:20px;background:url('images/employer_work_background2.png'); ">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-6" style=" margin-top:10px;  position:relative;">
               <div class="row">
                    <div class="col-md-12" style=" height:190px; width:100%;">
                        <center class="find_work"STYLE="font-family: 'Raleway', sans-serif;" >I Want To Work</center><br />
                           <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Choose the perfect Company</span><br/><br/>
                           <ul style="text-align:justify; color:white; font-size:14px; padding-right:10px; padding-left:50px;">
                               <li>Select your skills and expertise</li>
                                <li>Email your resume.</li>
                                <li>Go through the Verification Center checklist</li>
                           </ul>
                    </div>

                   <div class="col-md-12" style=" height:125px; width:100%;" >
                       <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Browse jobs that suit your skills, expertise, price, and schedule</span><br /><br />
                       <p style="text-align:justify; color:white; font-size:14px; padding-right:10px;">We have jobs available for all skills. Maximize your job opportunities by optimizing your filters. Save your search and get alerted when relevant jobs are available.</p>
                   </div>

                    <div class="col-md-12" style=" height:125px; width:100%;">
                        <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Write best in your resume</span><br /><br />
                       <p style="text-align:justify; color:white; font-size:14px; padding-right:10px;">Put your best foot forward and write the best pitch possible. Read the project and let the company know you understand their brief. Tell them why you're the best person for this job. Writing a new brief for each project is more effective than using the same one!</p>
                   </div> 

                   <div class="col-md-12" style=" height:150px; width:100%;">
                        <span class="glyphicon glyphicon-hand-right" style="color:white; font-size:18px; font:bold;"> Get awarded and earn</span><br /><br />
                       <p style="text-align:justify; color:white; font-size:14px; padding-right:10px;">Get ready to work once you get hired. Deliver high quality work and earn the agreed amount.</p>
                       <%-- <button class="browse">Browse Jobs</button>--%>
                    </div> 
               </div>
            </div>

            <div class="col-md-5" style=" margin-top:20px; height:560px;">
                <img src="images/employer_work.png" style="width:100%;height:540px;" />
            </div>
           
        </div><%--ROW 1--%>
    </div> <%--Container--%>



    <div class="container">
        <div class="row" style=" margin-top:25px; ">
            <center style="font-size:26px; font-family: 'Raleway', sans-serif; font:bold;" id="bordering">WHY JOBS4YOU?</center>
        </div>
        <div class="row" style="height:auto;">
            <div class="col-md-3 browse_port" style="height:180px; margin-top:15px; ">
                <center><img class="img-responsive browse_pic" src="images/icons8-browse-folder-64%20(1).png" style="height:35px; width:35px; margin-top:20px;"  /></center>
                <h4 style="font:bold; text-align:center;">Browse Portfolios</h4>
                <h5 style="text-align:justify; padding-top:10px;">Find professionals you can trust by browsing their samples of previous work and reading their profile reviews.</h5>
            </div>

            <div class="col-md-3 browse_port" style="height:180px; margin-top:15px; ">
                <center><img class="img-responsive browse_pic" src="images/icons8-collaboration-female-male-80.png" style="height:35px; width:35px; margin-top:20px;"  /></center>
                <h4 style="font:bold; text-align:center;">1000+ Candidates</h4>
                <h5 style="text-align:justify; padding-top:10px;">Receive applications from our talented jobseekers within seconds.</h5>
            </div>

            <div class="col-md-3 browse_port" style="height:180px; margin-top:15px; ">
                <center><img class="img-responsive browse_pic" src="images/icons8-job-seeker-64.png" style="height:35px; width:35px; margin-top:20px;"  /></center>
                <h4 style="font:bold; text-align:center;">1500+ Jobs</h4>
                <h5 style="text-align:justify; padding-top:10px;">Applicant can choose the company according to his skills.</h5>
            </div>

            <div class="col-md-3 browse_port" style="height:180px; margin-top:15px; ">
                <center><img class="img-responsive browse_pic" src="images/icons8-group-of-companies-48.png" style="height:35px; width:35px; margin-top:20px;"  /></center>
                <h4 style="font:bold; text-align:center;">500+ Companies</h4>
                <h5 style="text-align:justify; padding-top:10px;">Large number of companies available to provide jobs to the candidates.</h5>
            </div>
     

        </div>
    </div><%--Container--%>
    <div class = "container-fluid">

        <div class = "row">
            <div class = "col-md-12">
                <div class = "carousel slide" data-ride = "carousel" id = "quote-carousel">
 
                    <!-- Carousel Slides / Quotes -->
                    <div class = "carousel-inner text-center">
 
                        <!-- Quote 1 -->
                        <div class = "item active">
                            <blockquote>
                                <div class = "row">
                                    <div class = "col-sm-8 col-sm-offset-2">
                                        <p style="font-size:17px; font:bold; text-align:justify;"> "Jobs4You provided us the opportunity to outsource design tasks to very well-qualified and talented providers. Our experience as "contest holder" was outstanding: all contest participants were courteous, knowledgable and professional. There is just some great talent on this site ready to help at amazing rates with rapid turnaround." </p>
                                        <small> Paul Iliya </small>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                        <!-- Quote 2 -->
                        <div class = "item">
                            <blockquote>
                                <div class = "row">
                                    <div class = "col-sm-8 col-sm-offset-2">
                                        <p> "Jobs4You provided us the opportunity to outsource design tasks to very well-qualified and talented providers. Our experience as "contest holder" was outstanding: all contest participants were courteous, knowledgable and professional. There is just some great talent on this site ready to help at amazing rates with rapid turnaround." </p>
                                        <small> Dafeng Guo </small>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                        <!-- Quote 3 -->
                        <div class = "item">
                            <blockquote>
                                <div class = "row">
                                    <div class = "col-sm-8 col-sm-offset-2" >
                                        <p> "Jobs4You provided us the opportunity to outsource design tasks to very well-qualified and talented providers. Our experience as "contest holder" was outstanding: all contest participants were courteous, knowledgable and professional. There is just some great talent on this site ready to help at amazing rates with rapid turnaround."</p>
                                        <small> Balazs Moldovanyi </small>
                                    </div>
                                </div>
                            </blockquote>
                        </div>
                    </div>
                    <!-- Bottom Carousel Indicators -->
                    <ol class = "carousel-indicators">
                        <li data-target = "#quote-carousel" data-slide-to = "0" class = "active"> <img class = "img-responsive " img src="images/1.jpg"  alt="">
                        </li>
                        <li data-target = "#quote-carousel" data-slide-to= "1"> <img class = "img-responsive" img src="images/3.jpg"alt = "">
                        </li>
                        <li data-target = "#quote-carousel" data-slide-to = "2"><img class = "img-responsive" img src="images/2.jpg" alt="">
                        </li>
                    </ol>
 
                    <!-- Carousel Buttons Next/Prev -->
                    <a data-slide = "prev" href = "#quote-carousel" class = "left carousel-control"><i class = "fa fa-chevron-left"> </i> </a>
                    <a data-slide = "next" href = "#quote-carousel" class = "right carousel-control"><i class = "fa fa-chevron-right"></i></a>
                </div>
            </div>
        </div>
       
    </div>
   
    




</asp:Content>
