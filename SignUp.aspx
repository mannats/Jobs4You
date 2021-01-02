<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="OpenOffice.WebForm2" %>
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
                
                 <%--<li><asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButtonSignUp_Click">
                     <span class="glyphicon glyphicon-user"></span>Sign Up</asp:LinkButton> </li> --%>

                <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButtonLogin_Click">
                     <span class="glyphicon glyphicon--log-in"></span>Login</asp:LinkButton> </li> 
               
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>


<div class="container-fluid" style="background-image:url(images/job2.jpg);background-repeat: no-repeat; background-size: cover; background-position: center center; padding-bottom:40px; margin-bottom:-15px;">

    <div class="container" style="margin-top:100px; margin-bottom:30px;">
        <div class="row">
             <div class="col-md-3"></div>
        <div class="col-md-6" style="box-shadow: 0 0 11px rgba(33,33,33,.2);">
            <form action="#" method="post" id="fileForm" role="form">
             <center><h3 style= "font:bold; font-family: 'Raleway', sans-serif; color:#404040;padding-top:20px;">SIGNUP FORM</h3>
             <span class="req"><small> required *</small></span></center>
                <hr />

            
             <div class="form-group">
                   <label for="username"><span class="req">* </span> User name:  <small>This will be your login user name</small> </label> 
                    <input class="form-control" required type="text" name="username" id = "username" onkeyup = "Validate(this)" placeholder="minimum 6 letters" runat="server"/>  
                        <div id="errLast"></div>
            </div>
           
            <div class="form-group">
                <label for="email"><span class="req">* </span> Email Address: </label> 
                    <input class="form-control" required type="text" name="email" id = "email"  onchange="email_validate(this.value);" runat="server" />   
                        <div class="status" id="status"></div>
            </div>

           

            <div class="form-group">
                <label for="password"><span class="req">* </span> Password: </label>
                    <input required type="password" class="form-control inputpass" maxlength="16" id="password" runat="server" />

                

            </div>

            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

                <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">   <label for="terms">I agree with the <a href="#" title="You may read our terms and conditions by clicking on this link">terms and conditions</a> for Registration.</label><span class="req">* </span>
            </div>

            <div class="form-group">
            <center><asp:Button ID="signup" class="btn btn-success" runat="server" Text="Submit" OnClick="signup_click" /></center>
               
            </div>
                   
            </form><!-- ends register form -->

<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
        </div><!-- ends col-6 -->
          
        </div>
    </div>
    </div>




</asp:Content>
