<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="AddJob.aspx.cs" Inherits="AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="js/MaxLength.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=Description1]").MaxLength({ MaxLength: 100 });
             $("[id*=Skills1]").MaxLength({ MaxLength: 200 }); 
              $("[id*=Address1]").MaxLength({ MaxLength: 200 });
          });
    </script>

    <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        
        <div><h2>
            Post a <span style="color: #C75961">Job</span><img src="img/free1.png" 
                style="width: 156px; height: 65px" /></h2>
           <div>
           <asp:Panel ID="Panel1" runat="server">
               <table style="width: 100%">
                   <tr>
                       <td style="height: 37px">
                           Job Post<asp:RequiredFieldValidator 
                               ID="ValidatorJob" runat="server" 
                                    ControlToValidate="job" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td style="height: 37px">
                           <asp:TextBox ID="job" runat="server" Height="18px" Width="150px"></asp:TextBox>
                       </td>
                       <td style="height: 37px">
                           Company<asp:RequiredFieldValidator 
                               ID="ValidatorCompany" runat="server" 
                                    ControlToValidate="company" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td style="height: 37px">
                           <asp:TextBox ID="company" runat="server" Height="18px" Width="150px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           No of Seats<asp:RequiredFieldValidator 
                               ID="ValidatorSeats" runat="server" 
                                    ControlToValidate="seats" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td>
                           <asp:TextBox ID="seats" runat="server" Height="18px" Width="150px"></asp:TextBox>
                       </td>
                       <td>
                           Location<asp:RequiredFieldValidator 
                               ID="ValidatorLocation" runat="server" 
                                    ControlToValidate="Location" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td>
                           <asp:TextBox ID="Location" runat="server" Height="18px" Width="150px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           Email-Id
                       </td>
                       <td>
                           <asp:TextBox ID="Email" runat="server" Height="18px" Width="150px" 
                               placeholder="If Any"></asp:TextBox>
                           <br />
                                <asp:RegularExpressionValidator ID="RegularExpressionEmail0" runat="server" 
                                    ControlToValidate="Email" Display="Dynamic" 
                                    ErrorMessage="*Invalid Email-Id" Font-Italic="True" ForeColor="#D73F4A" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                       </td>
                       <td>
                           Contact Person<asp:RequiredFieldValidator 
                               ID="ValidatorPerson" runat="server" 
                                    ControlToValidate="Person" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td>
                           <asp:TextBox ID="Person" runat="server" Height="18px" Width="150px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           Experience</td>
                       <td>
                           <asp:TextBox ID="Experience" runat="server" Height="18px" Width="150px" placeholder="If Any"></asp:TextBox>
                       </td>
                       <td>
                           Mobile Number<asp:RequiredFieldValidator 
                               ID="ValidatorMobile" runat="server" 
                                    ControlToValidate="Mobile" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td>
                           <asp:TextBox ID="Mobile" runat="server" Height="18px" Width="150px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td>
                           Last Date
                           (If any)</td>
                       <td>
                           <asp:TextBox ID="Date" runat="server" Height="18px" Width="150px" placeholder="DD/MM/YYYY"></asp:TextBox>
                       </td>
                       <td>
                           Phone</td>
                       <td>
                           <asp:TextBox ID="Phone" runat="server" Height="18px" Width="150px" 
                               placeholder="If Any"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style="vertical-align:middle" height: "37px">
                           Job Description<asp:RequiredFieldValidator 
                               ID="ValidatorDescription" runat="server" 
                                    ControlToValidate="Description1" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                           </td>
                       <td style= "vertical-align:middle" height: "37px">
                           <asp:TextBox ID="Description1" runat="server" Height="67px" TextMode="MultiLine" 
                               Width="153px"></asp:TextBox>
                       </td>
                       <td style= "vertical-align:middle" height: "37px">
                           Website</td>
                       <td style= "vertical-align:middle" height: "37px">
                           <asp:TextBox ID="Website" runat="server" Height="18px" Width="150px" 
                               placeholder="If Any"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style= "vertical-align:middle">
                           Skills<asp:RequiredFieldValidator 
                               ID="ValidatorSkills" runat="server" 
                                    ControlToValidate="Skills1" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td style= "vertical-align:middle">
                           <asp:TextBox ID="Skills1" runat="server" Height="67px" TextMode="MultiLine" 
                               Width="153px"></asp:TextBox>
                       </td>
                       <td style= "vertical-align:middle">
                           Address<asp:RequiredFieldValidator 
                               ID="ValidatorAddress" runat="server" 
                                    ControlToValidate="Address1" ErrorMessage="*" Font-Italic="True" 
                                    ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            </td>
                       <td style= "vertical-align:middle">
                           <asp:TextBox ID="Address1" runat="server" Height="67px" TextMode="MultiLine" 
                               Width="153px"></asp:TextBox>
                       </td>
                   </tr>
                   <tr>
                       <td style= "vertical-align:middle" colspan="4">
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <asp:Button ID="Button1" runat="server" BackColor="#DB515B" Font-Bold="True" 
                               ForeColor="White" Text="Submit" Width="147px" onclick="Button1_Click" />
                           <asp:Label ID="UserId" runat="server" Text="Label" Visible="False"></asp:Label>
                       </td>
                   </tr>
               </table>
               </asp:Panel>
               <asp:Panel ID="Panel2" runat="server">
                   <div style="text-align: center">
                       <span style="color: #DB515B; font-size: 15pt">Your Job has been Successfully 
                       Posted.</span></div>
               </asp:Panel>
            </div>
            </div>

</article>
</section>
     <aside class="sidebar big-sidebar right-sidebar">
     <asp:Button ID="Login1" runat="server" BackColor="#DB515B" BorderStyle="Solid" 
                   Font-Bold="True" Height="42px" Text="Log Out" Width="130px" 
         CausesValidation="False" ForeColor="White" onclick="Login1_Click" />
                   <ul>	
               <li>
                    <h4 style="text-align: left">QuickLinks</h4>
                    <ul class="blocklist">
                    <br />
                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="selected" 
                            NavigateUrl="~/Dashboard.aspx">Dashboard</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink2" runat="server" CssClass="selected" 
                            NavigateUrl="~/AddCompany.aspx">Add a Company</asp:HyperLink></li>
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

