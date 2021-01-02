<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="career.aspx.cs" Inherits="OpenOffice.career" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    h3 {
    color: #404040;}
    p {
        color:#595959;
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
                <li><a href="jobspost.aspx">Post Jobs</a></li>
                <li><a href="viewjobs.aspx">View Jobs</a></li>
                <li><a href="homepge.aspx#work">How It Works</a></li>
                <li><a href="Resume.aspx">Resume Tips</a></li>
                <asp:Button ID="logout" onMouseOver="this.style.color='white'" onMouseOut="this.style.color='gray'" style="border:none; color:gray; background-color:black; margin-top:13px;" runat="server" Text="Logout" name="logout" OnClick="sign_out_btn" />
                <li style="color:white; font-size:15px; margin-right:20px;"><span class="glyphicon glyphicon-user" style="color:white; padding-left:15px; padding-top:16px;"></span> Hello 
                    <asp:Label ID="user" runat="server" Text="" ForeColor="White" Font-Bold="true" />!</li>   
           </ul>
        </div>
        </div> <%--Container Fluid--%>
        </nav><%--NAVIGATION BAR--%>

<div class="container-fluid" style="background-image:url(images/job6.jpg);background-repeat: no-repeat; background-size: cover; background-position: center center; padding-bottom:40px; margin-bottom:-15px;">
    
    <div class="container" style="box-shadow: 0 0 11px rgba(33,33,33,.2); height:auto; margin-top:100px; background-color:white; margin-bottom:30px;">
        <div class="row">
            <div class="col-md-12" style="box-shadow: 0 0 11px rgba(33,33,33,.2);background-color: #e6e6ff; padding-top:50px; width:100%;height: 210px; border-bottom-left-radius:80px; border-bottom-right-radius: 80px;">
                <center><h1 style= "font-family: 'Langar', cursive; color:#404040;">10 Things Every Job Seeker Should Know <br />Before Starting Their Search</h1></center>
            </div>
        </div>

        <div class="row">
            <div class="col-md-11" style="height:auto; margin-top:40px; margin-left:50px; margin-right:30px;">
                <h4>Start your job search off on the right foot. Here’s what you need to know.</h4>
                    <p style="text-align:justify;">Job seeking is never fun, of course, but a well-prepared job seeker is more likely to find the process less stressful. Looking for work is not a science and there are many factors that come into play, but in conducting a job search in today's current market, there are a number of things that everyone will be happier to know from the outset.</p><br />

                <h3 style= "font-family: 'Langar', cursive; text-align:justify;">1. Use your network. </h3><br />
                <p>Let's start with something that may be out of your control. More and more positions are being filled without being advertised. You would have a hard time conducting a job search now without hearing about networking and how important it is, and that's especially true in the market as it stands. A referral is more likely to get the position, simply because HR staff are busy and why not hire someone who already has an advocate within the company? Since informal hiring is happening on a greater scale, if you're currently looking for work, remember that you are always looking for work. That 4th of July cookout? Perhaps your volleyball teammate knows of an opening that would fit your skill set. Don't focus only on the old ways of looking for a job – get out, get to know people, and treat every interaction as a potential opportunity!</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">2. Clean up your act on social media.</h3><br />
                <p style="text-align:justify;">Companies often Google search a candidate before hiring, and social media can be an immediate red flag. Before starting your job hunt, clean up your Facebook! Many people respond to this advice defensively, feeling that it's Orwellian to have your actions monitored even on social media, but the truth is, once it's out there, it's hard to remove it. Review your privacy settings and if it's questionable, maybe leave it off the Internet.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">3. You are going to need a strong resume.</h3><br />
                <p style="text-align:justify;">Standards for resumes change all the time and just because it worked three or ten years ago doesn't mean your resume will work now. Since a vast majority of positions that do make it out to job boards will be using online applications, the look of your resume matters far less than the content. It certainly should still be attractive and easy to read, but color and artistic flair are just going to confuse the computer screens. In fact, some of the ATS software doesn't read serif fonts at all, so your amazing career background is not even reaching a person just because your font isn't one the computer recognizes. Keep your resume simple! Content is key in the digital age, not the visual bells and whistles.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">4. Be mindful of the ATS.</h3><br />
                <p style="text-align:justify;">In continuing with the resume theme, another element that will impact how likely your resume is to get past the software is your use of keywords. When advice columns tell you to utilize keywords or to read the posting, they mean it! If the ad states you need experience with x, y, and z, then be sure X, Y, and Z are on your resume if you have that experience! It may be more work, yes, but sending out a resume to be rejected by a robot isn't an effective use of your time, either.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">5. Focus on your accomplishments.</h3><br />
                <p style="text-align:justify;">Another resume tip: If you are applying for a position as a nurse or as a sales manager, we all have a basic understanding of your job description. Sending in a resume with a generic list of nursing or sales responsibilities isn't going to make you stand out. Why are you the perfect nurse? What makes you different from the other 200 sales managers applying for the position? The answer is simple: accomplishments. Did you create a new training module for new nurses on HIPAA compliance? Was your sales team the first to tap into that challenging market? These are the key points to focus on in your resume. While the job description details can hit the keywords, they should not be the meat of your resume. What makes John Smith different from Joe Jones? John was the first sales manager in the region to secure a contract with Google. That's worth noting!</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">6. Get a feel for the company during the interview.</h3><br />
                <p style="text-align:justify;">So you've gotten your resume updated and it's working. You started getting interview calls! The first interview you go on if you've been out of the job hunt for a while may feel very different. First of all, you may be expecting to go in and meet with one person, only to be greeted by an entire department. Team interviews are more common because it's not just about the job. It's also not about how you do with one person, but how you fit with the team. Work is collaborative, so why would interviews not be? This can take some getting used to, but remember, no matter how badly you want or need this job, if you don't feel comfortable with the interview team, do you really want to work there long-term?</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">7. Be patient post-interview.</h3><br />
                <p style="text-align:justify;">The interview is done. They'll call in a week, right? Very likely, they will not. Not only will it take a while to hear back – if you do – but the interview process takes longer than it used to take. If you go into the interview thinking that will be it, you may be surprised when they tell you the next step is another interview – and then there are three or four more steps. In fact, companies are often now having candidates and finalists come in for trial periods. Sometimes it's an hour and sometimes it's a full day of shadowing. It may feel time-consuming, but in the end, the goal is that you have found something you will be able to do for a while, and the company has found someone who will want to stick around.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">8. Keep an open mind.</h3><br />
                <p style="text-align:justify;">The hard truth is that this is a terrible job market for job seekers. The salaries are lower in general and more positions are being reduced to freelance or part-time. The work you have always loved may not have the same title and may be shared by a team now. Instead of viewing this as a negative, though, consider the opportunities. Maybe you like sales, but always wanted to do some consulting. With the market as it is, you may be working harder, but you will also be able to open yourself up to new things. And new things bring new skills and connections. The lower salary is an adjustment, but less hours means volunteer work or pursuing that entrepreneurial idea you've had. In the end, that may be a blessing.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">9. Keep it all in perspective.</h3><br />
                <p style="text-align:justify;">Another difficult reality is that this means it's even more competitive. It's not unheard of to show up for an interview and realize you're interviewing with other candidates for the same job. You may think you are one of five who was called for an interview, only to discover they are interviewing 100 people – out of 500 applicants. Keep it all in perspective, but again, chances are if you don't get the job, another position just opened when the candidate they selected left their position for this one.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">10. It's not personal.</h3><br />
                <p style="text-align:justify;">The final thing it's helpful to know, and probably the most important, is that it's not personal. It's very hard not to get discouraged. You may go on hundreds of interviews, send out thousands of resumes, and still be waiting for that call. Friends and family will offer advice and say things like, “The right job will come along,” but it is hard to believe it sometimes. You're not alone – and the truth is that it only takes one. For every rejection, remember it's just not the right fit. It's not you. Someone suggested keeping a tally – every application or every interview that's a no, mark it down. When you reach 100, start over, but chances are, as much as it may seem endless, it's unlikely you will reach 100 without an offer. It will feel like it's inevitable, but the job is out there. Somewhere a hiring manager is looking for someone just like you. Jobs aren't that different from dating, though, and all those frogs you have to kiss? They're the interviews that don't pan out for whatever reason. This is the hardest piece of advice to believe, but it's imperative because some days, it does seem like there's no end. If it gets really hopeless, allow yourself a day off from the search to do something that makes you happy. Then dust yourself off and get back out there.</p><br />



            </div>
        </div>
    </div>
</div>


</asp:Content>
