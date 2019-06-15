<%@ Page Title="" Language="C#" MasterPageFile="~/Public_Pages/Public_MasterPage.master" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="Public_Pages_contactus" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="extra">

        
        <!--==============================content================================-->
        <section id="content">
            <div class="content-bg">
                <div class="main">
                    <div class="zerogrid">
                        <div class="wrapper">
                        	
						<article class="col-2-3">
							<div class="wrap-col">
                            <h4>Contact Form:</h4>
                                <br />
                            
                                <fieldset>
                                    <label><input  id="email" name="email" value="Email" onBlur="if(this.value=='') this.value='Email'" onFocus="if(this.value =='Email' ) this.value=''" style="border-color:black; color:black; height:23px; width: 508px;" runat="server" /></label><br />
                                    <label><input id="subject" name="subject" value="Subject" onBlur="if(this.value=='') this.value='Subject'" onFocus="if(this.value =='Subject' ) this.value=''" style="border-color:black; color:black; height:23px; width: 508px;" runat="server"/></label><br />
                                    <textarea id="message" onBlur="if(this.value=='') this.value='Message'" onFocus="if(this.value =='Message' ) this.value=''" style="border-color:black; color:black; width: 508px; height: 139px;" runat="server">Message</textarea>
                                    <div class="auto-style5">
                                        &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/send_btn.png" OnClick="ImageButton2_Click" />
&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/clear_btn.png" OnClick="ImageButton1_Click" />
                                        <asp:Label ID="Label1" runat="server" ForeColor="Lime" Text="The message has been sent" Visible="False"></asp:Label>
                                    </div>											
                                </fieldset>           
                          
							</div>
                        </article>
                             
                            <article class="col-1-3">
                            	<h3>Contact Info</h3>
                                <div style="width:100%; height:200px">
          
                                    <script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script><div style="overflow:hidden;height:200px;width:300px;"><div id="gmap_canvas" style="height:200px;width:300px;"></div><style>#gmap_canvas img{max-width:none!important;background:none!important}
                                 </div>                                                                                                                                                                                                                    .auto-style5 {
                                                                                                                                                                                                                                                               height: 124px;
                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                           .auto-style5 {
                                                                                                                                                                                                                                                               padding-top: 17px;
                                                                                                                                                                                                                                                               text-align: right;
                                                                                                                                                                                                                                                               float: left;
                                                                                                                                                                                                                                                               width: 304px;
                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                       </style><a class="google-map-code" href="http://www.map-embed.com" id="get-map-data">http://www.map-embed.com</a></div><script type="text/javascript"> function init_map() { var myOptions = { zoom: 16, center: new google.maps.LatLng(3.047895, 101.69285200000002), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById("gmap_canvas"), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(3.047895, 101.69285200000002) }); infowindow = new google.maps.InfoWindow({ content: "<b>Asia Pacific University of Technology &amp; Innovation (APU / APIIT)</b><br/>APU, Technology Park Malaysia Bukit Jalil 57000 Kuala Lumpur Federal Territory of Kuala Lumpur<br/> kuala Lumpure" }); google.maps.event.addListener(marker, "click", function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>
                       
                                <dl>
                                    <dt class="indent-bot">KL<br>APU Technology Park Malaysia.</dt>
                                    
                                    <dd><span>Telephone:</span>  +60 18 3527374</dd>
             
                                    <dd><span>Email:</span><a href="#">m_amighi@yahoo.com</a></dd>
                                </dl>
								
                         
                            </article>                        
                        </div>
                    </div>
                </div>
                <div class="block"></div>
            </div>
        </section>
    </div>
    
	

	<script type="text/javascript"> Cufon.now(); </script>

</asp:Content>

