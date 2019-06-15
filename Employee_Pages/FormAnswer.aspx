<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FormAnswer.aspx.cs" Inherits="Employee_Pages_FormAnswer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            color: #FFFFFF;
        }
    </style>
</head>
<body style="width:700px">
    <form id="form1" runat="server">
    <div style="width:700px">
        <div id="head" style="height:45px; line-height:3em; background:url(../images/center-shadow.png) center top no-repeat;" class="aligncenter">
            <div style="height:100%; width:33%; float:left" class="auto-style1">

                <strong>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </strong>

            </div>
            <div style="height:100%; width:34%; float:left" class="auto-style1">

                <strong>
                <asp:Label ID="Label2" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </strong>

            </div>
            <div style="height:100%; width:33%; float:left" class="auto-style1">

                <strong>
                <asp:Label ID="Label3" runat="server" CssClass="auto-style2" Text="Label"></asp:Label>
                </strong>

            </div>
        </div>
        <div style="width:100%; height:500px; overflow-y:scroll">

            <asp:Table ID="Table1" runat="server" CellPadding="0" CellSpacing="0" Width="100%">
            </asp:Table>

        </div>


    </div>
    </form>
</body>
</html>
