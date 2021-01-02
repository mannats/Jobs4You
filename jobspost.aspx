<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="jobspost.aspx.cs" Inherits="OpenOffice.jobspost" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<style type="text/css">
 .custom-select {
  position: relative;
  font-family: Arial;
  color:black;
  border: 1px solid #cccccc;
   border-radius: 5px;
}

.custom-select select 
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
  /*border: 1px solid transparent;
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
                <li><a href="viewjobs.aspx">View Jobs</a></li>
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


 <div class="container-fluid" style="background-image:url(images/job1.jpg); margin-bottom:-15px; background-repeat: no-repeat; background-size: cover; background-position: center center;">   
<div class="container" style="margin-top:100px; margin-bottom:125px; height:650px;">
     <div class="row">
  		<div class="container bootstrap snippet" style="margin-top:10px; margin-bottom:50px; height:auto; box-shadow: 0 0 11px rgba(33,33,33,.2); background-color:#f2f2f2;">
            
    
    <div class="row">
  		<div class="col-sm-1" style="margin-top:20px;"></div><!--/col-2--> 
    	
        <div class="col-sm-10" style="">
            <center><h3 style="margin-top:40px; font-size:30px; font:bold; font-family: 'Raleway', sans-serif;">POST A JOB!!</h3></center>

              
          <div class="tab-content">
            <div class="tab-pane active" id="about">
                <hr style="color:black; height:1px; background-color:black;">
                   <form class="form" action="##" method="post" id="jobpost" role="form">

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Company :</h4></label>
                               <input type="text" class="form-control" id="company1" placeholder="Write name of the company" runat="server" required>
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Title:</h4></label>
                               <input type="text" class="form-control" id="titlejob" placeholder="Write title of job" runat="server" required>
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Category:</h4></label>
                              <div class="custom-select" style="width:auto;">
                                <select id="categoryjob" runat="server"  name="categoryjob">
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
                             <label><h4>Skills :</h4></label>
                               <input type="text" class="form-control" id="skills1" placeholder="Write skills Required for job" required runat="server">
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Eligibility :</h4></label>
                               <input type="text" class="form-control" id="eligibility1" required placeholder="Eligibility for this job" runat="server">
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Salary :</h4></label>
                             
                              <input type="number" class="form-control" id="salary1" placeholder="Rs. 00000" runat="server" required>
                          </div>
                      </div>

                       <div class="form-group">
                           <div class="col-xs-6">
                              <label for="email"><h4>Email Id: </h4></label>
                              <input type="text" class="form-control" id="email1" placeholder="Type your email" runat="server" required>
                          </div>
                      </div>
        
                      <div class="form-group">
                           <div class="col-xs-6">
                              <label for="phone1"><h4>Contact Number: </h4></label>
                            
                                 <input type="number" class="form-control" id="phone1" placeholder="+91 XXXXX-XXXXX" runat="server" required>
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Location :</h4></label>
                              <div class="custom-select" style="width:auto;">
                                <select id="location1" runat="server" name="location1">
                                <option value="hoshiarpur">Hoshiarpur</option>
                                <option value="jalandhar">Jalandhar</option>
                                <option value="chandigarh">Chandigarh</option>
                                <option value="amritsar">Amritsar</option>
                                </select>
                          </div>
                              </div>
                      </div>

                      <div class="form-group">
                          <div class="col-xs-6">
                             <label><h4>Level of experience freelancer should have:</h4></label>
                              <div class="custom-select" style="width:auto;">
                                <select id="experiencejob1" runat="server"  name="experiencejob1" required>
                                <option value="entry">Entry Level</option>
                                <option value="Intermediate">Intermediate Level</option>
                                <option value="Expert">Expert Lvel</option>
                                </select>
                              </div>
                          </div>
                      </div>

                       <div class="form-group">
                          <div class="col-xs-12">
                             <label><h4>Description :</h4></label>
                              <textarea  class="form-control" id="description1" name="description1" rows="2" cols="50" runat="server"  placeholder="Write about the Job in detail"  > </textarea>
                        </div>
                      </div>

                       <div class="form-group">
                           <div class="col-xs-12" style="margin-bottom:30px;">
                                <br>
                               <asp:Button class="btn btn-lg btn-success" ID="jobbutton" runat="server" Text="Submit" sytle="padding: 8px 19px;" OnClick="save_job" />
                               <button class="btn btn-lg btn-info" type="reset"><i class="glyphicon glyphicon-repeat" sytle="padding: 8px 19px;"></i> Reset</button> 
                            </div>
                      </div>
               </form>
          </div>
        </div>
            </div>

    </div>
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
