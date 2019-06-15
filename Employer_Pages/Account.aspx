<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="Account.aspx.cs" Inherits="Employer_Pages_Account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #0033CC;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="content" style="height:514px; top: 0px; left: 0px;">
            <div class="content-bg" style="height:100%">
                <div class="main" style="height:100%">
                    <div class="zerogrid" style="height:488px; top: 0px; left: 0px;">
                        <div class="wrapper" style="height:100%">
                            <article class="col-1-3" style="width:25%">
                                 <div style="line-height:2em;text-align:center;letter-spacing:-1px; width:95%; background:url(../images/center-shadow.png) center top no-repeat; height: 33px; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: medium; " class="auto-style4">
                                                                    <span class="auto-style5">
                                    <strong class="auto-style4">Home</strong></span><strong>
                                </strong>
                                </div>
       <div id="wrapper-200a" style="width:95%">

		<ul class="accordion">
			
			<li id="one" class="account">

				<a href="#one"><asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large"></asp:Label></a>

				<ul class="sub-menu">
					
					<li><a href="#one">Account</a></li>

					<li><a href="../Public_Pages/SignOut.aspx">Sign out</a></li>

				</ul>

			</li>
			
			<li id="two" class="interview">

				<a href="#two">Interview</a>

				<ul class="sub-menu">
					
					<li><a href="CheckInterview.aspx?type=up">Up Comings</a></li>
					
					<li><a href="CheckInterview.aspx?type=past">Previous</a></li>
				</ul>

			</li>
			
			<li id="three" class="Position">

				<a href="#three">Details</a>

				<ul class="sub-menu">
					
					<li><a href="Skills.aspx">Skills/Education</a></li>
					
					<li><a href="Certificates.aspx">Certificates</a></li>

				</ul>

			</li>
			
			
           
		
		</ul>
		
	</div>

                            
                            </article>
                            <article class="col-2-3" style="height:100%">
                                <div style="float:left; width:100%;  height:100%">
                                     <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
                                       <span class="auto-style5"><strong>ACCOUNT</strong></span>
                                     </div>
                                    <div style="height:400px; width:100%">
                                        <div style="width:100px; height:100%; float:left; line-height:20px;">


                                            <br />
                                            <span class="auto-style6">Email:<br />
                                            <br />
                                            Password:<br />
                                            <br />
                                            Re-Password:<br />
                                            <br />
                                            Date Of Birth:<br />
                                            <br />
                                            Phone Number:</span><br />
                                            <br />


                                        </div>
                                        <div style="width:300px; height:100%; float:left; line-height:20px;">
                                            <br />
                                            <strong>
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                            </strong>
                                            <br />
                                            <br />
                                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox>
                                            <br />
                                            <br />
                                            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Please Fill All Field" Visible="False"></asp:Label>
                                            <br />
                                            <br />
                                <select id="Day" runat="server" __designer:mapid="4bf" name="D1">
                                        <option __designer:mapid="4c0">1</option>
                    <option __designer:mapid="4c1">2</option>
                    <option __designer:mapid="4c2">3</option>
                    <option __designer:mapid="4c3">4</option>
                    <option __designer:mapid="4c4">5</option>
                    <option __designer:mapid="4c5">6</option>
                    <option __designer:mapid="4c6">7</option>
                    <option __designer:mapid="4c7">8</option>
                    <option __designer:mapid="4c8">9</option>
                    <option __designer:mapid="4c9">10</option>
                    <option __designer:mapid="4ca">11</option>
                    <option __designer:mapid="4cb">12</option>
                    <option __designer:mapid="4cc">13</option>
                    <option __designer:mapid="4cd">14</option>
                    <option __designer:mapid="4ce">15</option>
                    <option __designer:mapid="4cf">16</option>
                    <option __designer:mapid="4d0">17</option>
                    <option __designer:mapid="4d1">18</option>
                    <option __designer:mapid="4d2">19</option>
                    <option __designer:mapid="4d3">20</option>
                    <option __designer:mapid="4d4">21</option>
                    <option __designer:mapid="4d5">22</option>
                    <option __designer:mapid="4d6">23</option>
                    <option __designer:mapid="4d7">24</option>
                    <option __designer:mapid="4d8">25</option>
                    <option __designer:mapid="4d9">26</option>
                    <option __designer:mapid="4da">27</option>
                    <option __designer:mapid="4db">28</option>
                    <option __designer:mapid="4dc">29</option>
                    <option __designer:mapid="4dd">30</option>
                    <option __designer:mapid="4de">31</option>

                </select><select id="Month" runat="server" __designer:mapid="4df" name="D2">
                                        <option __designer:mapid="4e0">1</option>
                    <option __designer:mapid="4e1">2</option>
                    <option __designer:mapid="4e2">3</option>
                    <option __designer:mapid="4e3">4</option>
                    <option __designer:mapid="4e4">5</option>
                    <option __designer:mapid="4e5">6</option>
                    <option __designer:mapid="4e6">7</option>
                    <option __designer:mapid="4e7">8</option>
                    <option __designer:mapid="4e8">9</option>
                    <option __designer:mapid="4e9">10</option>
                    <option __designer:mapid="4ea">11</option>
                    <option __designer:mapid="4eb">12</option>

                </select><select id="Year" runat="server" __designer:mapid="4ec" name="D3">
                                        <option __designer:mapid="4ed">1965</option>
                    <option __designer:mapid="4ee">1966</option>
                    <option __designer:mapid="4ef">1967</option>
                    <option __designer:mapid="4f0">1968</option>
                    <option __designer:mapid="4f1">1969</option>
                    <option __designer:mapid="4f2">1970</option>
                    <option __designer:mapid="4f3">1971</option>
                    <option __designer:mapid="4f4">1972</option>
                    <option __designer:mapid="4f5">1973</option>
                    <option __designer:mapid="4f6">1974</option>
                    <option __designer:mapid="4f7">1975</option>
                    <option __designer:mapid="4f8">1976</option>
                    <option __designer:mapid="4f9">1977</option>
                    <option __designer:mapid="4fa">1978</option>
                    <option __designer:mapid="4fb">1979</option>
                    <option __designer:mapid="4fc">1980</option>
                    <option __designer:mapid="4fd">1981</option>
                    <option __designer:mapid="4fe">1982</option>
                    <option __designer:mapid="4ff">1983</option>
                    <option __designer:mapid="500">1984</option>
                    <option __designer:mapid="501">1985</option>
                    <option __designer:mapid="502">1986</option>
                    <option __designer:mapid="503">1987</option>
                    <option __designer:mapid="504">1988</option>
                    <option __designer:mapid="505">1989</option>
                    <option __designer:mapid="506">1990</option>
                    <option __designer:mapid="507">1991</option>
                    <option __designer:mapid="508">1992</option>
                    <option __designer:mapid="509">1993</option>
                    <option __designer:mapid="50a">1994</option>
                    <option __designer:mapid="50b">1995</option>

                </select><br />
                                            <br />
                                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            <br />
                                            <br />
&nbsp;<asp:Label ID="Label3" runat="server" ForeColor="Red" Text="Please Fill All Field" Visible="False"></asp:Label>
                                            <br />
                                            <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Update_btn.png" Width="73px" OnClick="ImageButton1_Click" />
                                    </div>
                                        <div>
                                        </div>

                                </div>

                              

						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

