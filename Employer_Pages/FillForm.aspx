<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="FillForm.aspx.cs" Inherits="Employer_Pages_FillForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: large;
        }
        .auto-style5 {
            text-decoration: underline;
            color: #FFFFFF;
        }
        .auto-style6 {
            color: #FFFFFF;
            font-size: x-large;
        }
        .auto-style7 {
            background-color: #C0C0C0;
        }
        .auto-style8 {
            width: 180px;
            float: left;
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
                               <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
                                   <span class="auto-style6">Form</span>
                               </div>
                                <div>
                                    <div style="height:40px;width:100%" class="auto-style7">
                                        <div style="line-height:40px; width:80px; float:left">
                                            <asp:Label ID="Label2" runat="server" Text="Position:" ForeColor="#0033CC" Font-Bold="True" Font-Size="Medium"></asp:Label>

                                        </div>
                                        <div style="line-height:40px; " class="auto-style8">
                                            <asp:Label ID="Label4" runat="server" Text="Position:" ForeColor="#0033CC" Font-Size="Medium"></asp:Label>

                                        </div>
                                 </div>
                                    <div style="width:100%; height:350px; overflow-y: scroll;">
                                        <asp:Table ID="Table1" runat="server" Width="100%"></asp:Table>
                                    </div>
                                    <div style="height:100px">
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submit_btn.png" OnClick="ImageButton1_Click" />
                                    &nbsp;
                                        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/clear_btn.png" />
                                    </div>
                                </div>

                              

						
                            </article>
                        </div>
                    </div>
                </div>
            </div>
        </section>

</asp:Content>

