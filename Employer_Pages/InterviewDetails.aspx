<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="InterviewDetails.aspx.cs" Inherits="Employer_Pages_InterviewDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            font-size: medium;
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
                                 <div style="line-height:2em;text-align:center;letter-spacing:-1px; width:95%; background:url(../images/center-shadow.png) center top no-repeat; height: 33px; border-bottom-style: solid; border-bottom-color: inherit; border-bottom-width: medium; " class="auto-style4">
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
                                
                               <div id="head" style="line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
                                   <span class="color-1">
                                   <strong class="auto-style4">I</strong></span><span class="auto-style5"><strong>nterview Detail</strong></span><strong class="auto-style6"> </strong>
                               </div>
                                <div style="height:450px; width:100%">
                                    <div style="background-color:silver; height:100%; width:50%;float:left" >
                                        <asp:Panel ID="Panel1" runat="server" BorderColor="#33CCFF" BorderStyle="Double" Direction="LeftToRight" HorizontalAlign="Left">
                                        <h4 class="aligncenter">Comapany</h4>

                                            <div class="aligncenter">
                                                <br />
                                                <asp:Label ID="Label2" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Name:"></asp:Label>
                                                &nbsp;<asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Name"></asp:Label>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Phone No:"></asp:Label>
                                                &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Phone No"></asp:Label>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Comapny Name:"></asp:Label>
                                                &nbsp;<asp:Label ID="Label27" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Comapny Name:"></asp:Label>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Comapny Field:"></asp:Label>
                                                &nbsp;<asp:Label ID="Label28" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Comapny Field:"></asp:Label>
                                                <br />
                                                <br />
                                                <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC" Text="Address:"></asp:Label>
                                                <asp:TextBox ID="TextBox1" runat="server" Height="74px" TextMode="MultiLine"></asp:TextBox>
                                                <br />
                                                <br />
                                                <br />
                                                <br />
                                            </div>


                                        </asp:Panel>
                                    </div>
                                    <div style="height:100%; width:50%;float:left; border-left:medium; border-image:url(../images/row-bot-tail.gif); background-color:white;">
                                        <h4 class="aligncenter">Interview</h4>
                                        
                                        <div class="aligncenter">
                                            <br />
                                        
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



                                       

                                        &nbsp;<asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None" ForeColor="Red" Height="16px"  Text="Take Test" Visible="False" OnClick="Button1_Click" />



                                       

                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label23" runat="server" Text="Form:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label29" runat="server" Text="TestResult" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Button ID="Button2" runat="server" BackColor="White" BorderStyle="None" ForeColor="Red" Height="16px" Text="Fill Form" Visible="False" OnClick="Button2_Click" />
                                        <br />
                                        <br />
                                        
                                        <asp:Label ID="Label25" runat="server" Text="Result:" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;<asp:Label ID="Label26" runat="server" Text="Result" Font-Bold="False" Font-Size="Small" ForeColor="#0033CC"></asp:Label>



                                       

                                    &nbsp;
                                        &nbsp;
                                        <br />
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

