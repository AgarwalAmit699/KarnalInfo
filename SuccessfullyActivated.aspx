<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="SuccessfullyActivated.aspx.cs" Inherits="SuccessfullyActivated" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        <div>
<h2>
Activated <span style="color: #C75961">Successfully</span>
</h2>
<br />
<h5><span style="color: #C75961">&nbsp;You account has been Succesfully activated. You can 
    </span> <a href='Login.aspx' style="color: #777777">Login</a>
    <span style="color: #C75961"> &nbsp;now!</span></h5> 
    </div>
    </article>
    </section>

    <aside class="sidebar big-sidebar right-sidebar">
               <asp:Button ID="Signup1" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
                   CausesValidation="False" 
         onclick="Signup1_Click"></asp:Button>
               <asp:Button ID="Login1" runat="server" BackColor="#E4E4E4" BorderStyle="Double" 
                   Font-Bold="True" Height="42px" Text="Log in" Width="130px" 
                   CausesValidation="False" 
         onclick="Login1_Click" />
                 <ul>	
               <li>
                    <h4 style="text-align: left">QuickLinks</h4>
                    <ul class="blocklist">
                    <br />
                   
                            
                    <li><asp:HyperLink ID="Addjob" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Post a Job</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="AddCompany" runat="server" CssClass="selected" 
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

