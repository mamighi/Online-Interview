<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Employer_Pages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style7 {
            background-color: #CCCCCC;
        }
        .auto-style8 {
            text-align: center;
            background-color: #CCCCCC;
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
                                <div style="float:left; width:50%; margin-left:25%; height:100%">
                                     <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
                                       <span class="auto-style5">Up Coming Interview</span>
                                     </div>
                                    <div style="width=100%" class="auto-style8">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <asp:Timer ID="Timer1" runat="server" Interval="600" OnTick="Timer1_Tick">
                                            </asp:Timer>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                            <asp:Label runat="server" ID="Label2" Font-Bold="True" 
                                            Font-Names="Book Antiqua" Font-Size="Large"
                                            ForeColor="#0066FF" />
                                            </ContentTemplate>
                                            <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                            </Triggers>
                                            </asp:UpdatePanel>
                                    </div>
                                    <div style="width:30%;  line-height:40px; float:left" class="auto-style7">
                                        <asp:Label ID="Label5" runat="server" Text="Company: " ForeColor="Blue"></asp:Label><br />
                                        <asp:Label ID="Label6" runat="server" Text="Position: " ForeColor="Blue"></asp:Label><br />
                                        <asp:Label ID="Label7" runat="server" Text="Date:" ForeColor="Blue"></asp:Label><br />
                                        <asp:Label ID="Label8" runat="server" Text="Time:" ForeColor="Blue"></asp:Label><br />
                                        <asp:Label ID="Label9" runat="server" Text="Duration:" ForeColor="Blue"></asp:Label><br />
                                        <asp:Label ID="Label10" runat="server" Text="Test:" ForeColor="Blue"></asp:Label><br />
                                        <asp:Label ID="Label11" runat="server" Text="Form:" ForeColor="Blue"></asp:Label>
                                    </div>
                                    <div style="width:70%; line-height:40px; float:right" class="auto-style7">


                                        <asp:Label ID="Label3" runat="server" ForeColor="#333399"></asp:Label>
                                        <br />
                                        <asp:Label ID="Label4" runat="server" ForeColor="#333399"></asp:Label><br />
                                        <asp:Label ID="Label12" runat="server" ForeColor="#333399"></asp:Label><br />
                                        <asp:Label ID="Label13" runat="server" ForeColor="#333399"></asp:Label><br />
                                        <asp:Label ID="Label14" runat="server" ForeColor="#333399"></asp:Label>&nbsp;&nbsp; <br />
                                        <asp:Label ID="Label15" runat="server" ForeColor="#333399"></asp:Label>&nbsp;
                                        <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderStyle="None" ForeColor="Red" Height="16px" OnClick="Button1_Click" Text="Take Test" Visible="False" />
                                        <br />

                                        <asp:Label ID="Label16" runat="server" ForeColor="#333399"></asp:Label>
                                    &nbsp;
                                        <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" BorderStyle="None" ForeColor="Red" Height="16px" Text="Fill Form" Visible="False" OnClick="Button2_Click" />
                                    </div>
                                    <div class="box" style="width:100%">
                                        	<div class="padding" style="font-size:medium">
                                            	<a href="Interview.aspx">Go To Interview</a>
                                            </div>
                                        </div>


                                </div>

                              

						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
       
</asp:Content>

