<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Pages/Employee_MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Employee_Pages_Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style6 {
            height: 155px;
            text-align: center;
        }
        .auto-style7 {
            background-color: #FFFFFF;
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

				<a href="#one" style="text-align:center">
               
                    <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large"></asp:Label>
                
                </a>

				<ul class="sub-menu">
					
					<li><a href="Account.aspx">Account</a></li>

					<li><a href="../Public_Pages/SignOut.aspx">Sign out</a></li>

				</ul>

			</li>
			
			<li id="two" class="interview">

				<a href="#two">Interview</a>

				<ul class="sub-menu">
					
					<li><a href="NewInterview.aspx">New Interview</a></li>
					


					<li><a href="CheckInterview.aspx">Check Interviews</a></li>

				</ul>

			</li>
			
			<li id="three" class="Position">

				<a href="#three">Position</a>

				<ul class="sub-menu">
					
					<li><a href="NewPosition.aspx">New Position</a></li>
					


					<li><a href="CheckPositions.aspx">Check Positions</a></li>

				</ul>

			</li>
			
			<li id="four" class="Test">

				<a href="#four">Test</a>

				<ul class="sub-menu">
					
					<li><a href="NewTest.aspx">New Test</a></li>
					


					<li><a href="CheckTests.aspx">Check Test</a></li>

				</ul>

			</li>
            <li id="five" class="Form">

				<a href="#five">Form</a>

				<ul class="sub-menu">
					
					<li><a href="NewForm.aspx">New Form</a></li>
					


					<li><a href="CheckForm.aspx">Check Forms</a></li>

				</ul>

			</li>
		
		</ul>
		
	</div>

                            
                            </article>
                            <article class="col-2-3" style="height:100%">
                                <div style="float:left; width:100%; height:50%">
                                    <h4 class="p2">Interviews</h4>
                                        <figure>
                                            <asp:Table ID="Table1" runat="server" Height="155px" HorizontalAlign="Center" GridLines="Both" Width="100%">
                                                <asp:TableRow runat="server" BorderColor="Black" BorderStyle="Dotted" Height="30px" HorizontalAlign="Center" VerticalAlign="Top">
                                                    <asp:TableCell runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" VerticalAlign="Middle">Candidate</asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="#6C6E74" Font-Size="Medium" ForeColor="White" VerticalAlign="Middle">Position</asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" VerticalAlign="Middle">Date</asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="#6C6E74" Font-Size="Medium" ForeColor="White" VerticalAlign="Middle">Time</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" Height="25px" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" Height="25px" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" Height="25px" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" Height="25px" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White" BorderColor="#66CCFF"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" Height="25px" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>


                                        </figure>
                                        <div class="box" style="margin-bottom:0; width:100%">
                                        	<div class="padding" style="font-size:medium; height:20px">
                                            	<a href="CheckInterview.aspx">See All</a>
                                            </div>
                                        </div>

                                </div>
                                <div style="float:left; width:50%; height:50%">
                                    <h4 class="p2">Positions</h4>
                                        <figure>
                                            <asp:Table ID="Table2" runat="server" Height="155px" HorizontalAlign="Center" Width="278px">
                                                <asp:TableRow runat="server" Height="30px" HorizontalAlign="Left" VerticalAlign="Middle">
                                                    <asp:TableCell runat="server" BackColor="#333333" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">Position</asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="#6C6E74" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">DeadLine</asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="#333333" BorderColor="#0033CC" Font-Size="Medium" ForeColor="White" HorizontalAlign="Center" VerticalAlign="Middle">Open Pos.</asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow runat="server" HorizontalAlign="Center">
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="White"></asp:TableCell>
                                                    <asp:TableCell runat="server" BackColor="Silver"></asp:TableCell>
                                                </asp:TableRow>
                                            </asp:Table>


                                        </figure>
                                        <div class="box">
                                        	<div class="padding" style="font-size:medium">
                                            	<a href="CheckPositions.aspx">See All</a>
                                            </div>
                                        </div>
                                </div>
                               
                                <div style="float:left; width:50%; height:50%" class="auto-style7">
                                    <h4 class="p2">Up Coming Interview</h4>
                                    <div class="auto-style6">
                                            <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <asp:Timer ID="Timer1" runat="server" Interval="600" ClientIDMode="AutoID" OnTick="Timer1_Tick">
                                            </asp:Timer>
                                            <br />
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
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text="Candidate:" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                                            
                                            <asp:Label ID="Label5" runat="server" Font-Size="Medium" ForeColor="#0033CC" Text="Label"></asp:Label>
                                            
                                            <br />
                                            <br />
                                            <asp:Label ID="Label4" runat="server" Text="Position:" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                                         
                                            <asp:Label ID="Label6" runat="server" Font-Size="Medium" ForeColor="#0033CC"></asp:Label>
                                         
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

