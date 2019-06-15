<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Pages/Employee_MasterPage.master" AutoEventWireup="true" CodeFile="InterviewDetails.aspx.cs" Inherits="Employee_Pages_InterviewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            text-align: center;
            font-size: large;
        }
        .auto-style5 {
            text-align: center;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            font-size: large;
        }
        .auto-style7 {
            text-align: center;
            color: #FFFFFF;
        }
        .auto-style9 {
            margin-bottom: 15px;
            text-align: center;
            background-color: #FFFFFF;
        }
        .auto-style10 {
            margin-bottom: 15px;
            text-align: center;
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
                                
                               <div id="head" style="line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="auto-style7">
                                   <strong class="auto-style6">Interview Detail </strong>
                               </div>
                                <div style="height:450px; width:100%">
                                    <div style="background-color:silver; height:100%; width:35%;float:left" >
                                        <asp:Panel ID="Panel1" runat="server" BorderColor="#33CCFF" BorderStyle="Double" Direction="LeftToRight" HorizontalAlign="Left">
                                        <h4 class="auto-style9">Candidate</h4>



                                    &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Name:"></asp:Label>
                                            &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Name"></asp:Label>
                                            <br />
                                            <br />
                                            <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Date Of Birth:"></asp:Label>
                                            &nbsp;<asp:Label ID="Label5" runat="server" Text="Date Of Birth" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <br />
                                        <br />
                                        <asp:Label ID="Label6" runat="server" Text="Phone No:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                    &nbsp;<asp:Label ID="Label7" runat="server" Text="Phone No" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <br />
                                        <br />
                                        <asp:Label ID="Label8" runat="server" Text="Skills:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <br />
                                        <asp:TextBox ID="TextBox1" runat="server" Height="56px" ReadOnly="True" TextMode="MultiLine" Width="205px"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="Label9" runat="server" Text="Interseted In:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <asp:TextBox ID="TextBox2" runat="server" Height="56px" ReadOnly="True" TextMode="MultiLine" Width="205px"></asp:TextBox>
                                        <br />
                                        <asp:Label ID="Label10" runat="server" Text="Education:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <br />
                                        <asp:TextBox ID="TextBox3" runat="server" Height="56px" ReadOnly="True" TextMode="MultiLine" Width="205px"></asp:TextBox>
                                        <br />
                                        <br />
                                        <asp:Label ID="Label11" runat="server" Text="Education:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <asp:Label ID="Label12" runat="server" Text="Phone No" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                        <br />


                                        </asp:Panel>
                                    </div>
                                    <div style="height:100%; width:30%;float:left; border-left:medium; border-image:url(../images/row-bot-tail.gif); background-color:white;">
                                        <h4 class="auto-style10">Interview</h4>
                                        
                                        <asp:Label ID="Label13" runat="server" Text="Position:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label14" runat="server" Text="Position:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label15" runat="server" Text="Date: " Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                        <asp:Label ID="Label16" runat="server" Text="Date" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label17" runat="server" Text="Time:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label18" runat="server" Text="Time" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label19" runat="server" Text="Status:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label20" runat="server" Text="Status" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label21" runat="server" Text="Test Result:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label22" runat="server" Text="TestResult" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label23" runat="server" Text="Form:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="21px" ImageUrl="~/images/View_btn.png" Width="58px" OnClick="ImageButton1_Click" />
                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label25" runat="server" Text="Result:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label26" runat="server" Text="Result" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" Height="20px" ImageUrl="~/images/check-icon.png" Width="20px" Visible="False" OnClick="ImageButton2_Click" />
&nbsp;
                                        <asp:ImageButton ID="ImageButton3" runat="server" Height="22px" ImageUrl="~/images/cancel.png" Width="22px" Visible="False" OnClick="ImageButton3_Click" />
                                        <br />
                                        <br />



                                       

                                    </div>

                                    <div style="background-color:silver; width:34%; height:100%; float:left">
                                        <div style="width:100%;height:70%">
                                            <h4 class="auto-style9">Interview Results</h4>
                                               <asp:Label ID="Label24" runat="server" Text="Skills:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label27" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                            <br />
                                            <br />
                                               <asp:Label ID="Label28" runat="server" Text="Knowledge:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label29" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                            <br />
                                            <br />
                                               <asp:Label ID="Label30" runat="server" Text="Communication:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label31" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                            <br />
                                            <br />
                                               <asp:Label ID="Label32" runat="server" Text="Overal:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label33" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                            <br />
                                            <br />
                                               <asp:Label ID="Label34" runat="server" Text="Notes:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                            <br />
                                        <asp:TextBox ID="TextBox4" runat="server" Height="74px" ReadOnly="True" TextMode="MultiLine" Width="206px"></asp:TextBox>
                                            <br />
                                            <br />
                                         </div>
                                        <div style="width:100%;height:30%">
                                            <h4 class="auto-style9">CV & Certifications</h4>

                                               <asp:Label ID="Label35" runat="server" Text="CV: " Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label36" runat="server" Text="Skills: " Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Visible="False"></asp:Label>
                                            <asp:ImageButton ID="ImageButton4" runat="server" Height="20px" ImageUrl="~/images/View_btn.png" Width="48px" OnClick="ImageButton4_Click" />
                                            <br />
                                               <asp:Label ID="Label37" runat="server" Text="Certificate:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label38" runat="server" Text="Skills: " Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Visible="False"></asp:Label>
                                            <asp:ImageButton ID="ImageButton5" runat="server" Height="20px" ImageUrl="~/images/View_btn.png" Width="48px" OnClick="ImageButton5_Click" />
                                            <br />
                                               <asp:Label ID="Label39" runat="server" Text="Certificate:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label40" runat="server" Text="Skills: " Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Visible="False"></asp:Label>
                                            <asp:ImageButton ID="ImageButton6" runat="server" Height="20px" ImageUrl="~/images/View_btn.png" Width="48px" OnClick="ImageButton6_Click" />
                                            <br />
                                               <asp:Label ID="Label41" runat="server" Text="Certificate:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>
                                        &nbsp;<asp:Label ID="Label42" runat="server" Text="Skills: " Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Visible="False"></asp:Label>
                                            <asp:ImageButton ID="ImageButton7" runat="server" Height="20px" ImageUrl="~/images/View_btn.png" Width="48px" OnClick="ImageButton7_Click" />

                                            <br />


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

