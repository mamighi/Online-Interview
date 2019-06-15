<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="CheckInterview.aspx.cs" Inherits="Employer_Pages_CheckInterview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
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
                                
                               <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="auto-style5">
                                   <strong class="auto-style4">CHECK INTERVIEW </strong>
                               </div>

                                <div style="width:100%; height:350px;">

                                    <asp:Table ID="Table1" runat="server" Width="100%" HorizontalAlign="Center">
                                        <asp:TableRow runat="server" Font-Size="Medium" ForeColor="White" Height="30px" HorizontalAlign="Center" VerticalAlign="Middle">
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">No</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Employee</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">Position</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Date</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">Time</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Status</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle">TestResult</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#6C6E74" VerticalAlign="Middle">Result</asp:TableCell>
                                            <asp:TableCell runat="server" BackColor="#333333" VerticalAlign="Middle"></asp:TableCell>
                                        </asp:TableRow>
                                    </asp:Table>

                                    <br />
                                    <br />
&nbsp;<asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/View_btn.png" OnClick="ImageButton3_Click"  />

                                    <asp:Label ID="Label5" runat="server" ForeColor="Red" Text="Please chose an interview" Visible="False"></asp:Label>

                                </div>
                    
                           
						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>
</asp:Content>

