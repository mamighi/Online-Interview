<%@ Page Title="" Language="C#" MasterPageFile="~/Employee_Pages/Employee_MasterPage.master" AutoEventWireup="true" CodeFile="Interview.aspx.cs" Inherits="Employee_Pages_Interview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script src="http://cdn.peerjs.com/0.3/peer.min.js"></script>
    <script>
        var peer = new Peer('pick-an-id',{ key: 'lwjd5qra8257b9' });
        var getUserMedia = navigator.getUserMedia || navigator.webkitGetUserMedia || navigator.mozGetUserMedia;
        getUserMedia({ video: true, audio: true }, function (stream) {
            var call = peer.call('another-peers-id', stream);
            call.on('stream', function (remoteStream) {
                // Show stream in some video/canvas element.
            });
        }, function (err) {
            console.log('Failed to get local stream', err);
        });

    </script>
    <style type="text/css">
        .auto-style5 {
            width: 97%;
            height: 499px;
        }
        .auto-style8 {
            width: 75px;
            background-color: #FF0000;
        }
        .auto-style9 {
            width: 75px;
            background-color: #00CC00;
        }
        .auto-style10 {
            height: 100%;
            width: 50%;
            float: left;
        }
        .auto-style11 {
            width: 24%;
            float: left;
            text-align: center;
        }
        </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <section id="content" style="height:600px; top: -2px; left: 0px;">
        <div style="width:25%; float:left; height:100%; background:url(../images/shodow2.png); text-align:center ">
              <div style="height:100px; width:100%;">
                  <asp:ScriptManager ID="ScriptManager1" runat="server">
                                            </asp:ScriptManager>
                                            <asp:Timer ID="Timer1" runat="server" Interval="600" OnTick="Timer1_Tick">
                                            </asp:Timer>
                                            <br />
                  <br />
                  <asp:Label ID="Label21" runat="server" Font-Bold="True" ForeColor="Lime" Text="Start In"></asp:Label>
                                            <br />
                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <ContentTemplate>
                                            <asp:Label runat="server" ID="Label19" Font-Bold="True" 
                                            Font-Names="Book Antiqua" Font-Size="Large"
                                            ForeColor="Lime" />
                                            </ContentTemplate>
                                            <Triggers>
                                            <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                                            </Triggers>
                                            </asp:UpdatePanel>
                                            <br />

            </div>
            <div>
                <br />
                &nbsp;<asp:Label ID="Label5" runat="server" Text="Test Result:" Font-Bold="True"></asp:Label>
            &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Text="Label"></asp:Label>
                <br />
                <br />
&nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Skills:"></asp:Label>
                <br />
&nbsp;<asp:TextBox ID="TextBox1" runat="server" BackColor="#33CCFF" Font-Bold="True" Height="71px" ReadOnly="True" TextMode="MultiLine" Width="198px" Font-Size="Medium"></asp:TextBox>
                <br />
                <br />
&nbsp;<asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Education:"></asp:Label>
                <br />
&nbsp;<asp:TextBox ID="TextBox2" runat="server" BackColor="#33CCFF" Font-Bold="True" Height="71px" TextMode="MultiLine" Width="198px" Font-Size="Medium" ForeColor="Black" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Interseted In:"></asp:Label><br />

                &nbsp;<asp:TextBox ID="TextBox3" runat="server" BackColor="#33CCFF" Font-Bold="True" Height="71px" ReadOnly="True" TextMode="MultiLine" Width="198px" Font-Size="Medium"></asp:TextBox>
                <br />
                <br />
&nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Current Job:"></asp:Label>
&nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Current Job"></asp:Label>
                <br />
                <br />
                <asp:Label ID="Label18" runat="server" Font-Bold="True" Text="CV: " Font-Underline="False"></asp:Label>
                <asp:ImageButton ID="ImageButton1" runat="server" Height="22px" ImageUrl="~/images/View_btn.png" OnClick="ImageButton1_Click" Width="53px" />
                <br />
            </div>
        </div>
        <div class="auto-style10">
            <div style="height:100px; width:100%; background:url(../images/images.png)">
                <div style="height:100%; width:40%; float:left;text-align:center;">
                   
                    <br />
&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="NAME" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    &nbsp;
                    <asp:Label ID="Label2" runat="server" Text="DateOfBirth" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                </div>
                 <div style="height:100%; width:40%; float:right; text-align:center;">
                      <br />
&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Position" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>
                    <br />
                    <br />
                    &nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Requierment" Font-Bold="True" Font-Size="Large" ForeColor="White"></asp:Label>

                </div>
            </div>
            <div style="height:500px; width:100%">
                <div style="height:350px; width:100%; background:url(../images/now-loading.gif)no-repeat center; text-align:center; background-color:white">
                    <video id="video" style="height:100%;width:100%"></video>
                </div>
                <div style="height:150px; width:100%;background:url(../images/images.png)">
                    <div style="float:left;height:100%; width:200px">
                        <br />
                        &nbsp;
                        <input id="Button1" type="button" value="Mute" class="auto-style8" onclick="mute();"   />
                        <input id="Button2"  type="button" value="Un Mute" style="visibility:hidden" class="auto-style9" onclick="unmute();" /><br />
                        <br />
&nbsp;

                            <input id="Button3" " type="button" value="Pause" class="auto-style8" onclick="sto()" />
                        <input id="Button4" type="button" value="Resume" style="visibility:hidden" class="auto-style9" onclick="resum()"/><br />
                        <br />
