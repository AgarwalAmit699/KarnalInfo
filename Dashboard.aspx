<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        
        <div><h2>Dash<span style="color: #C75961">board</span></h2>
        <p></p>
       <br />
            <table style="width: 100%">
                <tr>
                    <td>
                        <asp:Button ID="CompanyAdded" runat="server" BackColor="#C75961" 
                            Font-Bold="True" ForeColor="White" Text="Companies Added" Width="157px" 
                            onclick="CompanyAdded_Click" CausesValidation="False" />
                        <asp:Button ID="JObsAdded" runat="server" BackColor="#C75961" Font-Bold="True" 
                            ForeColor="White" Text="Jobs Added" Width="157px" 
                            onclick="JObsAdded_Click" CausesValidation="False" />
                        <asp:Button ID="ChangePass" runat="server" BackColor="#C75961" Font-Bold="True" 
                            ForeColor="White" Text="Change Password" Width="157px" 
                            onclick="ChangePass_Click" CausesValidation="False" />
                    </td>
                </tr>
            </table>
        <br />
        <asp:Panel ID="PanelWelcome" runat="server">
        <p>
            <span style="font-size: x-large">Hello</span> ,
            <asp:Label ID="LabelName" runat="server" Font-Size="X-Large" 
                ForeColor="#C75961" Font-Bold="True"></asp:Label>
            <asp:Label ID="No" runat="server" Visible="False"></asp:Label>
        </p>
            <p>
                “Welcome to the wonderful world of Karnal.info. With advanced features of adding 
                your Unlimited Companies/Shops to the site, posting recent jobs available for 
                recruitments you will definitely have a great experience of using our site”.
            </p>
            <p>
                Adding your Companies/Shops and posting jobs for your recruitment will 
                definitely make your business to run at high growth rate...!!
            </p>
        </asp:Panel>
        <br />
