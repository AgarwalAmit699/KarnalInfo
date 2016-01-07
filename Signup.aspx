<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Signup.aspx.cs" Inherits="Signup" Debug="true"  %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        <asp:Panel ID="PanelSignup" runat="server">
        <div>
            <h2 class="fa-2x" 
                style="font-size: 2.2em; color: #666666; background-color: #FFFFFF">Sign up
                <span style="color: #C75961">(Register with Karnal.info)</span></h2>

                <div>
                    <table style="width: 100%">
                        <tr>
                            <td colspan="4">
                                <span style="font-size: medium"><em><span style="background-color: #FFFFFF">
                                <strong style="color: #D83F4A; text-align: left; font-size: x-large; ">Register 
                                Your Company, its Free !<img src="img/free1.png" 
                            style="width: 154px; height: 62px" align="middle" /><br />
                                <br />
                                </strong></span></em></span></td>
                        </tr>
                        <tr>
                            <td style="width: 101px">
                                First Name<asp:RequiredFieldValidator ID="ValidatorName" runat="server" 
                                    ControlToValidate="FirstName" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="FirstName" runat="server" Height="17px" 
                                    Width="190px"></asp:TextBox>
                            </td>
                            <td>
                                Last Name</td>
                            <td>
                                <asp:TextBox ID="LastName" runat="server" Height="17px" 
                                    Width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 101px">
                                Email-Id<asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" 
                                    ControlToValidate="Email" Display="Dynamic" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="Email" runat="server" Height="17px" 
                                    Width="190px" ></asp:TextBox>
                                <asp:RegularExpressionValidator ID="RegularExpressionEmail0" runat="server" 
                                    ControlToValidate="Email" Display="Dynamic" 
                                    ErrorMessage="*Invalid Email-Id" Font-Italic="True" ForeColor="#D73F4A" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            </td>
                            <td>
                                Mobile Number<asp:RequiredFieldValidator ID="ValidatorContact0" runat="server" 
                                    ControlToValidate="Contact" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="Contact" runat="server" Height="17px" 
                                    Width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 101px">
                                Password<asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" 
                                    ControlToValidate="Password" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="Password" runat="server" Height="17px" 
                                    TextMode="Password" Width="190px"></asp:TextBox>
                            </td>
                            <td>
                                Confirm Password<asp:RequiredFieldValidator ID="ValidatorPassword3" 
                                    runat="server" ControlToValidate="ConfirmPassword" Display="Dynamic" 
                                    ErrorMessage="*" Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="ConfirmPassword" runat="server" 
                                    Height="17px" TextMode="Password" ToolTip="Enter Your Password Again" 
                                    Width="190px"></asp:TextBox>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                                    ControlToCompare="Password" ControlToValidate="ConfirmPassword" 
                                    Display="Dynamic" ErrorMessage="*Passwords don't match" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 101px">
                                Address</td>
                            <td>
                                <asp:TextBox ID="Address" runat="server" Height="17px" 
                                    Width="190px"></asp:TextBox>
                            </td>
                            <td>
                                Occupation<asp:RequiredFieldValidator ID="ValidatorOccupation1" runat="server" 
                                    ControlToValidate="Occupation" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                            <td>
                                <asp:TextBox ID="Occupation" runat="server" Height="17px" 
                                    Width="190px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>

                                
                                <asp:Label ID="LabelCaptcha" runat="server" Font-Bold="True" 
                                    ForeColor="#DB515B"></asp:Label>
                            </td>
                            <td colspan="3">
                                <recaptcha:RecaptchaControl ID="recaptcha" runat="server" 
                                    PrivateKey="6Le0CfoSAAAAAP48_QsRr29fImmgn6-FCwALIuxT" 
                                    PublicKey="6Le0CfoSAAAAAHsJuBj7gHwgK8utdHZ361s4wE28" Theme="clean" />
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                <asp:Label ID="EmailLabel" runat="server" ForeColor="#DB515B" Visible="False" 
                                    Font-Bold="True"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Account" runat="server" BackColor="#D83F4A" BorderStyle="Solid" 
                                    CssClass="button-reversed" Font-Bold="True" ForeColor="White" Height="35px" 
                                    onclick="Account_Click" Text="Create an Account" Width="220px" />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Already a registered User 
                                ?&nbsp;
                                <asp:HyperLink ID="LoginHere" runat="server" Font-Bold="True" 
                                    NavigateUrl="~/Login.aspx" ForeColor="#DB515B">Login Here</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
            </div>

            <br />
           
            </div></asp:Panel>
         <asp:Panel ID="PanelSuccess" runat="server">
             <div style="color: #D83F4A; font-size: 15pt;">Your Account&nbsp; has been created.Check 
                 your Email for the confirmation Link to activate your account.
                 <br />
                 <br />
                 *Note:- If the Confirmation Email doesn&#39;t exists in Inbox, Please, check it in 
                 Spam folder. </div></asp:Panel>   

</article>
</section>
<aside class="sidebar big-sidebar right-sidebar">
               <asp:Button ID="Signup1" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
                   CausesValidation="False" onclick="Signup1_Click"></asp:Button>
               <asp:Button ID="Login1" runat="server" BackColor="#E4E4E4" BorderStyle="Double" 
                   Font-Bold="True" Height="42px" Text="Log in" Width="130px" 
                   CausesValidation="False" onclick="Login1_Click" />
                 <ul>	
               <li>
                    <h4 style="text-align: left">QuickLinks</h4>
                    <ul class="blocklist">
                    <br />
                   
                            
                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Post a Job</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink2" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Add a Company</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink3" runat="server" CssClass="selected" 
                            NavigateUrl="Jobs.aspx">Latest Jobs</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink4" runat="server" CssClass="selected" NavigateUrl="~/Categories.aspx">Companies/Shops</asp:HyperLink></li>
                   </ul>
                   </li>
                    </ul>
                    
		
        </aside>
    	<div class="clear"></div>
    </div>
</asp:Content>

