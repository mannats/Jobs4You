<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="showapplicants.aspx.cs" Inherits="OpenOffice.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
       <style type="text/css">
      
Table th {
  text-align: left;
  padding: 12px;
 /* width:40%;*/
}
Table  {
  text-align: left;
  padding: 12px;
  width:100%;
}

.column {
  margin-bottom: 16px;
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
}

.button:hover {
  background-color: #555;
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
                <li><a href="jobspost.aspx">Post Job</a></li>
                <li><a href="Homepge.aspx#work">How It Works</a></li>
                <li><a href="career.aspx">Career Advice</a></li>
                <li><a href="Resume.aspx">Resume Tips</a></li>
                <li style="color:white; font-size:15px; margin-right:20px;"><span class="glyphicon glyphicon-user" style="color:white; padding-left:15px; padding-top:16px;"></span> Hello User!</li> 
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>

<div class="container-fluid" style="background-image:url(images/job9.jpg); margin-bottom:10px; background-repeat: no-repeat; background-size: cover; background-position: center center; margin-bottom:-15px;">   

    <div class="container" style="margin-top:100px; height:auto; box-shadow: 0 0 11px rgba(33,33,33,.2);  background-color:#f2f2f2; margin-bottom:30px;">
        
        <div class="row">
                 <div class="col-md-12" style="box-shadow: 0 0 11px rgba(33,33,33,.2); padding-top:35px; width:100%;height: 170px; border-bottom-left-radius:80px; border-bottom-right-radius: 80px;">
                    <h2 style= "color:#404040; text-align:center;">FIND A BEST PERSON FOR YOUR COMPANY</h2><br />
                    <center><asp:TextBox ID="txtSearch" runat="server" data-toggle="tooltip" data-placement="bottom" title="Search jobs according to CATEGORY" Style="padding: 4px;width: 220px;"></asp:TextBox>
                   <%-- <asp:Button runat="server" Text="Search" OnClick="Search"/>--%>
                    <asp:LinkButton runat="server" CssClass="btn btn-sm btn-primary" OnClick="SearchApplicants">
                        <span aria-hidden="true" class="glyphicon glyphicon-search" style="padding: 3px 9px;"></span>
                    </asp:LinkButton></center>
                </div>
           </div>
           
      <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
        <table >     
            <tr>
                <asp:DataList ID="DataList1" runat="server">
                    <ItemTemplate>
                         <table class="table table-bordered table-hover">
                                         <tr>
                                            <th  colspan="4" style="text-align: left; background-color:#AAAD9C;">PERSONAL DETAILS</th>
                                        </tr>
                                    <tr>
                                       <th>Applicant's Name </th>
                                           <th style="text-align: left">
                                           <asp:Label ID="fname" runat="server" CssClass="lbl" Text='<%#Eval("fname")%>' ForeColor="#990033"></asp:Label>
                                           <asp:Label ID="last_name" runat="server" CssClass="lbl" Text='<%#Eval("last_name")%>' ForeColor="#990033"></asp:Label></th>

                                            <th>Category </th>
                                            <td style="text-align: left">
                                            <asp:Label ID="services" runat="server" CssClass="lbl" Text='<%#Eval("services")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                     </tr>
                                
                                      <tr>
                                            <th>Experience Level</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="experience1" runat="server" CssClass="lbl" Text='<%#Eval("experience1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>

                                            <th>English Fluency</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="english" runat="server" CssClass="lbl" Text='<%#Eval("english")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>
                                    
                                        <tr>
                                            <th>Professional Overview</th>
                                            <td colspan="3" style="text-align: left">
                                             <asp:Label ID="description" runat="server" CssClass="lbl" Text='<%#Eval("description")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th colspan="4" style="text-align: left; background-color:#AAAD9C;">EDUCATION</th>
                                        </tr>
                                       <tr>
                                            <th>School</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Schoolname" runat="server" CssClass="lbl" Text='<%#Eval("Schoolname")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <th>Date</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="educationDate" runat="server" CssClass="lbl" Text='<%#Eval("educationDate")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>
                                    
                                        <tr>
                                            <th>Major</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Major" runat="server" CssClass="lbl" Text='<%#Eval("Major")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <th>Degree</th>
                                            <td style="text-align: left">
                                             <asp:Label ID="Degree" runat="server" CssClass="lbl" Text='<%#Eval("Degree")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>
                                    
                                     <tr>
                                            <th colspan="4" style="text-align: left; background-color:#AAAD9C;">PAST EXPERIENCE</th>
                                     </tr>

                                     <tr>
                                            <th>Company Name</th>
                                            <td style="text-align: left">
                                             <asp:Label ID="Company" runat="server" CssClass="lbl" Text='<%#Eval("Company")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                       
                                            <th>Post</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="title" runat="server" CssClass="lbl" Text='<%#Eval("title")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                       </tr>
                                       
                                        <tr>
                                            <th>Location</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Location" runat="server" CssClass="lbl" Text='<%#Eval("Location")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                       
                                            <th>Experience(in Years)</th>
                                            <td style="text-align: left">
                                             <asp:Label ID="Experience" runat="server" CssClass="lbl" Text='<%#Eval("Experience")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                    <tr>
                                       <th>Contact Number </th>
                                       <td style="text-align: left">
                                       <asp:Label ID="mobile" runat="server" CssClass="lbl" Text='<%#Eval("mobile")%>' ForeColor="#990033"></asp:Label>
                                          </td>
                                        <th>Email Address</th>
                                       <td style="text-align: left">
                                       <asp:Label ID="Label1" runat="server" CssClass="lbl" Text='<%#Eval("email1")%>' ForeColor="#990033"></asp:Label>
                                       </td>
                                     </tr>
                                       
                                      <tr>
                                      <td colspan="4"><asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Send Mail" value="applyforjob" PostBackUrl="~/inviteapplicants.aspx" style="float:right;" /></td></tr>
                                    <hr />
                               </table>
                             </ItemTemplate>
                          </asp:DataList>
                    </tr>
        </table>
     </div>
        <div class="col-md-1"></div>
    
    </div><%-- row --%>
            </div>
        </div>




</asp:Content>
