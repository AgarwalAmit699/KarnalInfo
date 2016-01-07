<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="AddCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
    <script type="text/javascript" src="js/MaxLength.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $("[id*=Address1]").MaxLength({ MaxLength: 50 });
        });
    </script>
    <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        
        <div><h2>Add Your <span style="color: #C75961">Company</span><img 
                src="img/addfree.png" style="width: 173px; height: 61px" /></h2>
            <p>&nbsp;</p>
            <div>
            <asp:Panel ID="Panel1" runat="server">
                <table style="width: 100%">
                    <tr>
                        <td style="width: 183px; height: 10px">
                            Category<asp:RequiredFieldValidator ID="ValidatorCategory" runat="server" 
                                ControlToValidate="Category" Display="Dynamic" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A" InitialValue="100"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 265px; height: 10px">
                            <asp:DropDownList ID="Category" runat="server" Height="32px" Width="163px">
                                <asp:ListItem Selected="True" Value="100">Select</asp:ListItem>
                                <asp:ListItem Value="0">Agriculture Tools</asp:ListItem>
                                <asp:ListItem Value="1">Astrology</asp:ListItem>
                                <asp:ListItem Value="2">Automobile</asp:ListItem>
                                <asp:ListItem Value="3">Automobile Sale/Purchase</asp:ListItem>
                                <asp:ListItem Value="4">Advertising Agencies</asp:ListItem>
                                <asp:ListItem Value="5">Aluminium Works</asp:ListItem>
                                <asp:ListItem Value="6">Ayurvedic Medicine</asp:ListItem>
                                <asp:ListItem Value="7">ATM Centers</asp:ListItem>
                                <asp:ListItem Value="8">Advocate</asp:ListItem>
                                <asp:ListItem Value="9">Accommodations</asp:ListItem>
                                <asp:ListItem Value="10">Bakeries</asp:ListItem>
                                <asp:ListItem Value="11">Bags/Briefcases</asp:ListItem>
                                <asp:ListItem Value="12">Banquet/Marriage Palace</asp:ListItem>
                                <asp:ListItem Value="13">Book Shops/Stationary</asp:ListItem>
                                <asp:ListItem Value="14">Beauty Parlours/Saloons</asp:ListItem>
                                <asp:ListItem Value="15">Banks</asp:ListItem>
                                <asp:ListItem Value="16">Blood Banks</asp:ListItem>
                                <asp:ListItem Value="17">Builders</asp:ListItem>
                                <asp:ListItem Value="18">Building Materials</asp:ListItem>
                                <asp:ListItem Value="19">Bicycles</asp:ListItem>
                                <asp:ListItem Value="20">Boutiques</asp:ListItem>
                                <asp:ListItem Value="21">Battery Suppliers</asp:ListItem>
                                <asp:ListItem Value="22">Cables/Wires</asp:ListItem>
                                <asp:ListItem Value="23">Cement/Concrete Materials</asp:ListItem>
                                <asp:ListItem Value="24">C.A Accounting</asp:ListItem>
                                <asp:ListItem Value="25">Caterers</asp:ListItem>
                                <asp:ListItem Value="26">Chemist</asp:ListItem>
                                <asp:ListItem Value="27">Clinical Laboratory</asp:ListItem>
                                <asp:ListItem Value="28">Colleges</asp:ListItem>
                                <asp:ListItem Value="29">Computer Centers</asp:ListItem>
                                <asp:ListItem Value="30">Computer Sales/Repair</asp:ListItem>
                                <asp:ListItem Value="31">Courier Services</asp:ListItem>
                                <asp:ListItem Value="32">Cyber Cafe</asp:ListItem>
                                <asp:ListItem Value="33">Curtain Designer</asp:ListItem>
                                <asp:ListItem Value="34">Car Showrooms</asp:ListItem>
                                <asp:ListItem Value="35">Coaching Centers</asp:ListItem>
                                <asp:ListItem Value="36">Clothes Merchants</asp:ListItem>
                                <asp:ListItem Value="37">Cosmetics Stores</asp:ListItem>
                                <asp:ListItem Value="38">Clinics</asp:ListItem>
                                <asp:ListItem Value="39">D.J/Sound System</asp:ListItem>
                                <asp:ListItem Value="40">Dance Institutes</asp:ListItem>
                                <asp:ListItem Value="41">Dairy/Poultry</asp:ListItem>
                                <asp:ListItem Value="42">Driving Schools</asp:ListItem>
                                <asp:ListItem Value="43">Departmental Stores</asp:ListItem>
                                <asp:ListItem Value="44">Doctors</asp:ListItem>
                                <asp:ListItem Value="45">Dhabas</asp:ListItem>
                                <asp:ListItem Value="46">DryCleaners/Dyers</asp:ListItem>
                                <asp:ListItem Value="47">Electronics Shops</asp:ListItem>
                                <asp:ListItem Value="48">Flower Decorators</asp:ListItem>
                                <asp:ListItem Value="49">Footwears/Leathers</asp:ListItem>
                                <asp:ListItem Value="50">Fruits/Vegetables</asp:ListItem>
                                <asp:ListItem Value="51">Fancy Dress Materials</asp:ListItem>
                                <asp:ListItem Value="52">Fertilizers/Seeds</asp:ListItem>
                                <asp:ListItem Value="53">Finance/Investment</asp:ListItem>
                                <asp:ListItem Value="54">Furniture</asp:ListItem>
                                <asp:ListItem Value="55">Gas Agency</asp:ListItem>
                                <asp:ListItem Value="56">Gym</asp:ListItem>
                                <asp:ListItem Value="57">Gift Shops</asp:ListItem>
                                <asp:ListItem Value="58">Generator Services</asp:ListItem>
                                <asp:ListItem Value="59">Guest Houses</asp:ListItem>
                                <asp:ListItem Value="60">Hospitals</asp:ListItem>
                                <asp:ListItem Value="61">Hardware Stores</asp:ListItem>
                                <asp:ListItem Value="62">Hotels</asp:ListItem>
                                <asp:ListItem Value="63">Handlooms</asp:ListItem>
                                <asp:ListItem Value="64">Homeopathic Clinics</asp:ListItem>
                                <asp:ListItem Value="65">IceCream Shops</asp:ListItem>
                                <asp:ListItem Value="66">Insurance Companies/Agents</asp:ListItem>
                                <asp:ListItem Value="67">Iron &amp; Steels</asp:ListItem>
                                <asp:ListItem Value="68">Jewellers</asp:ListItem>
                                <asp:ListItem Value="69">Jagran Parties</asp:ListItem>
                                <asp:ListItem Value="70">Logistics</asp:ListItem>
                                <asp:ListItem Value="71">Mobile Shops</asp:ListItem>
                                <asp:ListItem Value="72">Opticals</asp:ListItem>
                                <asp:ListItem Value="73">Packaging</asp:ListItem>
                                <asp:ListItem Value="74">Petrol Pumps</asp:ListItem>
                                <asp:ListItem Value="75">Property Dealers</asp:ListItem>
                                <asp:ListItem Value="76">P.G Services</asp:ListItem>
                                <asp:ListItem Value="77">Photo Studios</asp:ListItem>
                                <asp:ListItem Value="78">Printing Shops</asp:ListItem>
                                <asp:ListItem Value="79">Restaurants</asp:ListItem>
                                <asp:ListItem Value="80">Rice Mill</asp:ListItem>
                                <asp:ListItem Value="81">Schools</asp:ListItem>
                                <asp:ListItem Value="82">Shopping Malls</asp:ListItem>
                                <asp:ListItem Value="83">Sweet Shops</asp:ListItem>
                                <asp:ListItem Value="84">Security System</asp:ListItem>
                                <asp:ListItem Value="85">Study Centers</asp:ListItem>
                                <asp:ListItem Value="86">Showrooms</asp:ListItem>
                                <asp:ListItem Value="87">Tailors</asp:ListItem>
                                <asp:ListItem Value="88">Tent House</asp:ListItem>
                                <asp:ListItem Value="89">Tour &amp; Travels</asp:ListItem>
                                <asp:ListItem Value="90">Tyres</asp:ListItem>
                                <asp:ListItem Value="91">Transport Services</asp:ListItem>
                                <asp:ListItem Value="92">Uniforms</asp:ListItem>
                                <asp:ListItem Value="93">Vehicle Parts</asp:ListItem>
                                <asp:ListItem Value="94">Web Designers</asp:ListItem>
                                <asp:ListItem Value="95">Watch Shops</asp:ListItem>
                                <asp:ListItem Value="96">Welding Works</asp:ListItem>

                            </asp:DropDownList>
                        </td>
                        <td style="height: 10px; width: 209px;">
                            Contact Person<asp:RequiredFieldValidator ID="ValidatorContact" runat="server" 
                                ControlToValidate="ContactPerson" Display="Dynamic" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                        </td>
                        <td style="height: 10px">
                            <asp:TextBox ID="ContactPerson" runat="server" Height="18px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 183px; height: 4px;">
                            Company Name<asp:RequiredFieldValidator ID="ValidatorEmail2" runat="server" 
                                ControlToValidate="CompanyName" Display="Dynamic" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 265px; height: 4px;">
                            <asp:TextBox ID="CompanyName" runat="server" Height="18px" Width="150px"></asp:TextBox>
                        </td>
                        <td style="width: 209px; height: 4px;">
                            Mobile Number<asp:RequiredFieldValidator ID="ValidatorMobile" runat="server" 
                                ControlToValidate="Mobile" Display="Dynamic" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                        </td>
                        <td style="height: 4px">
                            <asp:TextBox ID="Mobile" runat="server" Height="18px" Width="150px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 183px; height: 25px;">
                            Tagline/Deals In<asp:RequiredFieldValidator ID="ValidatorTagline" 
                                runat="server" ControlToValidate="Tagline" Display="Dynamic" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                        </td>
                        <td style="width: 265px; height: 25px;">
                            <asp:TextBox ID="Tagline" runat="server" Height="18px" Width="150px"></asp:TextBox>
                        </td>
                        <td style="width: 209px; height: 25px;">
                            Phone</td>
                        <td style="height: 25px">
                            <asp:TextBox ID="Phone" runat="server" Height="18px" Width="150px" placeholder="If Any"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 183px; height: 25px;">
                            Email-Id</td>
                        <td style="width: 265px; height: 25px;">
                            <asp:TextBox ID="Email" runat="server" Height="18px" Width="150px" placeholder="If Any"></asp:TextBox>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RegularExpressionValidator ID="RegularExpressionEmail" runat="server" 
                                ControlToValidate="Email" Display="Dynamic" ErrorMessage="*Invalid Email-Id" 
                                Font-Italic="True" ForeColor="#D73F4A" 
                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                        <td style="width: 209px; height: 25px;">
                            Shop No</td>
                        <td style="height: 25px">
                            <asp:TextBox ID="Shop" runat="server" Height="18px" Width="150px" placeholder="If Any"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style= "vertical-align:middle; width: 183px;" rowspan="2">
                            Address<asp:RequiredFieldValidator ID="ValidatorAddress" runat="server" 
                                ControlToValidate="Address1" Display="Dynamic" ErrorMessage="*" 
                                Font-Italic="True" ForeColor="#D73F4A"></asp:RequiredFieldValidator>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                        <td rowspan="2" style="vertical-align:middle; width: 265px;">
                            <asp:TextBox ID="Address1" runat="server" Height="67px" 
                               TextMode="MultiLine" 
                                Width="153px"></asp:TextBox>
                        </td>
                        <td style="height: 21px; width: 209px;">
                            Gali No</td>
                        <td style="height: 21px">
                            <asp:TextBox ID="Gali" runat="server" Height="18px" Width="150px"  
                                placeholder="If Any"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 209px">
                            Website</td>
                        <td>
                            <asp:TextBox ID="Website" runat="server" Height="18px" Width="150px" placeholder="If Any"></asp:TextBox>
                        </td>
                    </tr>
                    </table>
                <p>&nbsp;</p>
                <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Add" runat="server" BackColor="#DB515B" Font-Bold="True" 
                                ForeColor="White" Text="Add Company" Width="144px" 
                        onclick="Add_Click" />
                        <asp:Label ID="UserId" runat="server" Text="Label" Visible="False"></asp:Label>
                        </p>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">
                            <div style="text-align: center">
                                <span style="color: #DB515B; font-size: 15pt">Your Company has been sucessfully 
                                added according to your category.
                                <br />
                                </span>
                            </div>
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
                            NavigateUrl="~/AddJob.aspx">Post a Job</asp:HyperLink></li>
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