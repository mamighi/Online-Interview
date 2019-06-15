<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="Certificates.aspx.cs" Inherits="Employer_Pages_Certificates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style6 {
            text-align: center;
            color: #FFFFFF;
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
                                    <a href="Home.aspx"><span class="color-1"><strong class="auto-style4">Home</strong></span></a>
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
                                
                               <div id="head" style="height:45px; line-height:3em; background-color: transparent; background-image: url('../images/center-shadow.png'); background-attachment: scroll;" class="auto-style6">
                                   <strong class="auto-style4">CV/Certificates</strong></div>
                                <div style="width:100%; height:100%">
                                    <div style="width:50%;height:200px;float:left">

                                        <br />
                                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0066CC" Text="CV"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label3" runat="server" ForeColor="#000066" Text="You Have Not Upload Any CV"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="24px" ImageUrl="~/images/View_btn.png" Width="76px" OnClick="ImageButton1_Click" />
&nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" Height="24px" ImageUrl="~/images/Del_btn.png" Width="76px" />
                                        <br />
                                        <br />
                                        <asp:FileUpload ID="FileUpload1" runat="server" BorderStyle="None" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="24px" ImageUrl="~/images/Upload_btn.png" Width="76px" OnClick="ImageButton3_Click" />
&nbsp;
                                        
                                    </div>
                                    <div style="width:50%;height:200px;float:left">

                                        <br />
                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0066CC" Text="First Certificate"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label5" runat="server" ForeColor="#000066" Text="You Have Not Upload Any Certificate"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton5" runat="server" Height="24px" ImageUrl="~/images/View_btn.png" Width="76px" OnClick="ImageButton5_Click" />
&nbsp;
                                        <asp:ImageButton ID="ImageButton6" runat="server" Height="24px" ImageUrl="~/images/Del_btn.png" Width="76px" />
                                        <br />
                                        <br />
                                        <asp:FileUpload ID="FileUpload2" runat="server" BorderStyle="None" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton7" runat="server" Height="24px" ImageUrl="~/images/Upload_btn.png" Width="76px" OnClick="ImageButton7_Click" />
&nbsp;
                                        
                                    </div>
                                    <div style="width:50%;height:200px;float:left">

                                        <br />
                                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0066CC" Text="Second Certificate"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label7" runat="server" ForeColor="#000066" Text="You Have Not Upload Any Certificate"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton9" runat="server" Height="24px" ImageUrl="~/images/View_btn.png" Width="76px" OnClick="ImageButton9_Click" />
&nbsp;
                                        <asp:ImageButton ID="ImageButton10" runat="server" Height="24px" ImageUrl="~/images/Del_btn.png" Width="76px" />
                                        <br />
                                        <br />
                                        <asp:FileUpload ID="FileUpload3" runat="server" BorderStyle="None" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton11" runat="server" Height="24px" ImageUrl="~/images/Upload_btn.png" Width="76px" OnClick="ImageButton11_Click" />
&nbsp;
                                        
                                    </div>
                                    <div style="width:50%;height:200px;float:left">

                                        <br />
                                        <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="#0066CC" Text="Third Certificate"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label9" runat="server" ForeColor="#000066" Text="You Have Not Upload Any Certificate"></asp:Label>
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton13" runat="server" Height="24px" ImageUrl="~/images/View_btn.png" Width="76px" OnClick="ImageButton13_Click" />
&nbsp;
                                        <asp:ImageButton ID="ImageButton14" runat="server" Height="24px" ImageUrl="~/images/Del_btn.png" Width="76px" />
                                        <br />
                                        <br />
                                        <asp:FileUpload ID="FileUpload4" runat="server" BorderStyle="None" />
                                        <br />
                                        <br />
                                        <asp:ImageButton ID="ImageButton15" runat="server" Height="24px" ImageUrl="~/images/Upload_btn.png" Width="76px" OnClick="ImageButton15_Click" />
&nbsp;&nbsp;</div>


                                </div>
                                    
                           
						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

