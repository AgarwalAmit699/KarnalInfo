<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        
        <div><h2><span style="color: #C75961">Log in</span> your Account</h2>
            <div>
               <asp:Panel ID="PanelLogin" runat="server"><table style="width: 100%">
                    <tr>
                        <td>
                            Email Id</td>
                        <td>
                        <asp:TextBox ID="Email" runat="server" Height="25px" Width="204px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidatorEmail" runat="server" 
                            ControlToValidate="Email" ErrorMessage="*Required" ForeColor="#D73F4A" 
                            Display="Dynamic" Font-Italic="True"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" 
                            ControlToValidate="Email" Display="Dynamic" 
                            ErrorMessage="*Enter Valid Email Id" ForeColor="#D73F4A" 
                            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                            Font-Italic="True"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password</td>
                        <td>
                        <asp:TextBox ID="Password" runat="server" Height="25px" TextMode="Password" 
                            Width="204px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidatorPassword" runat="server" 
                            ControlToValidate="Password" ErrorMessage="*Required" ForeColor="#D73F4A" 
                            Font-Italic="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td class="button">
                        <asp:Button ID="Login2" runat="server" BackColor="#D83F4A" BorderStyle="Solid" 
                            Font-Bold="True" ForeColor="White" Height="35px" Text="Log in" 
                            Width="85px" onclick="Login2_Click" />
                    &nbsp;&nbsp; New User ?
                        <asp:HyperLink ID="RegisterHere" runat="server" Font-Bold="True" 
                            NavigateUrl="~/Signup.aspx" ForeColor="#C75961">Register Here</asp:HyperLink>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Forget your Password ?</td>
                        <td>
                            <asp:Button ID="Recover" runat="server" BackColor="#D83F4A" BorderStyle="Solid" 
                            Font-Bold="True" ForeColor="White" Height="35px" Text="Recover Here" 
                            Width="150px" CausesValidation="False" onclick="Recover_Click" />
                        </td>
                    </tr>
                </table></asp:Panel> 
               <asp:Panel ID="PanelApproved" runat="server"><table style="width: 100%">
                    <tr>
                        <td colspan="2">
                            <h5 style="color: #C75961">
                                Your Account hasn&#39;t been Activated. Check your Email for activation Link. If you 
                                want to re-send the link again. Enter your Email Id.</h5>
&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 159px">
                            Email Id</td>
                        <td>
                            <asp:TextBox ID="ActivateEmail" runat="server" Height="25px" Width="204px"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="ValidatorActivate" runat="server" 
                                ControlToValidate="ActivateEmail" Display="Dynamic" ErrorMessage="*Required" 
                                Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularEmail" runat="server" 
                                ControlToValidate="ActivateEmail" Display="Dynamic" 
                                ErrorMessage="*Enter Valid Email Id" Font-Italic="True" ForeColor="#D73F4A" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button1" runat="server" BackColor="#D83F4A" Font-Bold="True" 
                                ForeColor="White" Height="35px" onclick="Button1_Click" Text="Send" 
                                Width="150px" />
                            <br />
                        </td>
                    </tr>
                </table></asp:Panel> 
                <asp:Panel ID="PanelSuccess" runat="server"><div style="color: #D83F4A; font-size: 15pt;">
                    <br />
                    Reactivation Email has been Sent.Click on confirmation Link to activate your 
                    account.
                 <br />
                 <br />
                 *Note:- If the Confirmation Email doesn&#39;t exists in Inbox, Please, check it in 
                 Spam folder. </div></asp:Panel>
            </div>
          
            <br />
            <div>
                <asp:Panel ID="PanelPassword" runat="server"><table style="width: 97%">
                    <tr>
                        <td style="color: #C75961; width: 816px">
                                <h5 style="color: #D83F4A">
                                    Forgot your password?
                                </h5>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 816px; color: #666666;">
                            
                            <p style="color: #D83F4A">
                                Enter your Email Id and we will send you instructions to reset your password.</p>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 816px">
                            <span style="color: #666666">Email Id:&nbsp;</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="forgetEmail" runat="server" Height="25px" Width="204px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidatorForgetEmail" runat="server" 
                            ControlToValidate="forgetEmail" ErrorMessage="*Required" ForeColor="#D73F4A" 
                                Display="Dynamic" ValidationGroup="Forget"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionEmail2" runat="server" 
                                ControlToValidate="forgetEmail" Display="Dynamic" 
                                ErrorMessage="*Enter Valid Email Id" ForeColor="#D73F4A" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                                ValidationGroup="Forget"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 816px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Send" 
                                runat="server" BackColor="#D83F4A" BorderStyle="Solid" Font-Bold="True" 
                                ForeColor="White" Height="35px" onclick="Send_Click" Text="Send" 
                                ValidationGroup="Forget" Width="150px" />
                            &nbsp;<br /> <br /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </td>
                    </tr>
                </table></asp:Panel>
                <br />
                <asp:Panel ID="PanelDetails" runat="server">
                    <h5 style="color: #D83F4A">
                        Your Password Details has been Sent to your Email.</h5>
                </asp:Panel>
            </div>
            </div>
           

</article>
</section>
<aside class="sidebar big-sidebar right-sidebar">
<asp:Button ID="Signup1" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
         CausesValidation="False" onclick="Signup1_Click1"></asp:Button>
               <asp:Button ID="Login1" runat="server" BackColor="#E4E4E4" BorderStyle="Solid" 
                   Font-Bold="True" Height="42px" Text="Log in" Width="130px" 
         CausesValidation="False" onclick="Login1_Click1" />
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
                            NavigateUrl="~/Jobs.aspx">Latest Jobs</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink4" runat="server" CssClass="selected" NavigateUrl="~/Categories.aspx">Companies/Shops</asp:HyperLink></li>
                   </ul>
                   </li>
                    </ul>
                    
		
        </aside>
    	<div class="clear"></div>
    </div>
</asp:Content>

