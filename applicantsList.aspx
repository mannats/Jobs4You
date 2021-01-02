<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="applicantsList.aspx.cs" Inherits="OpenOffice.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      
        .style11
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            height: 23px;
            width: 118px;
        }
        .style15
        {
            text-align: right;
            font-family: Calibri;
            font-size: 14px;
            font-weight: bold;
            color: #002D00;
            width: 118px;
        }
        .style17
        {
            width: 117px;
            text-align: left;
        }
        .style14
        {
            width: 118px;
        }
        .style18
        {
            width: 53px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class="container" style="margin-top:150px; border:1px solid red; height:auto;">
     <div class="row">
            <%-- <asp:GridView ID="GridView2" runat="server">
       
            </asp:GridView>--%>
   


    <table class="tbl">
        <tr>
            <td class="tblhead">
               Applicants</td>
        </tr>
        <tr>
            <td valign="top">
                <table >
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                        <asp:DataList ID="DataList" runat="server">
                            <ItemTemplate>
                                <table style="border: thin solid #008000; width:800px;">
                                    <tr>
                                       <td class="style11">Name : </td>
                                       <td colspan="2" style="text-align: left">
                                       <asp:Label ID="company1" runat="server" CssClass="lbl" Text='<%#Eval("fname")%>' ForeColor="#990033"></asp:Label>
                                        </td>
                                        <td colspan="2" style="text-align: left">
                                       <asp:Label ID="Label9" runat="server" CssClass="lbl" Text='<%#Eval("last_name")%>' ForeColor="#990033"></asp:Label>
                                        </td>
                                     </tr>

                                     <tr>
                                       <td class="style11">Mobile: </td>
                                       <td colspan="2" style="text-align: left">
                                       <asp:Label ID="Label6" runat="server" CssClass="lbl" Text='<%#Eval("mobile")%>' ForeColor="#990033"></asp:Label>
                                       </td>
                                     </tr>

                                    <tr>
                                       <td class="style11">Address: </td>
                                       <td colspan="2" style="text-align: left">
                                       <asp:Label ID="category" runat="server" CssClass="lbl" Text='<%#Eval("location1")%>' ForeColor="#990033"></asp:Label>
                                           
                                            </td>
                                        </tr>
                                        
                                        <tr>
                                            <td class="style15">About Me :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="lbltitle" runat="server" CssClass="lbl" Text='<%#Eval("description")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    
                                    <tr>
                                         <td class="style15">Degree :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="Label7" runat="server" CssClass="lbl" Text='<%#Eval("Degree")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>

                                        <tr>
                                            <td class="style15">Company :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="Label1" runat="server" CssClass="lbl" Text='<%#Eval("Company")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>

                                        <tr>
                                            <td class="style15">Title : </td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="Label2" runat="server" CssClass="lbl" Text='<%#Eval("title")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>

                                        <tr>
                                            <td class="style15">
                                                Location of Company :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="Label3" runat="server" CssClass="lbl" Text='<%#Eval("location")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>


                                        <tr>
                                            <td class="style15">
                                                Experience in Company :</td>
                                            <td class="style17" style="text-align: left">
                                                <asp:Label ID="Label4" runat="server" CssClass="lbl" Text='<%#Eval("Experience")%>'  ForeColor="#990033"></asp:Label>
                                            </td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>

                                        

                                        <tr>
                                            <td class="style14">
                                                &nbsp;</td>
                                            <td class="style17">
                                                &nbsp;</td>
                                            <td>
                                                &nbsp;</td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:DataList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style18">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
     </div>
    </div>










</asp:Content>
