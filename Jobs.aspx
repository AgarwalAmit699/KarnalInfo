<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Jobs.aspx.cs" Inherits="Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script>
    (function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date(); a = s.createElement(o),
  m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-54718519-1', 'auto');
    ga('send', 'pageview');

</script>
 <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        
        <div><h2 style="text-align: center">&nbsp;Latest <span style="color: #DB515B">Jobs</span> </h2>
            <p></p>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" DataKeyNames="S_No" 
                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" 
                PageSize="7">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="S_No" HeaderText="S_No" InsertVisible="False" 
                        ReadOnly="True" SortExpression="S_No" Visible="False" />
                    <asp:BoundField DataField="Post" HeaderText="Job Post" SortExpression="Post" />
                    <asp:BoundField DataField="Seats" HeaderText="No of Seats" 
                        SortExpression="Seats" />
                    <asp:BoundField DataField="Company" HeaderText="Company/Shop" 
                        SortExpression="Company" />
                    <asp:BoundField DataField="Location" HeaderText="Location" 
                        SortExpression="Location" />
                    <asp:BoundField DataField="Last_Date" HeaderText="Last Date" 
                        SortExpression="Last_Date" />
                    <asp:CommandField SelectText="More Info.." ShowSelectButton="True" >
                    <ControlStyle ForeColor="#DB515B" />
                    </asp:CommandField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#F7F6F3" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#E9ECF1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#E9ECF1" ForeColor="#DB515B" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:KarnalConnectionString %>" 
                SelectCommand="SELECT [S_No], [Post], [Seats], [Company], [Last_Date], [Location] FROM [Jobs] ORDER BY [Date]">
            </asp:SqlDataSource>
            <br />
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                CellPadding="4" DataKeyNames="S_No" DataSourceID="SqlDataSource2" 
                ForeColor="#333333" GridLines="None" Height="50px" Width="646px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                <EditRowStyle BackColor="#999999" />
                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                <Fields>
                    <asp:BoundField DataField="S_No" HeaderText="S_No" InsertVisible="False" 
                        ReadOnly="True" SortExpression="S_No" Visible="False" />
                    <asp:BoundField DataField="User_Id" HeaderText="User_Id" 
                        SortExpression="User_Id" Visible="False" />
                    <asp:BoundField DataField="Post" HeaderText="Job Post" SortExpression="Post" />
                    <asp:BoundField DataField="Seats" HeaderText="No of Seats" 
                        SortExpression="Seats" />
                    <asp:BoundField DataField="Company" HeaderText="Company Name" 
                        SortExpression="Company" />
                    <asp:BoundField DataField="Experience" HeaderText="Experience" 
                        SortExpression="Experience" />
                    <asp:BoundField DataField="Description" HeaderText="Description" 
                        SortExpression="Description" />
                    <asp:BoundField DataField="Skills" HeaderText="Skills" 
                        SortExpression="Skills" />
                    <asp:BoundField DataField="Location" HeaderText="Location" 
                        SortExpression="Location" />
                    <asp:BoundField DataField="Person" HeaderText="Person" 
                        SortExpression="Person" />
                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" 
                        SortExpression="Mobile" />
                    <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                    <asp:BoundField DataField="Email_Id" HeaderText="Email Id" 
                        SortExpression="Email_Id" />
                    <asp:BoundField DataField="Website" HeaderText="Website" 
                        SortExpression="Website" />
                    <asp:BoundField DataField="Address" HeaderText="Address" 
                        SortExpression="Address" />
                    <asp:BoundField DataField="Last_Date" HeaderText="Last Date" 
                        SortExpression="Last_Date" />
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" 
                        Visible="False" />
                </Fields>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                ConnectionString="<%$ ConnectionStrings:KarnalConnectionString %>" 
                SelectCommand="SELECT * FROM [Jobs] WHERE ([S_No] = @S_No)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="S_No" 
                        PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />



            <br />
            <br />



            </div>

</article>
</section>
<aside class="sidebar big-sidebar right-sidebar">
<asp:Button ID="Signup1" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
         CausesValidation="False" onclick="Signup1_Click"></asp:Button>
               <asp:Button ID="Login1" runat="server" BackColor="#E4E4E4" BorderStyle="Solid" 
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