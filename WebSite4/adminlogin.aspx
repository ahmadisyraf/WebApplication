  <%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/adminlogin.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Staatliches&display=swap" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/> 
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-nav">
            <p>UMBRELLA</p>
            <a id="HyperLink2" href="index.aspx">User</a>
        </div>

        <table class="style1">
            <tr>
                <td>
                    <label id="bold">Admin Login Page</label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>Username</label><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server"></asp:Label>
                    <br />
                    <label>Password</label><br />
                    <asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox><asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <asp:Label ID="Label3" runat="server"></asp:Label><br/>
                    <asp:Button ID="Button3" runat="server" onClick="button_Click" Text="Login"/>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
