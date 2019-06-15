<%@ Page Title="" Language="C#" MasterPageFile="~/Public_Pages/Public_MasterPage.master" AutoEventWireup="true" CodeFile="signup.aspx.cs" Inherits="Public_Pages_signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            float: left;
            width: 102px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Panel ID="Panel1" runat="server" Height="514px" Width="100%" BackColor="White">
        <div style="margin-left:200px; margin-top:25px; float:left; height: 441px;">
            <div style="margin:0;color:blue;  line-height:40px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" class="auto-style5">
                 <label for="Email">Email:</label><br />
            
                 <label for="Password">Password:</label>
                <br />
                 <label for="Password2">Re-Password: </label><br />
                 <label for="fn">First Name:</label><br />
                 <label for="ln">Last Name:</label><br />
                   <label for="Day">Date Of Birth: </label><br />
                <label for="phone">Phone Number:</label>
                <br />
                <br />
                <label for="Employee">Account Type:</label>

            </div>
            <div style="float:left; margin:0px; width:200px; line-height:40px; height: 470px;">
                
            <input id="Email" type="text" style="border-color:black" runat="server" />
            <img alt="" src="../images/wrong.png" runat="server" id="emailpic" />
            <br />

            
            <input id="Password1" type="password" style="border-color:black " runat="server"/>
            <img alt="" src="../images/wrong.png" runat="server" id="paspic" />
            <br />

            <input id="Password2" type="password" style="border-color:black" runat="server"/>
            <img alt="" src="../images/wrong.png" runat="server" id="pass2pic" />
            <br />
            <input id="fn" type="text" style="border-color:black" runat="server"/>
            <img alt="" src="../images/wrong.png" runat="server" id="Img1" />
            <br />
            <input id="ln" type="text" style="border-color:black" runat="server"/>
            <img alt="" src="../images/wrong.png" runat="server" id="Img2" />
            <br />
                                <select id="Day" runat="server">
                                        <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>
                    <option>13</option>
                    <option>14</option>
                    <option>15</option>
                    <option>16</option>
                    <option>17</option>
                    <option>18</option>
                    <option>19</option>
                    <option>20</option>
                    <option>21</option>
                    <option>22</option>
                    <option>23</option>
                    <option>24</option>
                    <option>25</option>
                    <option>26</option>
                    <option>27</option>
                    <option>28</option>
                    <option>29</option>
                    <option>30</option>
                    <option>31</option>

                </select>
                <select id="Month" runat="server">
                                        <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    <option>4</option>
                    <option>5</option>
                    <option>6</option>
                    <option>7</option>
                    <option>8</option>
                    <option>9</option>
                    <option>10</option>
                    <option>11</option>
                    <option>12</option>

                </select>
                <select id="Year" runat="server">
                                        <option>1965</option>
                    <option>1966</option>
                    <option>1967</option>
                    <option>1968</option>
                    <option>1969</option>
                    <option>1970</option>
                    <option>1971</option>
                    <option>1972</option>
                    <option>1973</option>
                    <option>1974</option>
                    <option>1975</option>
                    <option>1976</option>
                    <option>1977</option>
                    <option>1978</option>
                    <option>1979</option>
                    <option>1980</option>
                    <option>1981</option>
                    <option>1982</option>
                    <option>1983</option>
                    <option>1984</option>
                    <option>1985</option>
                    <option>1986</option>
                    <option>1987</option>
                    <option>1988</option>
                    <option>1989</option>
                    <option>1990</option>
                    <option>1991</option>
                    <option>1992</option>
                    <option>1993</option>
                    <option>1994</option>
                    <option>1995</option>

                </select>
                <br />
                <input id="phone" type="text" style="border-color:black" runat="server"/>
                <img alt="" src="../images/wrong.png" runat="server" id="phonepic" />
                <br />
                <br />
                &nbsp;<asp:RadioButton ID="RadioButton1" runat="server" Text="Employer" AutoPostBack="True" Checked="True" GroupName="position" OnCheckedChanged="RadioButton1_CheckedChanged" />
                <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Candidate" AutoPostBack="True" GroupName="position" />
                <br />
                <asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Please Fill All Fields Properly" Visible="False"></asp:Label>
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/submit_btn.png" OnClick="ImageButton1_Click" />
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/clear_btn.png" Width="62px" />

            </div>
            <div id="e1" style="float:left; margin:0;width:110px; color:blue;  line-height:40px; font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif" runat="server">
                <label for="Company">Company Name:</label>
                <label for="field">Company Field:</label>
                <label for="add">Address:</label>

            </div>


           <div id="e2" style="float:left; margin:0px; width:200px; line-height:40px;" runat="server">
                <input id="Company" type="text" style="border-color:black" runat="server"/>
                <img alt="" src="../images/wrong.png" runat="server" id="cpic" />
                <br />
                
                <input id="field" type="text" style="border-color:black" runat="server"/>
                <img alt="" src="../images/wrong.png" runat="server" id="fpic" />
                <br />
 

               <textarea id="add" cols="15" rows="4" style="border-color:black" runat="server"></textarea>
               <img alt="" src="../images/wrong.png" runat="server" id="adpic" />
                <br />

            </div>




        </div>
        
                <script type="text/javascript">
                    $("#rEmployee").change(function () {
                        if ($("#rEmployee").attr("checked")) {
                            $('.e1').show(callback);
                            $('.e1').show(callback);

                        }
                        else {
                            $('.e1').hide(callback);
                            $('.e2').hide(callback);
                         
                        }
                    });
                </script>
    </asp:Panel>
</asp:Content>

