<%@ Page Title="" Language="C#" MasterPageFile="~/Employer_Pages/Employer_MasterPage.master" AutoEventWireup="true" CodeFile="Interview.aspx.cs" Inherits="Employer_Pages_Interview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <script src="https://code.oovoo.com/webrtc/oovoosdk-2.0.0.min.js"></script>
    <script type="text/javascript">
        var conferenceId = '<%= Session["inter"].ToString() %>';
        var conference = null;
       // var conferenceId = someSession;
        var appToken = "MDAxMDAxAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB5LVzgAPW23%2B9gz0%2FpAdzlYV1clfFfwaE6T7xqdadnS3hVQpjc1QTNaouG3M22Ic5UOh5iMKE1cJJI9qCqWV7mmtA%2FKtvQlOpFjWWSqkQi3yfVsKuir5bO5myrSJVw824%3D";
        var sessionToken = getQSParam("t");
        var participantId = getQSParam("pid");

        if (!sessionToken) {
            //login to get session token
            participantId = "1";
            //for example (get random id)
            participantId = Math.floor(Math.random() * 9999999999) + 1000000000;

            var redirectUrl = "url to send response with the session token"
            redirectUrl = location.href + "?pid=" + participantId;
            ooVoo.API.connect({
                token: appToken,
                isSandbox: true,
                userId: participantId,
                callbackUrl: redirectUrl
            });
        }
        else {
            ooVoo.API.init({
                userToken: sessionToken
            }, onAPI_init);
        }

        function onAPI_init(res) {
            conference = ooVoo.API.Conference.init({ video: true, audio: true }, onConference_init);
        }
        function onConference_init(res) {
            if (!res.error) {
                //register to conference events
                conference.onParticipantJoined = onParticipantJoined;
                conference.onParticipantLeft = onParticipantLeft;
                conference.onLocalStreamPublished = onStreamPublished;
                conference.onConferenceStateChanged = onConferenceStateChanged;
                conference.onRemoteVideoStateChanged = onRemoteVideoStateChanged

                conference.setConfig({
                    videoResolution: ooVoo.API.VideoResolution["HIGH"],
                    videoFrameRate: new Array(5, 15)
                }, function (res) {
                    if (!res.error) {
                        conference.join(conferenceId, participantId, sessionToken, "participant name", function (result) { });
                    }
                });
            }
        }

        function onStreamPublished(stream) {
            document.getElementById("localVideo").src = URL.createObjectURL(stream.stream);
        }

        function onParticipantLeft(evt) {
            if (evt.uid) {
                document.getElementById("video" + evt.uid).remove();
            }
        }
        function onParticipantJoined(evt) {
            if (evt.stream && evt.uid != null) {
                var videoElement = document.getElementById("video");
                //videoElement.id = "vid_" + evt.uid;
                videoElement.src = URL.createObjectURL(evt.stream);
                videoElement.setAttribute("autoplay", true);
                //document.body.appendChild(videoElement);
            }
        }
        function onConferenceStateChanged(evt) {
        }
        function onRemoteVideoStateChanged(evt) {
        }

        function getQSParam(name) {
            name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
            var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
                results = regex.exec(location.search);
            return results === null ? "" : results[1].replace(/\+/g, " ");
        }
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
                &nbsp;&nbsp;<br />
                <br />
&nbsp;<br />
&nbsp;<br />
                <br />
&nbsp;<br />
&nbsp;<br />
                <br />
&nbsp;<br />

                &nbsp;<br />
                <br />
&nbsp;<br />
                <br />
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
                <div style="height:350px; width:100%; background:url(../images/now-loading.gif)no-repeat center;">
                    <video id="video" style="height:100%;width:100%"></video>
                </div>
                <div style="height:150px; width:100%;background:url(../images/images.png)">
                    <div style="float:left;height:100%; width:200px">
                        <br />
                        &nbsp;
                        <input id="Button1" type="button" value="Mute" class="auto-style8" onclick="mute()"   />
                        <input id="Button2" type="button" value="Un Mute" class="auto-style9" style="visibility:hidden" onclick="unmute()" /><br />
                        <br />
&nbsp;

                        <input id="Button3" type="button" value="Pause" class="auto-style8" onclick="sto()" />
                        <input id="Button4" type="button" value="Resume" class="auto-style9" style="visibility:hidden" onclick="resume()"/><br />
                        <br />
&nbsp;

                        <script>
                            
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
                            function resume() {
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

                        <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="Home.aspx">Home</asp:HyperLink>

                    </div>
              
                    <div style="float:right; height:150px;width:150px">
                        <video id="localVideo" style="float:right; height:150px;width:150px" autoplay muted></video>
                    </div>
                    
                </div>
                        
                        
            </div>
           
        </div>
        <div style="background:url(../images/shodow2.png); " class="auto-style11"  >
            <div style="height:100px; width:100%;" class="aligncenter">


                <br />
                <br />
                <br />


            </div>
            <div style="text-align:center" class="auto-style5">

                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />

            </div>


        </div>
    </section>
</asp:Content>

