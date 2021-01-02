<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="viewjobs.aspx.cs" Inherits="OpenOffice.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
<style type="text/css">
      
Table th {
  text-align: left;
  padding: 12px;
  width:50%;
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
                <asp:Button ID="logout" onMouseOver="this.style.color='white'" onMouseOut="this.style.color='gray'" style="border:none; color:gray; background-color:black; margin-top:13px;" runat="server" Text="Logout" name="logout" OnClick="sign_out_btn" />
                <li style="color:white; font-size:15px; margin-right:20px;"><span class="glyphicon glyphicon-user" style="color:white; padding-left:15px; padding-top:16px;"></span> Hello 
                    <asp:Label ID="user" runat="server" Text="" ForeColor="White" Font-Bold="true" />!</li> 
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>

<div class="container-fluid" style="background-image:url(images/job9.jpg); margin-bottom:10px; background-repeat: no-repeat; background-size: cover; background-position: center center; margin-bottom:-15px;">   

    <div class="container" style="margin-top:100px; height:auto; box-shadow: 0 0 11px rgba(33,33,33,.2);  background-color:#f2f2f2; margin-bottom:30px;">
        
        <div class="row">
                 <div class="col-md-12" style="box-shadow: 0 0 11px rgba(33,33,33,.2); padding-top:35px; width:100%;height: 170px; border-bottom-left-radius:80px; border-bottom-right-radius: 80px;">
                <h2 style= "color:#404040; text-align:center;">FIND A BEST PLACE TO WORK</h2><br />
                <center><asp:TextBox ID="txtSearch" runat="server" data-toggle="tooltip" data-placement="bottom" title="Search jobs according to CATEGORY" Style="padding: 4px;width: 220px;"></asp:TextBox>
               <%-- <asp:Button runat="server" Text="Search" OnClick="Search"/>--%>
                <asp:LinkButton runat="server" CssClass="btn btn-sm btn-primary" OnClick="Search">
                    <span aria-hidden="true" class="glyphicon glyphicon-search" style="padding: 3px 9px;"></span>
                </asp:LinkButton></center>


                </div>
           </div>
           
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
        <table >     
            <tr>
                <asp:DataList ID="DataList" runat="server">
                    <ItemTemplate>
                         <table class="table table-bordered table-hover">
                                    <tr>
                                       <th>Company Name </th>
                                           <th style="text-align: left">
                                           <asp:Label ID="company1" runat="server" CssClass="lbl" Text='<%#Eval("company1")%>' ForeColor="#990033"></asp:Label>
                                            </th> 
                                       
                                     </tr>

                                     <tr>
                                       <th>Title </th>
                                       <td style="text-align: left">
                                       <asp:Label ID="Label6" runat="server" CssClass="lbl" Text='<%#Eval("titlejob1")%>' ForeColor="#990033"></asp:Label>
                                       </td>
                                     </tr>

                                    <tr>
                                       <th>Category of Job </th>
                                       <td style="text-align: left">
                                       <asp:Label ID="category" runat="server" CssClass="lbl" Text='<%#Eval("categoryjob1")%>' ForeColor="#990033"></asp:Label>
                                          </td>
                                        </tr>
                                        
                                        <tr>
                                            <th>Skills</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="lbltitle" runat="server" CssClass="lbl" Text='<%#Eval("skills1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>
                                    
                                         <tr>
                                            <th>Eligibility</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Label7" runat="server" CssClass="lbl" Text='<%#Eval("eligibility1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Experience Required </th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Label1" runat="server" CssClass="lbl" Text='<%#Eval("experiencejob1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Description</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Label2" runat="server" CssClass="lbl" Text='<%#Eval("description1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Location</th>
                                            <td style="text-align: left">
                                             <asp:Label ID="Label3" runat="server" CssClass="lbl" Text='<%#Eval("location1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>


                                        <tr>
                                            <th>Salary</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Label4" runat="server" CssClass="lbl" Text='<%#Eval("salary1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Email</th>
                                            <td style="text-align: left">
                                            <asp:Label ID="Label5" runat="server" CssClass="lbl" Text='<%#Eval("email1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <th>Contact Number</th>
                                            <td style="text-align: left">
                                             <asp:Label ID="Label8" runat="server" CssClass="lbl" Text='<%#Eval("phone1")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td colspan="2"><asp:Button ID="Button3" runat="server" class="btn btn-success" Text="Apply" value="applyforjob" PostBackUrl="~/jobapply.aspx" style="float:right;" /></td></tr>
                                    <hr />
                               </table>
                             </ItemTemplate>
                          </asp:DataList>
                    </tr>
        </table>
     </div>
        <div class="col-md-2"></div>
        
        <%--<div class="col-md-3" style=" margin-top:40px;height:auto;">
                  <div class="column">
                    <div class="card">
                      <img src="https://www.w3schools.com/w3images/team1.jpg" alt="Jane" style="width:100%">
                      <div class="container">
                        <h2>Jane Doe</h2>
                        <p class="title">CEO & Founder</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                  </div>

                  <div class="column">
                    <div class="card">
                      <img src="/w3images/team2.jpg" alt="Mike" style="width:100%">
                      <div class="container">
                        <h2>Mike Ross</h2>
                        <p class="title">Art Director</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                  </div>
  
                  <div class="column">
                    <div class="card">
                      <img src="/w3images/team3.jpg" alt="John" style="width:100%">
                      <div class="container">
                        <h2>John Doe</h2>
                        <p class="title">Designer</p>
                        <p>Some text that describes me lorem ipsum ipsum lorem.</p>
                        <p>example@example.com</p>
                        <p><button class="button">Contact</button></p>
                      </div>
                    </div>
                  </div>
                
        </div>--%>
    
    </div><%-- row --%>
            </div>
        </div>
</asp:Content>
