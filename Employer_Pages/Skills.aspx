﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="Skills.aspx.cs" Inherits="Employer_Pages_Skills" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            left: 0px;
            top: 0px;
            height: 104px;
            font-size: large;
        }
        .auto-style5 {
            left: 0px;
            top: 0px;
            height: 104px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #fff;
            text-decoration: underline;
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
                                
                                <div style="line-height:3em;text-align:center;letter-spacing:-1px; width:95%; background:url(../images/center-shadow.png) center top no-repeat; height: 44px; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: medium; " class="auto-style4">
                                   <strong><a href="Home.aspx"><span class="color-1">Home</span></a></strong>
                                </div>
               <div id="wrapper-200a" style="width:95%;">

		<ul class="accordion">
			
			<li id="one" class="account">

				<a href="#one"><asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large"></asp:Label></a>

				<ul class="sub-menu">
					
					<li><a href="Account.aspx">Account</a></li>

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
                                
                               <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
                                   <span class="auto-style5">Your Skills</span>
                               </div>
                                <div style="width:100%; height:100%">
                                    <div style="width:50%; height:45%; float:left">
                                        <br />
                                        <asp:Label ID="Label2" runat="server" Text="Skills" Font-Bold="True" Font-Size="Medium" ForeColor="#006699"></asp:Label><br />
                                        <asp:TextBox ID="TextBox1" runat="server" Height="135px" TextMode="MultiLine" Width="300px" Enabled="False"></asp:TextBox>
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Edit_btn.png" OnClick="ImageButton1_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/save_btn.png" OnClick="ImageButton2_Click" />
                                    </div>
                                    <div style="width:50%; height:45%; float:left">
                                        <br />
                                        <asp:Label ID="Label3" runat="server" Text="Interested" Font-Bold="True" Font-Size="Medium" ForeColor="#006699"></asp:Label><br />
                                        <asp:TextBox ID="TextBox2" runat="server" Height="135px" TextMode="MultiLine" Width="300px" Enabled="False"></asp:TextBox>
                                        <br />
                                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/Edit_btn.png" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/save_btn.png" OnClick="ImageButton4_Click" />
                                    </div>
                                    <div style="width:50%; height:55%; float:left">
                                        <br />
                                        <asp:Label ID="Label4" runat="server" Text="Education" Font-Bold="True" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="TextBox3" runat="server" Height="135px" TextMode="MultiLine" Width="300px" Enabled="False"></asp:TextBox>

                                        <br />
                                        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/Edit_btn.png" OnClick="ImageButton5_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/images/save_btn.png" OnClick="ImageButton6_Click" />

                                    </div>
                                    <div style="width:50%;height:55%; float:left">

                                        <br />
                                        <asp:Label ID="Label6" runat="server" Text="Current Job" Font-Bold="True" Font-Size="Medium" ForeColor="#006699"></asp:Label>
                                        <br />
                                        <asp:TextBox ID="TextBox4" runat="server" Width="300px" Height="135px" TextMode="MultiLine" Enabled="False"></asp:TextBox>
                                         <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="~/images/Edit_btn.png" OnClick="ImageButton7_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="~/images/save_btn.png" OnClick="ImageButton8_Click" />
                                    </div>


                                </div>
                                    
                           
						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

