<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Resume.aspx.cs" Inherits="OpenOffice.WebForm9" %>
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
                <li><a href="career.aspx">Career Advice</a></li>
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
                <center><h1 style= "font-family: 'Langar', cursive; color:#404040;">7 Tips to Make Your Resume <br />Stand Out For a 2021 Hiring</h1></center>
            </div>
        </div>

        <div class="row">
            <div class="col-md-11" style="height:auto; margin-top:40px; margin-left:50px; margin-right:30px;">
                <h3 style= "font-family: 'Langar', cursive; text-align:justify;">1. Understand Your Resume’s Role In The Hiring Process</h3><br />
                <p>The #1 complaint from job seekers in the last five years has been, “My resume isn’t getting in front of the right people!” I get how frustrating, time-consuming, and often discouraging looking and applying for jobs online can be. Understanding your resume’s role in the hiring process is the first step to creating a job-winning resume that gets you unstuck and moving forward confidently.<br />Granted this can vary depending on company size and industry, here’s the SparkNotes version of the typical hiring process:<br />A team leader or manager realizes they need to create or fill a position and notifies the HR team.<br />Someone on that HR team creates a job description based on the team leader/manager’s needs and posts it to the company’s Applicant Tracking system (also known as ATS) which is linked to the company’s Careers page.<br />The HR staff member then posts the job to job boards as well as LinkedIn, ZipRecruiter, Glassdoor, and other sites depending on their budget.<br/>The Applicant Tracking software collects resumes and applications from hundreds of job seekers, comparing resumes to the job posting as well as ranking the top qualified candidates based on keywords from the resumes and “knock-out” questions from the applications.<br />The top qualified candidates (maybe the top 10) will have their resumes looked at by the HR team who will have their own checklist of requirements and preferences.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">2. Write For All Readers, Not Just Bots</h3><br />
                <p style="text-align:justify;">Now that you understand your resume’s role in the hiring process, you can see that your resume needs to get through an Applicant Tracking system and two other gateways before you are selected for a job interview. A common misconception about resume writing is that your top priority has to be writing your resume for computers or the bots that operate within ATS.<br />Resume writing is actually a balancing act. You have to write your resume for three different audiences: ATS, HR, and a direct supervisor or hiring manager deciding who will get the interview.<br />ATS is looking at both the digital formatting of your resume and the keywords you’ve included throughout. The HR reader likely has a checklist of requirements and preferences, so you can’t assume this person will know that you have certain skills and experience based on your job titles. A direct supervisor or hiring manager will then need to decide who is a better fit for the job, the team, and the company as a whole among the handful of applicants that made it this far in the process.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">3. Narrow Down Your Job Target </h3><br />
                <p style="text-align:justify;">The most effective, job-winning resume is going to be targeted for a specific job. If you’re applying for jobs online, this means the specific job posting. If you’re networking, this means you need to get laser-focused on what your job target is to position yourself as the best fit for the job that you want.<br />Targeting your resume shows that you understand the goals of the role you’re applying for or pursuing in your job search. A targeted resume will also demonstrate that you can meet and exceed those goals based on your track record over the course of your work history and educational background.<br />If you can’t narrow down your job target, you should either create a targeted resume for each of your job targets or consider working with a career coach. Career Exploration Coaching with April Klimkiewicz of Bliss Evolution is highly recommended if you need help getting a clear direction and focus for your job search!</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">4. Use Color Strategically (& Conservatively)</h3><br />
                <p style="text-align:justify;">If your resume looks like every other black-and-white resume from the 90s, you’re not helping yourself at all. Your resume isn’t just a list of your work history and skills—it’s a marketing document, and color psychology is a key branding tactic used in marketing. Your personal brand, or how you want to present yourself to employers using both visual cues and messaging, is directly linked to your personality. Would you want to hire a black-and-white personality?<br />Use color strategically to impact an employer’s perspective of you. Keep your resume looking professional by using conservative color for your name, section headings, and other design elements sparingly. Pick no more than two colors, but keep the rest of your text easy to read with a standard black font.<br />Is the thought of getting creative with your resume design giving you anxiety? I’ve already done the heavy lifting for you and designed modern resume templates for college students and recent graduates, those making major career changes, mid-career professionals, and IT professionals in a variety of color schemes.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">5. Include Your LinkedIn Profile Link</h3><br />
                <p style="text-align:justify;">If you’re not on LinkedIn, you're already falling behind other applicants. Why? Your LinkedIn profile is often the first stop during a background check because it’s an easy and free way for HR teams to validate your work history. I won’t even get into how LinkedIn recommendations on your profile are the new letters of recommendation…<br />A LinkedIn profile also enables you to humanize your job application when it’s less professional on a resume such as non-career related volunteer experience, side projects, and work-life balance activities. It’s your profile on a networking platform, so it should be more approachable and conversational. An even more important advantage is this: You can add more information to your LinkedIn profile than a strong 1-2 page resume will permit.<br />Add your LinkedIn profile link to your contact information on your resume and indicate at the end of your resume that more information can be found on your profile to speed up the background check and boost your application.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">6. Identify The Top 8 Job-related Skills</h3><br />
                <p style="text-align:justify;">Some job postings are formidable. They are challenging enough to skim through—let alone analyze—and will give you the impression that even the most senior executive of that company isn’t the right fit for the job. Your resume doesn’t need to list every single qualification and desired trait listed on the job posting. If it did, your resume would look like it was 100% copied-and-pasted from the job posting.<br />You can avoid that by identifying the top 8 job-related qualifications and skills to focus on within your resume. It’s more important that your resume contains the highest-weighted keywords that Applicant Tracking systems will be looking for while still sounding like you’re telling your story for the human reader. <br />Remember, it’s the balancing act that gives you credibility.</p><br />

                <h3 style= "font-family: 'Langar', cursive; ">7. Know The Company’s Mission & Vision</h3><br />
                <p style="text-align:justify;">If you don’t know the company’s mission and vision, you have no business applying for the job. Your role at any given company is to help that company meet its goals. If you can show that you understand this in your resume, you’re going to stand out from the candidates still starting their resumes with a self-serving Objective Statement or boring Resume Summary.<br />This information is usually in the company description paragraph in a job posting, but can also be found on:<br />The company website<br />LinkedIn<br/>Glassdoor<br/>Other social media profiles<br />Indicating that you understand the mission and vision of your previous employer by describing how your efforts contributed to these in your resume will also give you a competitive advantage.</p><br />
            </div>
        </div>
    </div>
</div>

</asp:Content>
