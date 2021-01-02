<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="inviteapplicants.aspx.cs" Inherits="OpenOffice.inviteapplicants" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
    hr{
  border-top: 1px solid #666666 ;
  width:60%;
}
    td {
    padding-bottom:10px;
    }
    th {
           vertical-align:top;
    }
    .btn {
        padding: 8px 28px;
        margin-top:10px;
       margin-bottom:15px;
    }
</style>
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
                <li><a href="jobspost.aspx">Post Jobs</a></li>
                <li><a href="viewjobs.aspx">View Jobs</a></li>
                <li><a href="homepge.aspx#work">How It Works</a></li>
                <li><a href="Resume.aspx">Resume Tips</a></li>
                <li><a href="career.aspx">Career Advice</a></li>
               <asp:Button ID="logout" onMouseOver="this.style.color='white'" onMouseOut="this.style.color='gray'" style="border:none; color:gray; background-color:black; margin-top:13px;" runat="server" Text="Logout" name="logout" OnClick="sign_out_btn" />
                <li style="color:white; font-size:15px; margin-right:20px;"><span class="glyphicon glyphicon-user" style="color:white; padding-left:15px; padding-top:16px;"></span> Hello 
                    <asp:Label ID="user" runat="server" Text="" ForeColor="White" Font-Bold="true" />!</li>  
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>

<div class="container-fluid" style="background-image:url(images/job2.jpg);background-repeat: no-repeat; background-size: cover; background-position: center center; padding-bottom:40px; margin-bottom:-15px;">

    <div class="container bootstrap snippet">
    <div class="row">
  		<div class="col-sm-3"></div><!--/col-2--> 
        <div class="col-sm-6" style="margin-top:100px; margin-bottom:35px; height:auto; box-shadow: 0 0 11px rgba(33,33,33,.2); ">
            <center><h3 style= "font:bold; font-family: 'Raleway', sans-serif; color:#404040;padding-top:20px;">INVITE APPLICANTS FOR A JOB!!</h3></center>
            <hr/>
             
                    <div>
                     <table align="center">
                        
                        <tr>
                            <th>From:</th>
                            <td><asp:TextBox ID="frommess" runat="server"></asp:TextBox></td>
                        </tr>
                        <br />
                        <tr>
                            <th>Subject:</th>
                            <td><asp:TextBox ID="txtSubject" runat="server"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>To:</th>
                            <td><asp:TextBox ID="tomess" runat="server"></asp:TextBox></td>
                        </tr>
                         <tr>
                             <th>Body:</th>
                            <td><asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Columns="30" Rows="10" ></asp:TextBox></td>
                        </tr>
                        <tr>
                            <th>Attachment:</th> 
                            <td><asp:FileUpload ID="fileUploader" runat="server" /> </td>
                        </tr>
                        <tr>
                            
                            <td><asp:Button ID="btnSubmit" class="btn btn-success" Text="Send" runat="server" onclick="sendmail" /> </td>
                        </tr>
                     </table>
                    </div>
        </div>
        </div>
        </div>
</div> 
</asp:Content>
