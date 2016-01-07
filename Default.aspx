<%@ Page Title="" Language="C#" MasterPageFile="~/Main.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MetaDescription="Karnal.info is Famous city portal for Karnal.We have also added the links to add your own company and post a job to help people of karnal to Explore their business" %>

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
<section id="content" class="two-column with-right-sidebar">

	    <article>&nbsp;</article>
    <div>
    <h2>Karnal <span style="color: #C75961">Info</span></h2>
<p style="text-align: justify">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&quot;</strong>Karnal is the city of King Karan,situated in the state of Haryana. It is midway between Delhi and Chandigarh, being 123 km north of Delhi
and 126 km south of Chandigarh, on the National Highway NH-1.Delhi and Chandigarh can be reached from Karnal within 3 hours by means of Transport.
Karnal is very famous for its world class research and development institutes, namely Central Soil Salinity Research Institute (CSSRI),
National Dairy Research Institute (NDRI), Directorate of Wheat Research (DWR), National Bureau of Animal Genetic Resources (NBAGR),
Indian Agricultural Research Institute (IARI), and a regional centre of the Indira Gandhi National Open University.<strong>&quot;</strong><br /><br />
    <span style="color: #DA4C56">Karnal.info</span> is Famous city portal for Karnal.We have launched this website with the aim to help out the people of city and visitors of city.
We have also added the links to add your own company and post a job to help people of karnal to Explore their business.We want to bring all
about Karnal city under one dome. This will help karnalian's to get all they want in just single click.
    </p>

    <br />
        <br />
        <table style="width: 100%">
            <tr>
                <td style="width: 672px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    <br />
    
    
</div>
 <article class="expanded">&nbsp;</article></section><aside class="sidebar big-sidebar right-sidebar">
<asp:Button ID="Signup1" runat="server" Text="Sign up" BackColor="#E4E4E4" 
                   BorderStyle="Solid" Font-Bold="True" Height="42px" Width="130px" 
         CausesValidation="False" 
        onclick="Signup1_Click"></asp:Button>
               <asp:Button ID="Login1" runat="server" BackColor="#E4E4E4" BorderStyle="Solid" 
                   Font-Bold="True" Height="42px" Text="Log in" Width="130px" 
         CausesValidation="False" 
        onclick="Login1_Click"/>
                   <ul>	
               <li>
                    <h4 style="text-align: left">QuickLinks</h4>
                    <ul class="blocklist">
                    <li><asp:HyperLink ID="Addjob" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Add a Job</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="AddCompany" runat="server" CssClass="selected" 
                            NavigateUrl="~/Login.aspx">Add a Company</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink3" runat="server" CssClass="selected" 
                            NavigateUrl="~/Jobs.aspx">Latest Jobs</asp:HyperLink></li>
                    <br />
                    <li><asp:HyperLink ID="HyperLink4" runat="server" CssClass="selected" NavigateUrl="~/Categories.aspx">Company/Shops</asp:HyperLink></li>
                   </ul>
                   </li>
                    </ul>
                    
				
		
        </aside>
    	<div class="clear"></div>
    </div>

</asp:Content>

