<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Pages/Employee_MasterPage.master" AutoEventWireup="true" CodeFile="NewInterview.aspx.cs" Inherits="Employee_Pages_NewInterview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 328px;
            font-size: large;
        }
        .auto-style5 {
            width: 328px;
            font-size: large;
            color: #FFFFFF;
        }
        .auto-style6 {
            height: 100%;
            width: 208px;
        }
        .auto-style7 {
            height: 100%;
            width: 105px;
            float: left;
        }
        .auto-style8 {
            height: 100%;
            width: 101px;
            float: left;
        }
        .auto-style9 {
            height: 100%;
            width: 209px;
            float: right;
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
                                    <strong><a href="Home.aspx" class="color-1">Home</a>
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
                                   <span class="auto-style5">New Inteview</span>
                               </div>
                                <div style="width:50%; height:120px; float:left">
                                    <div style="line-height:40px; " class="auto-style7">
                                        <asp:Label ID="Label2" runat="server" Text="Position:"></asp:Label><br />
                                        <asp:Label ID="Label3" runat="server" Text="Candidate Email:"></asp:Label>
                                    </div>
                                    <div runat="server" style="line-height:40px;float:right" class="auto-style6">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Width="141px" Height="22px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        <asp:Label ID="Label17" runat="server" Text="Invalid" ForeColor="Red" Visible="False"></asp:Label>
                                        <br />
                                        <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/images/check-icon.png" Width="23px" OnClick="ImageButton1_Click" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" Height="26px" ImageUrl="~/images/cancel.png" Width="26px" />
                                    </div>

                                </div>
                                <div id="det" style="width:50%; height:120px; float:right" runat="server">
                                     <div style="line-height:30px; " class="auto-style8">
                                        <asp:Label ID="Label4" runat="server" Text="Name:" ForeColor="#0066FF"></asp:Label><br />
                                        <asp:Label ID="Label5" runat="server" Text="Date Of Birth:" ForeColor="#000099"></asp:Label><br />
                                        <asp:Label ID="Label6" runat="server" Text="Phone Number:" ForeColor="#0066FF"></asp:Label><br />
                                        <asp:Label ID="Label7" runat="server" Text="Skills:" ForeColor="#000099"></asp:Label>
                                    </div>
                                    <div style="line-height:30px; " class="auto-style9">
                                        <asp:Label ID="Label8" runat="server" Text="Label" ForeColor="#0066FF"></asp:Label><br />
                                        <asp:Label ID="Label9" runat="server" Text="Label" ForeColor="#000099"></asp:Label><br />
                                        <asp:Label ID="Label10" runat="server" Text="Label" ForeColor="#0066FF"></asp:Label><br />
                                        <asp:Label ID="Label11" runat="server" ForeColor="#000099"></asp:Label><br />
                                    </div>
                                 </div>
                                <div id="inv" style="width:100%; height:80px;line-height:40px;" runat="server">
                                    <asp:Label ID="Label15" runat="server" Text="The person you are trying to make an appointment with does not have any account." ForeColor="Red"></asp:Label><br />
                                    &nbsp;<asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/SendInvitation_btn.png" OnClick="ImageButton4_Click" />
                                    <asp:Label ID="Label16" runat="server" Text="The invitation has been sent successfuly." ForeColor="#00CC00" Visible="False"></asp:Label>
                                </div>
                                <div id="conf" style="width:100%; height:200px" runat="server">
                                    <div style="height:100%; width:100px;line-height:40px; float:left">
                                        <asp:Label ID="Label12" runat="server" Text="Date:"></asp:Label><br />
                                        <asp:Label ID="Label13" runat="server" Text="Time:"></asp:Label><br />
                                        <asp:Label ID="Label14" runat="server" Text="Lenght:"></asp:Label><br />
                                    </div>
                                    <div style="height:100%; width:200px; line-height:40px; float:left">
                                        <asp:TextBox ID="TextBox2" runat="server" Enabled="False" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                                        <asp:Button ID="Button3" runat="server" BorderStyle="None" OnClick="Button3_Click" Text="..." />
                                        <br />
                                        <asp:DropDownList ID="DropDownList3" runat="server" Width="41px">
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>11</asp:ListItem>
                                            <asp:ListItem>12</asp:ListItem>
                                            <asp:ListItem>13</asp:ListItem>
                                            <asp:ListItem>14</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>16</asp:ListItem>
                                            <asp:ListItem>17</asp:ListItem>
                                            <asp:ListItem>18</asp:ListItem>
                                            <asp:ListItem>19</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>21</asp:ListItem>
                                        </asp:DropDownList>
                                        :<asp:DropDownList ID="DropDownList4" runat="server" Width="41px">
                                            <asp:ListItem>00</asp:ListItem>
                                            <asp:ListItem>05</asp:ListItem>
                                            <asp:ListItem>10</asp:ListItem>
                                            <asp:ListItem>15</asp:ListItem>
                                            <asp:ListItem>20</asp:ListItem>
                                            <asp:ListItem>25</asp:ListItem>
                                            <asp:ListItem>30</asp:ListItem>
                                            <asp:ListItem>35</asp:ListItem>
                                            <asp:ListItem>40</asp:ListItem>
                                            <asp:ListItem>45</asp:ListItem>
                                            <asp:ListItem>50</asp:ListItem>
                                            <asp:ListItem>55</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:DropDownList ID="DropDownList2" runat="server" Width="84px">
                                            <asp:ListItem Value="5">5 Min</asp:ListItem>
                                            <asp:ListItem Value="10">10 Min</asp:ListItem>
                                            <asp:ListItem Value="15">15 Min</asp:ListItem>
                                            <asp:ListItem Value="20">20 Min</asp:ListItem>
                                        </asp:DropDownList>
                                        <br />
                                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/confirm_btn.png" OnClick="ImageButton3_Click" />
                                        <br />
                                        <asp:Label ID="Label19" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
                                    </div>
                                    <div style="height:100%; width:250px; float:left; margin-top:10px" >
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White"  BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" OnSelectionChanged="Calendar1_SelectionChanged" OnDayRender="Calendar1_DayRender" Visible="False">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar>
                                    </div>
                                </div>


                             </article>
                          
                        </div>
                    </div>
                </div>
            </div>
        </section>


</asp:Content>

