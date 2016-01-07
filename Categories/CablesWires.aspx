<%@ Page Title="" Language="C#" MasterPageFile="~/Categories/Content.master" AutoEventWireup="true" CodeFile="CablesWires.aspx.cs" Inherits="CablesWires" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">
	    <article>
        <div><h2 style="text-align: center">Cables/Wires<asp:Label ID="Category" runat="server" Text="Cables/Wires" 
                Visible="False"></asp:Label>
            </h2>
        </h2>
         </h2>
            <div>
                <br />
               <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                
                    <AlternatingItemTemplate>
                      <ul style="background-color: #FFFFFF;"><div align="center">
                              <asp:Label ID="C_NameLabel" runat="server" Text='<%# Eval("C_Name") %>' Font-Bold="True" ForeColor="#C75961"  />
                            <br />
                           <tr><td> <asp:Label ID="TaglineLabel" runat="server" Text='<%# Eval("Tagline") %>' Font-Bold="True" ForeColor="#666666" /></div>
                            <br />
                           
                            <hr />
                            <br />
                            <span style="color:#000000; font-size:medium"><b>Dealer&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="PersonLabel" runat="server" Text='<%# Eval("Person") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#000000; font-size:medium"><b>Mobile&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="Mobile_NoLabel" runat="server" Text='<%# Eval("Mobile_No") %>' Font-Size="Medium" />
                            <br />
                            <span style="color:#000000; font-size:medium"><b>Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' Font-Size="Medium" />
                            <br />
                            <span style="color:#000000; font-size:medium"><b>Email Id&nbsp;</b></span>
                            <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#000000; font-size:medium"><b>Website&nbsp;&nbsp;</b></span>
                            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#000000; font-size:medium"><b>Gali No&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="GaliLabel" runat="server" Text='<%# Eval("Gali") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#000000; font-size:medium"><b>Shop No&nbsp;</b></span>
                            <asp:Label ID="ShopLabel" runat="server" Text='<%# Eval("Shop") %>' Font-Size="Medium" />
                            <br />
                            <span style="color:#000000; font-size:medium"><b>Address&nbsp;&nbsp;</b></span>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' Font-Size="Medium"/>
                            <br />
                                              
                         
                        </ul>
                    </AlternatingItemTemplate>
                  
                    
                    
                    <EmptyDataTemplate>
                        <div align="center"><b>No Data Found.</b></div> 
                    </EmptyDataTemplate>
                   
                   
                    <ItemSeparatorTemplate>
                        <br />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                       <ul style="background-color: #F7F7DE;color: #000000;"><div align="center">
                             <asp:Label ID="C_NameLabel" runat="server" Text='<%# Eval("C_Name") %>' Font-Bold="True" ForeColor="#C75961"/>
                            <br />
                            <asp:Label ID="TaglineLabel" runat="server" Text='<%# Eval("Tagline") %>' Font-Bold="True" ForeColor="#666666" />
                            </div>
                            <br />
                            <hr />
                            <br />
                           <span style="color:#C75961; font-size:medium"><b>Dealer&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="PersonLabel" runat="server" Text='<%# Eval("Person") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#C75961; font-size:medium"><b>Mobile&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="Mobile_NoLabel" runat="server" Text='<%# Eval("Mobile_No") %>' Font-Size="Medium" />
                            <br />
                            <span style="color:#C75961; font-size:medium"><b>Phone&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="PhoneLabel" runat="server" Text='<%# Eval("Phone") %>' Font-Size="Medium" />
                            <br />
                            <span style="color:#C75961; font-size:medium"><b>Email Id&nbsp;</b></span>
                            <asp:Label ID="Email_IdLabel" runat="server" Text='<%# Eval("Email_Id") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#C75961; font-size:medium"><b>Website&nbsp;&nbsp;</b></span>
                            <asp:Label ID="WebsiteLabel" runat="server" Text='<%# Eval("Website") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#C75961; font-size:medium"><b>Gali No&nbsp;&nbsp;&nbsp;</b></span>
                            <asp:Label ID="GaliLabel" runat="server" Text='<%# Eval("Gali") %>' Font-Size="Medium" />
                            <br /> 
                            <span style="color:#C75961; font-size:medium"><b>Shop No&nbsp;</b></span>
                            <asp:Label ID="ShopLabel" runat="server" Text='<%# Eval("Shop") %>' Font-Size="Medium" />
                            <br />
                            <span style="color:#C75961; font-size:medium"><b>Address&nbsp;&nbsp;</b></span>
                            <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' Font-Size="Medium"/>
                            <br /> 
                        </ul>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul ID="itemPlaceholderContainer" runat="server" 
                            style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="text-align: center;background-color: #FFFFFF;font-family: Verdana, Arial, Helvetica, sans-serif;color: #C75961;">
                            <asp:DataPager ID="DataPager1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                        ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                  
                    
                  
                </asp:ListView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:KarnalConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [C_Name], [Person], [Mobile_No], [Phone], [Tagline], [Email_Id], [Website], [Address], [Gali], [Shop] FROM [Company] WHERE ([Category] = @Category)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="Category" Name="Category" PropertyName="Text" 
                            Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
              
            </div>
</article>
</section>
<aside class="sidebar big-sidebar right-sidebar">
<asp:Button ID="Signup" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
         CausesValidation="False" onclick="Signup_Click" />
               <asp:Button ID="Login" runat="server" BackColor="#E4E4E4" BorderStyle="Solid" 
                   Font-Bold="True" Height="42px" Text="Log in" Width="130px" 
         CausesValidation="False" onclick="Login_Click" />
                   <ul>	
               <li>
                    <h4 style="text-align: left">QuickLinks</h4>
                    <ul class="blocklist">
                    <br />
                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="selected" 
                            NavigateUrl="~/Signup.aspx">Post a Job</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink2" runat="server" CssClass="selected" 
                            NavigateUrl="~/Signup.aspx">Add a Company</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink3" runat="server" CssClass="selected" 
                            NavigateUrl="~/Jobs.aspx">Latest Jobs</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink4" runat="server" CssClass="selected" NavigateUrl="~/Categories.aspx">Categories</asp:HyperLink></li>
                   </ul>
                   </li>
                    </ul>
                    
				
		
        </aside>
     <div class="clear"></div>
    </div>
</asp:Content>

