<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Pages/Employee_MasterPage.master" AutoEventWireup="true" CodeFile="NewTest.aspx.cs" Inherits="Employee_Pages_NewTest" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style4 {
            text-decoration: underline;
        }
        .auto-style5 {
            text-decoration: underline;
            color: #FFFFFF;
            font-size: medium;
        }
        .auto-style6 {
            float: left;
            width: 169px;
            height: 100%;
        }
        .auto-style7 {
            color: #fff;
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
                                                                <div style="line-height:3em;text-align:center;letter-spacing:-1px; width:95%; background:url(../images/center-shadow.png) center top no-repeat; height: 44px; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: medium; " class="auto-style4">
                                    <strong><span class="auto-style5"><a href="Home.aspx"><span class="auto-style7">Home</span></a></span>
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
                                   <span class="auto-style1">ADD NEW TEST</span>
                               </div>
                                <div style="width:100%;">
                                    <div style="width:100%;height:114px">
                                        <div style="float:left; color:blue;  line-height:40px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; width:111px; height:100%; line-height:40px; ">


                                            <asp:Label ID="Label2" runat="server" Text="Name:"></asp:Label>
                                            <br />
                                            <asp:Label ID="Label3" runat="server" Text="Question Number:"></asp:Label>


                                            <br />
                                            <asp:ImageButton ID="ImageButton1" runat="server" Height="29px" ImageUrl="~/images/submit_btn.png" OnClick="ImageButton1_Click" Width="65px" />
                                         

                                        </div>
                                        <div style=" float:left; margin:0px; width:224px; line-height:40px; height: 100%;">
                                         
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            <br />
                                            <asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="128px">
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
                                         
                                            <asp:Label ID="Label4" runat="server" ForeColor="Red" Text="Test Already Exist Change The Name" Visible="False"></asp:Label>
                                         
                                        </div>
                                            <div style="float:left; color:blue;  line-height:40px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; width:111px; height:100%; line-height:40px; ">


                                            <asp:Label ID="Label5" runat="server" Text="Duration:"></asp:Label>

                                        </div>
                                         <div style=" margin:0px; line-height:40px; " class="auto-style6">

                                             <asp:DropDownList ID="DropDownList2" runat="server">
                                                 <asp:ListItem Value="5">5 Min</asp:ListItem>
                                                 <asp:ListItem Value="10">10 Min</asp:ListItem>
                                                 <asp:ListItem Value="15">15 Min</asp:ListItem>
                                                 <asp:ListItem Value="20">20 Min</asp:ListItem>
                                                 <asp:ListItem Value="25">25 Min</asp:ListItem>
                                                 <asp:ListItem Value="30">30 Min</asp:ListItem>
                                             </asp:DropDownList>

                                         </div>
                              
                                    
                                    </div>
                                          <div style="width:100%; overflow-y: scroll; height: 325px;">
                                            <asp:Panel ID="Panel1" runat="server" Visible="False">
                                                <asp:Table ID="Table1" runat="server" ClientIDMode="Static" ValidateRequestMode="Enabled" ViewStateMode="Enabled" Width="100%">
                                                </asp:Table>


                                                <br />
                                                <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/add_btn.png" OnClick="ImageButton2_Click" />
                                                <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/clear_btn.png" />


                                                <asp:Label ID="Label6" runat="server" ForeColor="Red" Text="Please Fill All Question And Answer And chose correct answer" Visible="False"></asp:Label>


                                            </asp:Panel>

                                        </div>
                                </div>
                    
                           
						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

