<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="CheckPositions.aspx.cs" Inherits="Employee_Pages_CheckPositions" %>

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
            width: 100%;
            height: 76px;
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
                                                                <div style="line-height:2em;text-align:center;letter-spacing:-1px; width:95%; background:url(../images/center-shadow.png) center top no-repeat; height: 44px; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: medium; " class="auto-style4">
                                                                    <span class="auto-style5">
                                    <strong><a href="Home.aspx"><span class="color-1">Home</span></a></strong></span><strong>
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
                                
                               <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
                                   <span class="auto-style5">CHECK POSITIONS</span>
                               </div>
                                <div style="line-height:3em;" class="auto-style6">

                                    <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" Font-Size="Medium" ForeColor="#0066CC" GroupName="check" Text="Open" />
&nbsp;
                                    <asp:RadioButton ID="RadioButton2" runat="server" Font-Size="Medium" ForeColor="#0066CC" GroupName="check" Text="Closed" />
&nbsp;
                                    <asp:RadioButton ID="RadioButton3" runat="server" Font-Size="Medium" ForeColor="#0066CC" GroupName="check" Text="All" />
&nbsp;<br />
&nbsp;
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/View_btn.png" OnClick="ImageButton1_Click" />
                                    &nbsp;
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Edit_btn.png" OnClick="ImageButton2_Click" Visible="False" />
                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Chose a postion" Visible="False"></asp:Label>
                                    <br />

                                </div>
                                <div style="width:100%;height:350px">

                                    <asp:Table ID="Table1" runat="server" Width="100%">
                                        <asp:TableRow runat="server" Font-Size="Medium" ForeColor="White" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle">
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">No</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Name</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">Needed</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Open Date</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">Close Date</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Test</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">Form</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Exprience</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle"></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>

                                </div>
                    
                           
						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

