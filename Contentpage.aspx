<%@ Page Title="" Language="C#" MasterPageFile="~/Content.master" AutoEventWireup="true" CodeFile="Contentpage.aspx.cs" Inherits="Default4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="clear"></div>
 <div id="body" class="width">

	<section id="content" class="two-column with-right-sidebar">

	    <article>
        
        <div><h2>Sign up</h2>
            <p></p>
            </div>

</article>
</section>
<aside class="sidebar big-sidebar right-sidebar"><ul>	
               <li>
                    <h4>Blocklist</h4>
                    <ul class="blocklist">
                        <li><a href="index.html">Home Page</a></li>
                        <li><a class="selected" href="examples.html">Style Examples</a>
				<ul>
					<li><a href="three-column.html">Three Column</a></li>
					<li><a href="one-column.html">One column / no sidebar</a></li>
					<li><a href="text.html">Text / left sidebar</a></li>
				</ul>
			</li>
                        <li><a href="three-column.html">Three column layout example</a></li>
                        <li><a href="#">Sed aliquam libero ut velit bibendum</a></li>
                        <li><a href="#">Maecenas condimentum velit vitae</a></li>
                    </ul>
                </li>
                
               

		
               
                <li>
			<h4>News</h4>
			<ul class="newslist">
				<li>
					<p><span class="newslist-date">Jul 21</span>
			                   Quisque hendrerit lorem sit amet dui viverra dictum. Phasellus imperdiet magna sit amet arcu tristique ultricies ut in dui.</p>
				</li>

<li>
					<p><span class="newslist-date">May 09</span>
			                   Mauris et felis semper, congue dui ac, iaculis ipsum. Fusce non rhoncus risus, quis luctus nisl. Donec vitae velit tincidunt, tincidunt felis eu, suscipit nibh. </p>
 
				</li>
			</ul>
                </li>
	
   		<li>
                    <h4>Maecenas varius</h4>
                    <ul>
				<li><a href="#">Nam cursus nisi nec viverra iaculis</a></li>
				<li><a href="#">Integer lacinia risus id nibh vestibulum</a></li>
				<li><a href="#">Mauris eget ante ut elit rutrum ornare </a></li>
				<li><a href="#">Vivamus quis orci et suscipit consequa</a></li>
				<li><a href="#">Nam eget tellus adipiscin hendrerit</a></li>
			</ul>
                </li>
                
            </ul>
		
        </aside>
    	<div class="clear"></div>
    </div>
</asp:Content>