&nbsp;<asp:Button ID="Button5" runat="server" Text="Finish And Submit Result" OnClick="Button5_Click" BorderStyle="None" Width="195px" BackColor="Lime" Font-Bold="True" />
                        &nbsp;<script>
                          
                            function mute() {

                                document.getElementById("Button1").style.visibility = "hidden";
                                document.getElementById("Button2").style.visibility = "visible";
                                conference.setLocalAudioMute(false);
                                conference.setRemoteAudioMute(false);
                            }
                            
                            function unmute() {
                                document.getElementById("Button2").style.visibility = "hidden";
                                document.getElementById("Button1").style.visibility = "visible";
                                conference.setLocalAudioMute(true);
                                conference.setRemoteAudioMute(true);
                            }
                            function resum() {
                                document.getElementById("Button4").style.visibility = "hidden";
                                document.getElementById("Button3").style.visibility = "visible";
                                conference.playLocalVideo();
                            }
                        
                            
                            function sto() {
                                document.getElementById("Button3").style.visibility = "hidden";
                                document.getElementById("Button4").style.visibility = "visible";
                                    conference.stopLocalVideo();
                                }
                            

                        </script>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Home.aspx">Home</asp:HyperLink>
                    </div>
              
                    <div style="float:right; height:150px;width:150px">
                        <video id="localVideo" style="float:right; height:150px;width:150px" autoplay muted></video>
                    </div>
                    
                </div>
                        
                        
            </div>
           
        </div>
        <div style="background:url(../images/shodow2.png); " class="auto-style11"  >
            <div style="height:100px; width:100%;">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
             <ContentTemplate>
                                            <br />
                                           
                                            <br />
                                            <asp:Label ID="Label22" runat="server" Font-Bold="True" ForeColor="Red" Text="Finish In"></asp:Label>
                                            <br />
                                            <asp:Label runat="server" ID="Label20" Font-Bold="True" 
                                            Font-Names="Book Antiqua" Font-Size="Large"
                                            ForeColor="Red" />
                                            </ContentTemplate>
                </asp:UpdatePanel>

            </div>
            <div style="text-align:center" class="auto-style5">

                <br />
                <asp:Label ID="Label12" runat="server" Text="Skill" Font-Bold="True"></asp:Label>
                :<br />
                <asp:RadioButton ID="RadioButton1" runat="server" Text="1" GroupName="skil" />
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="2" GroupName="skil" />
&nbsp;<asp:RadioButton ID="RadioButton3" runat="server" Text="3" Checked="True" GroupName="skil" />
&nbsp;<asp:RadioButton ID="RadioButton4" runat="server" Text="4" GroupName="skil" />
&nbsp;<asp:RadioButton ID="RadioButton5" runat="server" Text="5" GroupName="skil" />
                <br />
                <br />
                <asp:Label ID="Label13" runat="server" Text="Knowledge:" Font-Bold="True"></asp:Label>
                <br />
                <asp:RadioButton ID="RadioButton6" runat="server" Text="1" GroupName="know" />
&nbsp;<asp:RadioButton ID="RadioButton7" runat="server" Text="2" GroupName="know" />
&nbsp;<asp:RadioButton ID="RadioButton8" runat="server" Text="3" Checked="True" GroupName="know" />
&nbsp;<asp:RadioButton ID="RadioButton9" runat="server" Text="4" GroupName="know" />
&nbsp;<asp:RadioButton ID="RadioButton10" runat="server" Text="5" GroupName="know" />
                <br />
                <br />
                <asp:Label ID="Label14" runat="server" Text="Communication Skills:" Font-Bold="True"></asp:Label>
                <br />
                <asp:RadioButton ID="RadioButton11" runat="server" Text="1" GroupName="com" />
&nbsp;<asp:RadioButton ID="RadioButton12" runat="server" Text="2" GroupName="com" />
&nbsp;<asp:RadioButton ID="RadioButton13" runat="server" Text="3" Checked="True" GroupName="com" />
&nbsp;<asp:RadioButton ID="RadioButton14" runat="server" Text="4" GroupName="com" />
&nbsp;<asp:RadioButton ID="RadioButton15" runat="server" Text="5" GroupName="com" />
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="Overal:" Font-Bold="True"></asp:Label>
                <br />
                <asp:RadioButton ID="RadioButton16" runat="server" Text="1" GroupName="ov" />
&nbsp;<asp:RadioButton ID="RadioButton17" runat="server" Text="2" GroupName="ov" />
&nbsp;<asp:RadioButton ID="RadioButton18" runat="server" Text="3" Checked="True" GroupName="ov" />
&nbsp;<asp:RadioButton ID="RadioButton19" runat="server" Text="4" GroupName="ov" />
&nbsp;<asp:RadioButton ID="RadioButton20" runat="server" Text="5" GroupName="ov" />
                <br />
                <br />
                <asp:Label ID="Label16" runat="server" Text="Note:" Font-Bold="True"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox4" runat="server" BackColor="White" Font-Bold="True" Height="71px" TextMode="MultiLine" Width="198px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <asp:Label ID="Label17" runat="server" Text="Result:" Font-Bold="True"></asp:Label>
                <br />
                <asp:RadioButton ID="RadioButton21" runat="server" Text="Reject" GroupName="res" />
                <asp:RadioButton ID="RadioButton22" runat="server" Text="Pending" Checked="True" GroupName="res" />
                <asp:RadioButton ID="RadioButton23" runat="server" Text="Accept" GroupName="res" />
                <br />
                <br />

            </div>


        </div>
    </section>


</asp:Content>

