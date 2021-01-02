<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OpenOffice.WebForm3" %>
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
                     <span class="glyphicon glyphicon-user"></span>Sign Up</asp:LinkButton> </li> 

              <%--  <li><asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButtonLogin_Click">
                     <span class="glyphicon glyphicon--log-in"></span>Login</asp:LinkButton> </li> --%>
               
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>



<div class="container-fluid" style="background-image:url(images/job2.jpg);background-repeat: no-repeat; background-size: cover; background-position: center center; padding-bottom:40px; margin-bottom:-15px;">

        <div class="container" style="margin-top:100px; margin-bottom:20px;">
            <div class="row">
                     <div class="col-md-3"></div>
                <div class="col-md-6" style="box-shadow: 0 0 11px rgba(33,33,33,.2);">
                      <center><h3 style= "font:bold; font-family: 'Raleway', sans-serif; color:#404040;padding-top:20px;">LOGIN FORM</h3>
             <span class="req"><small> required *</small></span></center>
                <hr />
          
          <form action="/#.php" method="post" id="LoginForm"  role="form">
      
            <div class="form-group">
              <label for="uname">Username:</label>
              <input type="text" class="form-control" id="uname" runat="server" placeholder="Enter username" name="uname" required>
      
            </div>
            <div class="form-group">
              <label for="pwd">Password:</label>
              <input type="password" class="form-control" id="pwd" runat="server" placeholder="Enter password" name="pwd" required>
     
            </div>
            <div class="form-group">
               <center> <asp:Button ID="login" class="btn btn-success" runat="server" Text="Login" name="login" OnClick="Login_Click" /></center>
            </div>
            <div class="form-group">
                <asp:Label ID="errormess" runat="server" Text="" ForeColor="Red" Font-Bold="true" />
            </div>

              <div class="form-group" style="margin-bottom:15px; padding-bottom:10px;">
               <center> <span class="req"><small>Don't Have an Account? <a href="SignUp.aspx">SignUp</a></small></span></center>
            </div>

          </form>
        </div>
       </div>
            <div class="col-md-3"></div>
            </div>
</div>
</asp:Content>