<asp:Panel ID="PanelCompany" runat="server">
    &nbsp;<h4>&nbsp;&nbsp; Companies added by you :
        <asp:Label ID="CompanyNo" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </h4>
    <hr />
    <br />
  
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
        CellPadding="4" DataKeyNames="S_No" DataSourceID="SqlDataSourceCompany" 
        ForeColor="#333333" GridLines="None" Height="50px" Width="653px" 
        AllowPaging="True" EnableViewState="False" 
        onitemcommand="DetailsView1_ItemCommand">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
        <EditRowStyle BackColor="#999999" />
        <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
        <Fields>
            <asp:TemplateField HeaderText="Date" SortExpression="Date">
                <EditItemTemplate><div align="center">
                     <asp:Label ID="Label17" runat="server" Text='<%# Bind("Date") %>' Font-Bold="True" ForeColor="White"></asp:Label></div>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label10" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category" SortExpression="Category">
                <EditItemTemplate>
                    <asp:DropDownList ID="Category" runat="server" SelectedValue='<%# Bind("Category") %>' Width="415px">
                                <asp:ListItem Selected="True" Value="100">Select</asp:ListItem>
                                <asp:ListItem>Agriculture Tools</asp:ListItem>
                                <asp:ListItem>Astrology</asp:ListItem>
                                <asp:ListItem>Automobile</asp:ListItem>
                                <asp:ListItem>Automobile Sale/Purchase</asp:ListItem>
                                <asp:ListItem>Advertising Agencies</asp:ListItem>
                                <asp:ListItem>Aluminium Works</asp:ListItem>
                                <asp:ListItem>Ayurvedic Medicine</asp:ListItem>
                                <asp:ListItem>ATM Centers</asp:ListItem>
                                <asp:ListItem>Advocate</asp:ListItem>
                                <asp:ListItem>Accommodations</asp:ListItem>
                                <asp:ListItem>Bakeries</asp:ListItem>
                                <asp:ListItem>Bags/Briefcases</asp:ListItem>
                                <asp:ListItem>Banquet/Marriage Palace</asp:ListItem>
                                <asp:ListItem>Book Shops/Stationary</asp:ListItem>
                                <asp:ListItem>Beauty Parlours/Saloons</asp:ListItem>
                                <asp:ListItem>Banks</asp:ListItem>
                                <asp:ListItem>Blood Banks</asp:ListItem>
                                <asp:ListItem>Builders</asp:ListItem>
                                <asp:ListItem>Building Materials</asp:ListItem>
                                <asp:ListItem>Bicycles</asp:ListItem>
                                <asp:ListItem>Boutiques</asp:ListItem>
                                <asp:ListItem>Battery Suppliers</asp:ListItem>
                                <asp:ListItem>Cables/Wires</asp:ListItem>
                                <asp:ListItem>Cement/Concrete Materials</asp:ListItem>
                                <asp:ListItem>C.A Accounting</asp:ListItem>
                                <asp:ListItem>Caterers</asp:ListItem>
                                <asp:ListItem>Chemist</asp:ListItem>
                                <asp:ListItem>Clinical Laboratory</asp:ListItem>
                                <asp:ListItem>Colleges</asp:ListItem>
                                <asp:ListItem>Computer Centers</asp:ListItem>
                                <asp:ListItem>Computer Sales/Repair</asp:ListItem>
                                <asp:ListItem>Courier Services</asp:ListItem>
                                <asp:ListItem>Cyber Cafe</asp:ListItem>
                                <asp:ListItem>Curtain Designer</asp:ListItem>
                                <asp:ListItem>Car Showrooms</asp:ListItem>
                                <asp:ListItem>Coaching Centers</asp:ListItem>
                                <asp:ListItem>Clothes Merchants</asp:ListItem>
                                <asp:ListItem>Cosmetics Stores</asp:ListItem>
                                <asp:ListItem>Clinics</asp:ListItem>
                                <asp:ListItem>D.J/Sound System</asp:ListItem>
                                <asp:ListItem>Dance Institutes</asp:ListItem>
                                <asp:ListItem>Dairy/Poultry</asp:ListItem>
                                <asp:ListItem>Driving Schools</asp:ListItem>
                                <asp:ListItem>Departmental Stores</asp:ListItem>
                                <asp:ListItem>Doctors</asp:ListItem>
                                <asp:ListItem>Dhabas</asp:ListItem>
                                <asp:ListItem>DryCleaners/Dyers</asp:ListItem>
                                <asp:ListItem>Electronics Shops</asp:ListItem>
                                <asp:ListItem>Flower Decorators</asp:ListItem>
                                <asp:ListItem>Footwears/Leathers</asp:ListItem>
                                <asp:ListItem>Fruits/Vegetables</asp:ListItem>
                                <asp:ListItem>Fancy Dress Materials</asp:ListItem>
                                <asp:ListItem>Fertilizers/Seeds</asp:ListItem>
                                <asp:ListItem>Finance/Investment</asp:ListItem>
                                <asp:ListItem>Furniture</asp:ListItem>
                                <asp:ListItem>Gas Agency</asp:ListItem>
                                <asp:ListItem>Gym</asp:ListItem>
                                <asp:ListItem>Gift Shops</asp:ListItem>
                                <asp:ListItem>Generator Services</asp:ListItem>
                                <asp:ListItem>Guest Houses</asp:ListItem>
                                <asp:ListItem>Hospitals</asp:ListItem>
                                <asp:ListItem>Hardware Stores</asp:ListItem>
                                <asp:ListItem>Hotels</asp:ListItem>
                                <asp:ListItem>Handlooms</asp:ListItem>
                                <asp:ListItem>Homeopathic Clinics</asp:ListItem>
                                <asp:ListItem>IceCream Shops</asp:ListItem>
                                <asp:ListItem>Insurance Companies/Agents</asp:ListItem>
                                <asp:ListItem>Iron &amp; Steels</asp:ListItem>
                                <asp:ListItem>Jewellers</asp:ListItem>
                                <asp:ListItem>Jagran Parties</asp:ListItem>
                                <asp:ListItem>Logistics</asp:ListItem>
                                <asp:ListItem>Mobile Shops</asp:ListItem>
                                <asp:ListItem>Opticals</asp:ListItem>
                                <asp:ListItem>Packaging</asp:ListItem>
                                <asp:ListItem>Petrol Pumps</asp:ListItem>
                                <asp:ListItem>Property Dealers</asp:ListItem>
                                <asp:ListItem>P.G Services</asp:ListItem>
                                <asp:ListItem>Photo Studios</asp:ListItem>
                                <asp:ListItem>Printing Shops</asp:ListItem>
                                <asp:ListItem>Restaurants</asp:ListItem>
                                <asp:ListItem>Rice Mill</asp:ListItem>
                                <asp:ListItem>Schools</asp:ListItem>
                                <asp:ListItem>Shopping Malls</asp:ListItem>
                                <asp:ListItem>Sweet Shops</asp:ListItem>
                                <asp:ListItem>Security System</asp:ListItem>
                                <asp:ListItem>Study Centers</asp:ListItem>
                                <asp:ListItem>Showrooms</asp:ListItem>
                                <asp:ListItem>Tailors</asp:ListItem>
                                <asp:ListItem>Tent House</asp:ListItem>
                                <asp:ListItem>Tour &amp; Travels</asp:ListItem>
                                <asp:ListItem>Tyres</asp:ListItem>
                                <asp:ListItem>Transport Services</asp:ListItem>
                                <asp:ListItem>Uniforms</asp:ListItem>
                                <asp:ListItem>Vehicle Parts</asp:ListItem>
                                <asp:ListItem>Web Designers</asp:ListItem>
                                <asp:ListItem>Watch Shops</asp:ListItem>
                                <asp:ListItem>Welding Works</asp:ListItem>
                            </asp:DropDownList>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Category") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Company" SortExpression="C_Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("C_Name") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("C_Name") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("C_Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Tagline" SortExpression="Tagline">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Tagline") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Tagline") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Tagline") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Contact Person" SortExpression="Person">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Person") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Person") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Person") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Mobile No" SortExpression="Mobile_No">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mobile_No") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Mobile_No") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Mobile_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Phone") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email Id" SortExpression="Email_Id">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email_Id") %>' Width="400" ></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email_Id") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email_Id") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Website" SortExpression="Website">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Website") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Website") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label8" runat="server" Text='<%# Bind("Website") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Gali" SortExpression="Gali">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Gali") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Gali") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label11" runat="server" Text='<%# Bind("Gali") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Shop" SortExpression="Shop">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Shop") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Shop") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label12" runat="server" Text='<%# Bind("Shop") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Address" SortExpression="Address">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Address") %>' Width="400"></asp:TextBox>
                </EditItemTemplate>
                <InsertItemTemplate>
                    <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                </InsertItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label9" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField InsertVisible="False" SortExpression="S_No" Visible="False">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("S_No") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label13" runat="server" Text='<%# Bind("S_No") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
        </Fields>
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#E9ECF1" ForeColor="#DB515B" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSourceCompany" runat="server" 
        ConnectionString="<%$ ConnectionStrings:KarnalConnectionString %>" 
        DeleteCommand="DELETE FROM [Company] WHERE [S_No] = @S_No" 
        InsertCommand="INSERT INTO [Company] ([Category], [Person], [C_Name], [Mobile_No], [Phone], [Tagline], [Email_Id], [Website], [Address], [Date], [Gali], [Shop]) VALUES (@Category, @Person, @C_Name, @Mobile_No, @Phone, @Tagline, @Email_Id, @Website, @Address, @Date, @Gali, @Shop)" 
        SelectCommand="SELECT [User_Id], [Category], [Person], [C_Name], [Mobile_No], [Phone], [Tagline], [Email_Id], [Website], [Address], [Date], [Gali], [Shop], [S_No] FROM [Company]" 
        UpdateCommand="UPDATE [Company] SET [Category] = @Category, [Person] = @Person, [C_Name] = @C_Name, [Mobile_No] = @Mobile_No, [Phone] = @Phone, [Tagline] = @Tagline, [Email_Id] = @Email_Id, [Website] = @Website, [Address] = @Address, [Date] = @Date, [Gali] = @Gali, [Shop] = @Shop WHERE [S_No] = @S_No">
        <DeleteParameters>
            <asp:Parameter Name="S_No" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Person" Type="String" />
            <asp:Parameter Name="C_Name" Type="String" />
            <asp:Parameter Name="Mobile_No" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Tagline" Type="String" />
            <asp:Parameter Name="Email_Id" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Gali" Type="String" />
            <asp:Parameter Name="Shop" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter Name="Person" Type="String" />
            <asp:Parameter Name="C_Name" Type="String" />
            <asp:Parameter Name="Mobile_No" Type="String" />
            <asp:Parameter Name="Phone" Type="String" />
            <asp:Parameter Name="Tagline" Type="String" />
            <asp:Parameter Name="Email_Id" Type="String" />
            <asp:Parameter Name="Website" Type="String" />
            <asp:Parameter Name="Address" Type="String" />
            <asp:Parameter Name="Date" Type="String" />
            <asp:Parameter Name="Gali" Type="String" />
            <asp:Parameter Name="Shop" Type="String" />
            <asp:Parameter Name="S_No" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
            </asp:Panel>
            <br />
            <asp:Panel ID="PanelJobs" runat="server">
             &nbsp;<h4>&nbsp;&nbsp; Jobs Posted by you :
        <asp:Label ID="JobsNo" runat="server" Font-Bold="True" Font-Size="X-Large"></asp:Label>
    </h4>
    <hr />
    <br />  
                <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" 
                    DataKeyNames="S_No" DataSourceID="SqlDataSourceJobs" Height="50px" 
                    Width="653px" AllowPaging="True" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" EnableViewState="False" 
                    onitemcommand="DetailsView2_ItemCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:TemplateField HeaderText="Post Date" SortExpression="Date">
                            <EditItemTemplate>
                                <div align="center">
                                    <asp:Label ID="Label16" runat="server" Font-Bold="True" ForeColor="White" 
                                        Text='<%# Bind("Date") %>'></asp:Label>
                                </div>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox15" runat="server" Text='<%# Bind("Date") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label15" runat="server" Text='<%# Bind("Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="S_No" HeaderText="S_No" InsertVisible="False" 
                            ReadOnly="True" SortExpression="S_No" Visible="False" />
                        <asp:BoundField DataField="User_Id" HeaderText="User_Id" 
                            SortExpression="User_Id" Visible="False" />
                        <asp:TemplateField HeaderText="Company" SortExpression="Company">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Company") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Company") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Job Post" SortExpression="Post">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Post") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Post") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("Post") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="No of Seats" SortExpression="Seats">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Seats") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Seats") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Bind("Seats") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description" SortExpression="Description">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Description") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Description") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Bind("Description") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Experience" SortExpression="Experience">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Experience") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Experience") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Bind("Experience") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Skills" SortExpression="Skills">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Skills") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Skills") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Bind("Skills") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email Id" SortExpression="Email_Id">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email_Id") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Email_Id") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Bind("Email_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Last Date" SortExpression="Last_Date">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Last_Date") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Last_Date") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Bind("Last_Date") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Location" SortExpression="Location">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Location") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Location") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Bind("Location") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Contact Person" SortExpression="Person">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Person") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Person") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Bind("Person") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile No" SortExpression="Mobile">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Mobile") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Mobile") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label11" runat="server" Text='<%# Bind("Mobile") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Phone") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label12" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Website" SortExpression="Website">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Website") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Website") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label13" runat="server" Text='<%# Bind("Website") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Address" SortExpression="Address">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Address") %>' Width="400"></asp:TextBox>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label14" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#E9ECF1" ForeColor="#DB515B" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSourceJobs" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:KarnalConnectionString %>" 
                    DeleteCommand="DELETE FROM [Jobs] WHERE [S_No] = @S_No" 
                    InsertCommand="INSERT INTO [Jobs], [Post], [Seats], [Email_Id], [Last_Date], [Experience], [Description], [Skills], [Company], [Location], [Person], [Mobile], [Phone], [Website], [Address], [Date]) VALUES (@User_Id, @Post, @Seats, @Email_Id, @Last_Date, @Experience, @Description, @Skills, @Company, @Location, @Person, @Mobile, @Phone, @Website, @Address, @Date)" 
                    SelectCommand="SELECT * FROM [Jobs]" 
                    UpdateCommand="UPDATE [Jobs] SET [Post] = @Post, [Seats] = @Seats, [Email_Id] = @Email_Id, [Last_Date] = @Last_Date, [Experience] = @Experience, [Description] = @Description, [Skills] = @Skills, [Company] = @Company, [Location] = @Location, [Person] = @Person, [Mobile] = @Mobile, [Phone] = @Phone, [Website] = @Website, [Address] = @Address, [Date] = @Date WHERE [S_No] = @S_No">
                    <DeleteParameters>
                        <asp:Parameter Name="S_No" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Post" Type="String" />
                        <asp:Parameter Name="Seats" Type="Int32" />
                        <asp:Parameter Name="Email_Id" Type="String" />
                        <asp:Parameter Name="Last_Date" Type="String" />
                        <asp:Parameter Name="Experience" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Skills" Type="String" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Person" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Website" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Post" Type="String" />
                        <asp:Parameter Name="Seats" Type="Int32" />
                        <asp:Parameter Name="Email_Id" Type="String" />
                        <asp:Parameter Name="Last_Date" Type="String" />
                        <asp:Parameter Name="Experience" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Skills" Type="String" />
                        <asp:Parameter Name="Company" Type="String" />
                        <asp:Parameter Name="Location" Type="String" />
                        <asp:Parameter Name="Person" Type="String" />
                        <asp:Parameter Name="Mobile" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Website" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Date" Type="String" />
                        <asp:Parameter Name="S_No" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
           
            <asp:Panel ID="PanelProfile" runat="server">
                <h3 style="color: #DB515B">
                    Your Profile :</h3>
               
             <hr />
              <br />
               
                <asp:DetailsView ID="DetailsView3" runat="server" AutoGenerateRows="False" 
                    CellPadding="4" DataKeyNames="Email_Id" DataSourceID="SqlDataSourceProfile" 
                    ForeColor="#333333" GridLines="None" Height="50px" Width="653px" 
                    EnableViewState="False" onitemcommand="DetailsView3_ItemCommand">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:TemplateField HeaderText="Email Id" SortExpression="Email_Id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Email_Id") %>' Font-Bold="True" ForeColor="White"></asp:Label>
                            </EditItemTemplate>
                            <InsertItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Email_Id") %>'></asp:TextBox>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Email_Id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" 
                            SortExpression="Address" />
                        <asp:BoundField DataField="Contact_No" HeaderText="Contact No" 
                            SortExpression="Contact_No" />
                        <asp:BoundField DataField="Occupation" HeaderText="Occupation" 
                            SortExpression="Occupation" />
                        <asp:CommandField ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSourceProfile" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:KarnalConnectionString %>" 
                    DeleteCommand="DELETE FROM [Users] WHERE [Email_Id] = @Email_Id" 
                    InsertCommand="INSERT INTO [Users] ([Name], [Email_Id], [Address], [Contact_No], [Occupation]) VALUES (@Name, @Email_Id, @Password, @Address, @Contact_No, @Occupation)" 
                    SelectCommand="SELECT [Name], [Email_Id], [Address], [Contact_No], [Occupation] FROM [Users]" 
                    UpdateCommand="UPDATE [Users] SET [Name] = @Name, [Address] = @Address, [Contact_No] = @Contact_No, [Occupation] = @Occupation WHERE [Email_Id] = @Email_Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Email_Id" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Email_Id" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Contact_No" Type="String" />
                        <asp:Parameter Name="Occupation" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Contact_No" Type="String" />
                        <asp:Parameter Name="Occupation" Type="String" />
                        <asp:Parameter Name="Email_Id" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             
            </asp:Panel>
            <asp:Panel ID="PanelChangePassword" runat="server">
                <h3 style="color: #DB515B">Change Password</h3><br />
                <table style="width: 93%">
                    <tr>
                        <td style="width: 378px; background-color: #E9ECF1">
                            <strong>Current Password<asp:RequiredFieldValidator ID="ValidatorCurrent" 
                                runat="server" ControlToValidate="ConfirmPass" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A" ValidationGroup="password"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                        <td style="background-color: #E9ECF1; width: 640px;">
                            <asp:TextBox ID="CurrentPass" runat="server" TextMode="Password" 
                                ValidationGroup="password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 378px; background-color: #E9ECF1">
                            <strong>New Password<asp:RequiredFieldValidator ID="ValidatorNewPass" 
                                runat="server" ControlToValidate="NewPass" ErrorMessage="*" Font-Italic="True" 
                                ForeColor="#D73F4A" ValidationGroup="password"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                        <td style="background-color: #E9ECF1; width: 640px;">
                            <asp:TextBox ID="NewPass" runat="server" TextMode="Password" 
                                ValidationGroup="password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 378px; background-color: #E9ECF1">
                            <strong>Confirm Password<asp:RequiredFieldValidator ID="ValidatorNewPass0" 
                                runat="server" ControlToValidate="ConfirmPass" Display="Dynamic" 
                                ErrorMessage="*" Font-Italic="True" ForeColor="#D73F4A" 
                                ValidationGroup="password"></asp:RequiredFieldValidator>
                            </strong>
                        </td>
                        <td style="background-color: #E9ECF1; width: 640px;">
                            <asp:TextBox ID="ConfirmPass" runat="server" TextMode="Password" 
                                ValidationGroup="password"></asp:TextBox>
                            <strong>
                            <asp:CompareValidator ID="CompareValidator0" runat="server" 
                                ControlToCompare="NewPass" ControlToValidate="ConfirmPass" Display="Dynamic" 
                                ErrorMessage="*Passwords don't match" Font-Italic="True" 
                                ForeColor="#D73F4A" ValidationGroup="password"></asp:CompareValidator>
                            </strong>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="background-color: #E9ECF1">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="ChangePassword" runat="server" BackColor="#DB515B" 
                                Font-Bold="True" ForeColor="White" onclick="ChangePassword_Click" 
                                Text="Change Password" Width="190px" ValidationGroup="password" 
                                oncommand="ChangePassword_Command" />
                        </td>
                    </tr>
                </table>
                       <div style="text-align: center">
                           <br />
                           &nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:Label ID="PassChanged" runat="server" Font-Bold="True" ForeColor="#DB515B" Font-Size="Large"></asp:Label>
                          <br />
                           <br />
                          
                           <asp:Button ID="Back" runat="server" BackColor="#DB515B" Font-Bold="True" 
                               ForeColor="White" Height="44px" Text="Back to Dashboard" Width="227px" 
                               CausesValidation="False" onclick="Back_Click" />
                       </div>
                   </asp:Panel>


           
            </div>

</article>
</section>
     <aside class="sidebar big-sidebar right-sidebar">
               <asp:Button ID="Logout" runat="server" BackColor="#DB515B" BorderStyle="Solid" 
                   Font-Bold="True" Text="Logout" Width="122px" 
         CausesValidation="False" ForeColor="White" 
         onclick="Logout_Click"/>
         
               
                    <asp:Button ID="EditProfile" runat="server" Text="Edit Profile" BackColor="#DB515B" 
                            Font-Bold="True" ForeColor="White" Width="122px" 
         onclick="EditProfile_Click" CausesValidation="False"></asp:Button>

                   <ul>	
               <li>
                    <h4 style="text-align: left">QuickLinks</h4>
                    <ul class="blocklist">
                    <br />
                   
                            
                    <li><asp:HyperLink ID="HyperLink1" runat="server" CssClass="selected" 
                            NavigateUrl="~/AddJob.aspx">Post a Job</asp:HyperLink></li>
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
