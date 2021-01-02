<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeProfile.aspx.cs" Inherits="OpenOffice.WebForm4" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style type="text/css"> 
.custom-select {
  position: relative;
  font-family: Arial;
  color:black;
  border: 1px solid #cccccc;
   border-radius: 5px;
}

.custom-select select {
  display: none; /*hide original SELECT element:*/
}

.select-selected {
  background-color: white;
  
}

/*style the arrow inside the select element:*/
.select-selected:after {
  position: absolute;
  content: "";
  top: 14px;
  right: 10px;
  width: 0;
  height: 0;
  border: 6px solid transparent;
  border-color: #fff transparent transparent transparent;
}

/*point the arrow upwards when the select box is open (active):*/
.select-selected.select-arrow-active:after {
  border-color: transparent transparent #fff transparent;
  top: 7px;
}

/*style the items (options), including the selected item:*/
.select-items div,.select-selected {
  color: black;
  padding:6px 9px;
 /* border: 1px solid transparent;
  border-color: transparent transparent rgba(0, 0, 0, 0.1) transparent;*/
  cursor: pointer;
  user-select: none;
}

/*style items (options):*/
.select-items {
  position: absolute;
  background-color: #cccccc;
  top: 100%;
  left: 0;
  right: 0;
  z-index: 99;
}

/*hide the items when the select box is closed:*/
.select-hide {
  display: none;
}

