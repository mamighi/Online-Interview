<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Pages/Employee_MasterPage.master" AutoEventWireup="true" CodeFile="EditPosition.aspx.cs" Inherits="Employee_Pages_EditPosition" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            font-size: large;
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
                                   <span class="auto-style5">EDIT POSITIONS</span>
                               </div>
<div style="width:100%; height:100%">
                                <div style="width:136px; float:left; color:blue;  line-height:40px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; height: 387px;">
                                    <label>Name:</label><br />
                                    <label>Person Needed:</label><br />
                                    <label>Open Date:</label><br />
                                    <label>Close Date:</label><br />
                                    <label>Test Requierd:</label><br />
                                    <label>Form Requierd:</label><br />
                                    <label>Experience Requierd:</label><br />
                                    <label>Requierment:</label><br />

                                    <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Wrong Data" Visible="False"></asp:Label>

                                </div>
                                <div style=" float:left; margin:0px; width:198px; line-height:40px; height: 80%;">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:DropDownList ID="DropDownList1" runat="server" Width="128px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
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
                                    </asp:DropDownList>
                                    
                                    <br />
                                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Text="..." Width="23px" OnClick="Button1_Click" />
                                    <br />
                                    <asp:TextBox ID="TextBox3" runat="server" Enabled="False"></asp:TextBox>
                                    <asp:Button ID="Button2" runat="server" BorderStyle="None" Text="..." Width="25px" OnClick="Button2_Click" />
                                    <br />
                                    <asp:DropDownList ID="DropDownList2" runat="server" Width="128px">
                                        <asp:ListItem>None</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                    <br />
                                    
                                    <asp:DropDownList ID="DropDownList3" runat="server" Width="128px">
                                        <asp:ListItem>None</asp:ListItem>
                                    </asp:DropDownList>
                                    
                                    <br />
                                    <asp:DropDownList ID="DropDownList4" runat="server" Width="96px">
                                        <asp:ListItem>1</asp:ListItem>
                                        <asp:ListItem>2</asp:ListItem>
                                        <asp:ListItem>3</asp:ListItem>
                                        <asp:ListItem>4</asp:ListItem>
                                        <asp:ListItem>5</asp:ListItem>
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
                                    </asp:DropDownList>
                                    
                                    Years<br />
                                    <asp:TextBox ID="TextBox4" runat="server" Height="77px" TextMode="MultiLine"></asp:TextBox>
                                    
                                    <br />
                                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Update_btn.png" OnClick="ImageButton1_Click" />
                                    
                                </div>
                                    <div>
                                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar1_SelectionChanged" Visible="False" Width="220px">
                                            <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                            <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                            <OtherMonthDayStyle ForeColor="#999999" />
                                            <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                            <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                            <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                            <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                            <WeekendDayStyle BackColor="#CCCCFF" />
                                        </asp:Calendar><br />
                                        <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" OnSelectionChanged="Calendar2_SelectionChanged" Visible="False" Width="220px">
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

