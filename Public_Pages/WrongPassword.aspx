<%@ Page Title="" Language="C#" MasterPageFile="~/Public_Pages/Public_MasterPage.master" AutoEventWireup="true" CodeFile="WrongPassword.aspx.cs" Inherits="Public_Pages_WrongPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            color: #0033CC;
        }
        .auto-style6 {
            color: #0000FF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="content">
         <div style="height:400px; width:30%; margin-left:35% " class="aligncenter">



             <br />
             <br />
             <br />
             <asp:Label ID="Label1" runat="server" Text="Wrong User Name Or Pasword" ForeColor="Red"></asp:Label>



             <br />
             <br />
             <span class="auto-style5">UserName:</span><br />
             <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             <br />
             <br />
             <span class="auto-style6">Password:</span><br />
             <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
             <br />
             <br />
             <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/login_btn.png" OnClick="ImageButton1_Click" />
             <br />
             <asp:Label ID="Label2" runat="server" ForeColor="Red" Text="Please Check the User Name" Visible="False"></asp:Label>
             <br />
             <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Forgot Password" BackColor="Transparent" BorderStyle="None" Font-Underline="True" ForeColor="Blue" />



             <br />



         </div>
          
     </section>
</asp:Content>