.select-items div:hover, .same-as-selected {
  background-color: rgba(0, 0, 0, 0.1);
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
                <li><a href="homepge.aspx#work">How It Works</a></li>
                <li><a href="career.aspx">Career Advice</a></li>
                <li><a href="Resume.aspx">Resume Tips</a></li>
              <asp:Button ID="logout" onMouseOver="this.style.color='white'" onMouseOut="this.style.color='gray'" style="border:none; color:gray; background-color:black; margin-top:13px;" runat="server" Text="Logout" name="logout" OnClick="sign_out_btn" />
                <li style="color:white; font-size:15px; margin-right:20px;"><span class="glyphicon glyphicon-user" style="color:white; padding-left:15px; padding-top:16px;"></span> Hello 
                    <asp:Label ID="user" runat="server" Text="" ForeColor="White" Font-Bold="true" />!</li>   
               
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>
    


<div class="container-fluid" style="background-image:url(images/job10.jpg); margin-bottom:-15px; background-repeat: no-repeat; background-size: cover; background-position: center center;">   

    <div class="container bootstrap snippet" style="background-color:; margin-top:100px; margin-bottom:50px; height:auto; box-shadow: 0 0 11px rgba(33,33,33,.2); ">

    <div class="row">
  		<div class="col-sm-2" style="margin-top:20px;"><!--left col-->

  <%-- <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
     --%>                       
        </div><!--/col-3--> 
    	<div class="col-sm-9" style="margin-bottom:20px;">
            <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" style="color:black; font-size:15px;" href="#home"><b>ABOUT ME</b></a></li>
                
                <li><a data-toggle="tab" style="color:black; font-size:15px;" href="#settings"><b>EXPERTISE</b></a></li>
              </ul>

              
          <div class="tab-content">
            <div class="tab-pane active" id="home">
            
                   <form class="form" action="##" method="post" id="freelanceProfile" role="form">
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="fname"><h4>First name</h4></label>
                              <input type="text" class="form-control" id="fname" placeholder="First Name" runat="server" title="enter your first name.">
                                
                                <%-- <asp:Label ID="empid" runat="server" Visible="false"></asp:Label>--%>
                          </div>
                      </div>
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                            <label for="last_name"><h4>Last name</h4></label>
                              <input type="text" class="form-control" name="last_name" id="last_name" placeholder="Last Name" runat="server" title="enter your last name if any." />
                          </div>
                      </div>
          
                             
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Mobile</h4></label>
                              <input type="number" class="form-control" name="mobile" id="mobile" placeholder="+91 XXXXX-XXXXX" runat="server" title="enter your mobile number if any.">
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label for="mobile"><h4>Email</h4></label>
                              <input type="text"  class="form-control" name="email1" id="email1" placeholder="Email Address" runat="server" >
                          </div>
                      </div>
                      
                      <div class="form-group">
                          
                          <div class="col-xs-6">
                              <label for="text"><h4>Location</h4></label>
                              <input type="text"  class="form-control" id="location1" placeholder="Address" runat="server" title="enter a location">
                          </div>
                      </div>

                      

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Main Services you offer:</h4></label>
                               <div class="custom-select" style="width:auto;">
                                <select id="services"  runat="server"  name="services">
                                <option value="customer services">Customer Services</option>
                                <option value="IT & Networking">IT & Networking</option>
                                <option value="Translation">Translation</option>
                                <option value="Data Entry">Data Entry</option>
                              </select>
                                   </div>
                          </div>
                      </div>
                      
          
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>English Proficiency</h4></label>
                                 <div class="custom-select" style="width:auto;">
                                     <select id="english"  runat="server" name="english">
                                <option value="Basic">Basic</option>
                                <option value="Conversational">Conversational</option>
                                <option value="Fluent">Fluent</option>
                                <option value="native">Native or Bilingual</option>
                                </select>
                                     </div>
                          </div>
                      </div>
                      <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Level of experience:</h4></label>
                               <div class="custom-select" style="width:auto;">
                                <select id="experience1" runat="server"  name="experience1">
                                <option value="entry">Entry Level</option>
                                <option value="Intermediate">Intermediate Level</option>
                                <option value="Expert">Expert Level</option>
                                </select>
                                   </div>
                          </div>
                      </div>
                                
                      <div class="form-group">
                          <div class="col-xs-12">
                             <label for="mobile"><h4>Professional Overview</h4></label>
                              <textarea  class="form-control" id="description" name="description" rows="2" cols="50" runat="server"  placeholder="Highlight your top skills, interests. This is one of the first thing clients will see on your profile." > </textarea>
                          </div>
                      </div>
                      
                      
                      
                      
              	</form>
              
              <hr>
              
             </div><!--/tab-pane-->

             <div class="tab-pane" id="settings">              	
                  <hr>
                    <div class="panel panel-default">
                      <div class="panel-heading">Education Experience</div>
                      <div class="panel-body">
                      <div id="education_fields">
                      </div>
                           <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <input type="text" class="form-control"  id="Schoolname" name="Schoolname[]" value="" runat="server"  placeholder="School name">
                      </div>
                    </div>
                    <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <input type="text" class="form-control"  runat="server" id="Major" name="Major[]" value="" placeholder="Major">
                      </div>
                    </div>
                    <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <input type="text" class="form-control"  runat="server"  id="Degree" name="Degree[]" value="" placeholder="Degree">
                      </div>
                    </div>

                    <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <div class="input-group">
                          <select class="form-control" style="width:170px;" runat="server" id="educationDate" name="educationDate[]">
                            <option value="">Year of passing</option>
                            <option value="2015">2015</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                          </select>
                          
                          <%--<div class="input-group-btn">
                            <button class="btn btn-success" runat="server"  type="button"  onclick="education_fields();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button>


                          </div> --%>
                    </div>
                      </div>
                    </div>
                    <div class="clear"></div>
                      </div>
                    </div>
                 <!--Employment-->
                    <div class="panel panel-default">
                      <div class="panel-heading">Employment</div>
                      <div class="panel-body">
  
                      <div id="employment">
          
                            </div>
                           <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <input type="text" class="form-control" runat="server"  id="Company" name="Company[]" value=""  placeholder="Company">
                      </div>
                    </div>
                    <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <input type="text" class="form-control" runat="server"  id="title" name="Title[]" value=""  placeholder="Title">
                      </div>
                    </div>
                    <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <input type="text" class="form-control" runat="server"  id="Location" name="Location[]" value="" placeholder="Location">
                      </div>
                    </div>

                    <div class="col-sm-3 nopadding">
                      <div class="form-group">
                        <div class="input-group">
                          <select class="form-control" id="Experience" runat="server" name="Experience[]">
      
                            <option value="">Total Experience</option>
                            <option value="01">01</option>
                            <option value="02">02</option>
                            <option value="03">03</option>
                            <option value="04">04</option>
                          </select>
                          <div class="input-group-btn">
                        <button class="btn btn-success" type="button" runat="server"  onclick="employment();"> <span class="glyphicon glyphicon-plus" aria-hidden="true"></span> </button>
                          </div>
                            
                        </div>
                      </div>
                    </div>

                          <div class="">
                              <div class="col-xs-12">
                                  <br />
                                  <h6 style="color:red;">**Check your content carefully. Once submitted cannot be undone!</h6>
                              </div>
                          </div>
                          <div class="form-group">
                           <div class="col-xs-12">
                               
                               <asp:Button class="btn btn-lg btn-success" ID="Button2" runat="server" Text="Save"  OnClick="save_info_freelance2"  />
                              	
                               	 <button class="btn btn-lg" type="reset"><i class="glyphicon glyphicon-repeat"></i> Reset</button> 
                            </div>
                      </div>
                    <div class="clear"></div>
                      </div>
                    </div>
                 
                      
              </div>
               
              </div><!--/tab-pane-->
                        

          </div><!--/tab-content-->
        </div>
        </div>




    </div>



<script>
var x, i, j, l, ll, selElmnt, a, b, c;
/*look for any elements with the class "custom-select":*/
x = document.getElementsByClassName("custom-select");
l = x.length;
for (i = 0; i < l; i++) {
  selElmnt = x[i].getElementsByTagName("select")[0];
  ll = selElmnt.length;
  /*for each element, create a new DIV that will act as the selected item:*/
  a = document.createElement("DIV");
  a.setAttribute("class", "select-selected");
  a.innerHTML = selElmnt.options[selElmnt.selectedIndex].innerHTML;
  x[i].appendChild(a);
  /*for each element, create a new DIV that will contain the option list:*/
  b = document.createElement("DIV");
  b.setAttribute("class", "select-items select-hide");
  for (j = 1; j < ll; j++) {
    /*for each option in the original select element,
    create a new DIV that will act as an option item:*/
    c = document.createElement("DIV");
    c.innerHTML = selElmnt.options[j].innerHTML;
    c.addEventListener("click", function(e) {
        /*when an item is clicked, update the original select box,
        and the selected item:*/
        var y, i, k, s, h, sl, yl;
        s = this.parentNode.parentNode.getElementsByTagName("select")[0];
        sl = s.length;
        h = this.parentNode.previousSibling;
        for (i = 0; i < sl; i++) {
          if (s.options[i].innerHTML == this.innerHTML) {
            s.selectedIndex = i;
            h.innerHTML = this.innerHTML;
            y = this.parentNode.getElementsByClassName("same-as-selected");
            yl = y.length;
            for (k = 0; k < yl; k++) {
              y[k].removeAttribute("class");
            }
            this.setAttribute("class", "same-as-selected");
            break;
          }
        }
        h.click();
    });
    b.appendChild(c);
  }
  x[i].appendChild(b);
  a.addEventListener("click", function(e) {
      /*when the select box is clicked, close any other select boxes,
      and open/close the current select box:*/
      e.stopPropagation();
      closeAllSelect(this);
      this.nextSibling.classList.toggle("select-hide");
      this.classList.toggle("select-arrow-active");
    });
}
function closeAllSelect(elmnt) {
  /*a function that will close all select boxes in the document,
  except the current select box:*/
  var x, y, i, xl, yl, arrNo = [];
  x = document.getElementsByClassName("select-items");
  y = document.getElementsByClassName("select-selected");
  xl = x.length;
  yl = y.length;
  for (i = 0; i < yl; i++) {
    if (elmnt == y[i]) {
      arrNo.push(i)
    } else {
      y[i].classList.remove("select-arrow-active");
    }
  }
  for (i = 0; i < xl; i++) {
    if (arrNo.indexOf(i)) {
      x[i].classList.add("select-hide");
    }
  }
}
/*if the user clicks anywhere outside the select box,
then close all select boxes:*/
    document.addEventListener("click", closeAllSelect);

    
</script>




</asp:Content>
