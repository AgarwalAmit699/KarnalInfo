<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Advertise.aspx.cs" Inherits="Advertise" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="js/MaxLength.min.js"></script>
    <script type="text/javascript">
        $(function () {
         
            $("[id*=Message1]").MaxLength({ MaxLength: 200 });
            $("[id*=Address1]").MaxLength({ MaxLength: 150 });
        });
    </script>
<div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
<div>
<h2 style="text-align: left">
Advertise <span style="color: #C75961">With Us</span>
</h2>
    <br />
    <br />
    <table style="width: 100%">
        <tr>
            <td style="width: 122px">
                Name<asp:RequiredFieldValidator ID="ValidatorName" runat="server" 
                                    ControlToValidate="Name" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
            <td style="width: 19px">
                <asp:TextBox ID="Name" runat="server"></asp:TextBox>
            </td>
            <td style="width: 127px">
                Contact No<asp:RequiredFieldValidator 
                    ID="ValidatorContact" runat="server" 
                                    ControlToValidate="Contact" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:TextBox ID="Contact" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 122px">
                Company<asp:RequiredFieldValidator 
                    ID="ValidatorCompany" runat="server" 
                                    ControlToValidate="Company" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
            <td style="width: 19px">
                <asp:TextBox ID="Company" runat="server"></asp:TextBox>
            </td>
            <td style="width: 127px">
                Email Id<br />
                                <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" 
                                    ControlToValidate="Email" Display="Dynamic" 
                                    ErrorMessage="*Invalid Email-Id" Font-Italic="True" ForeColor="#D73F4A" 
                                    
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="vertical-align:middle">
                Address<asp:RequiredFieldValidator 
                    ID="ValidatorAddress" runat="server" 
                                    ControlToValidate="Address1" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                </td>
            <td colspan="3" style="vertical-align:middle">
                <asp:TextBox ID="Address1" runat="server" Height="56px" TextMode="MultiLine" 
                    Width="501px"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td style="vertical-align:middle">
                Message<asp:RequiredFieldValidator ID="ValidatorMessage0" runat="server" 
                                    ControlToValidate="Message1" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                </td>
            <td colspan="3">
                <asp:TextBox ID="Message1" runat="server" Height="56px" TextMode="MultiLine" 
                    Width="501px"></asp:TextBox>
                            </td>
        </tr>
        <tr>
            <td style="vertical-align:middle">

                                
                                <asp:Label ID="LabelCaptcha" runat="server" Font-Bold="True" 
                                    ForeColor="#DB515B"></asp:Label>
                            </td>
            <td colspan="3">
                <recaptcha:RecaptchaControl ID="recaptcha" runat="server" 
                                    PrivateKey="6Le0CfoSAAAAAP48_QsRr29fImmgn6-FCwALIuxT" 
                                    PublicKey="6Le0CfoSAAAAAHsJuBj7gHwgK8utdHZ361s4wE28" Theme="clean" />&nbsp;</td>
        </tr>
        <tr>
            <td colspan="4">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Submit" runat="server" BackColor="#DB515B" Font-Bold="True" 
                    ForeColor="White" Height="39px" Text="Submit" Width="140px" onclick="Submit_Click" 
                     />
            </td>
        </tr>
    </table>
    </div>
    </article>
    </section>
     <aside class="sidebar big-sidebar right-sidebar">
     <asp:Button ID="Signup1" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
                   CausesValidation="False" PostBackUrl="~/Signup.aspx" 
         onclick="Signup1_Click"></asp:Button>
     <asp:Button ID="Login1" runat="server" BackColor="#E4E4E4" BorderStyle="Double" 
                   Font-Bold="True" Height="42px" Text="Log in" Width="130px" 
                   CausesValidation="False" PostBackUrl="~/Login.aspx" 
         onclick="Login1_Click" />
     <ul>
         <li>
             <h4 style="text-align: left">
                 QuickLinks</h4>
             <ul class="blocklist">
                 <br />
                 <li>
                     <asp:HyperLink ID="Addjob" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Add a Job</asp:HyperLink>
                     </li>
                     <br />
                 <li>
                     <asp:HyperLink ID="AddCompany" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Add a Company</asp:HyperLink>
                     </li>
                     <br />
                 <li>
                     <asp:HyperLink ID="HyperLink3" runat="server" CssClass="selected" 
                            NavigateUrl="Jobs.aspx">Latest Jobs</asp:HyperLink>
                     </li>
                     <br />
                 <li>
                     <asp:HyperLink ID="HyperLink4" runat="server" CssClass="selected" NavigateUrl="~/Categories.aspx">Companies/Shops</asp:HyperLink>
                 </li>
             </ul>
         </li>
     </ul>
     </aside>
     <div class="clear">
     </div>
    </div>
</asp:Content>

