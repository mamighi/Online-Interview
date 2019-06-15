<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="TakeTest.aspx.cs" Inherits="Employer_Pages_TakeTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: xx-large;
        }
        .auto-style5 {
            font-size: x-large;
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style6 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style7 {
            height: 90px;
            width: 76px;
            float: left;
        }
        .auto-style8 {
            height: 90px;
            width: 168px;
            float: left;
        }
        .auto-style9 {
            background-color: #C0C0C0;
        }
        .auto-style10 {
            text-align: center;
            background-color: #808080;
        }
        .auto-style11 {
            font-size: large;
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
                                 <div style="line-height:1em;text-align:center;letter-spacing:-1px; width:95%; background:url(../images/center-shadow.png) center top no-repeat; height: 33px; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: medium; " class="auto-style4">
                                                                   
                                     <strong><a href="Home.aspx"><span class="color-1">Home</span></a></strong>
                                
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
                                <div style="float:left; width:100%; height:100%">
                                     <div id="head" style="background-position: center top; height:45px; line-height:3em; background-image: url('../images/center-shadow.png'); background-repeat: no-repeat; background-attachment: scroll;" class="auto-style10">
                                       <span class="auto-style6">Test</span>
                                     </div>
                                    <div style="height:90px;width:100%" class="auto-style9">
                                        <div style="line-height:40px;" class="auto-style7">
                                            <asp:Label ID="Label2" runat="server" Text="Position:" ForeColor="#0033CC" Font-Bold="True" Font-Size="Medium"></asp:Label><br />
                                            <asp:Label ID="Label3" runat="server" Text="Test:" ForeColor="#0033CC" Font-Bold="True" Font-Size="Medium"></asp:Label>

                                        </div>
                                        <div style="line-height:40px;" class="auto-style8">
                                            <asp:Label ID="Label4" runat="server" Text="Position:" ForeColor="#0033CC" Font-Size="Medium"></asp:Label><br />
                                            <asp:Label ID="Label5" runat="server" Text="Test:" ForeColor="#0033CC" Font-Size="Medium"></asp:Label>

                                        </div>
                                        <div style="height:90px; line-height:40px;width:200px; float:right">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <asp:Timer ID="Timer1" runat="server" Interval="60" OnTick="Timer1_Tick">
                                            </asp:Timer>
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                            <asp:Label runat="server" ID="Label6" Font-Bold="True" 
                                            Font-Names="Book Antiqua" Font-Size="X-Large"
                                            ForeColor="Red" />
                                            </ContentTemplate>
                                            <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                            </Triggers>
                                            </asp:UpdatePanel>

                                        </div>
                                    </div>
                                    <div style="width:100%; height:300px; overflow-y: scroll;">
                                        <asp:Panel ID="Panel1" runat="server" Height="100%" Width="100%">
                                            <asp:Table ID="Table1" runat="server" Width="100%">
                                            </asp:Table>
                                        </asp:Panel>
                                    </div>
                                    <div style="width:100%; height:40px">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submit_btn.png" OnClick="ImageButton1_Click" />
                                        
                                    </div>


                                </div>

                              

						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

