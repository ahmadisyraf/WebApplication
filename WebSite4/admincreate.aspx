<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admincreate.aspx.cs" Inherits="adminHomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <link rel="stylesheet" href="style/admincreate.css"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Staatliches&display=swap" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/> 
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"/>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
        
        <div class="top-nav">
            <p>UMBRELLA</p>
            <a id="HyperLink2" href="index.aspx">Logout</a>
        </div>

        <table class="style1">
            <tr>
                <td>
                    <label id="bold">Enter COVID-1 9 cases in Malaysia</label>
                </td>
            </tr>
            <tr>
                <td>
                    <label>State</label><br />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Label ID="Label2" runat="server"></asp:Label>
                    <br />
                    <label>District</label><br />
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:Label ID="Label3" runat="server"></asp:Label>
                    <br />
                    <label>Premise</label><br />
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><asp:Label ID="Label4" runat="server"></asp:Label>
                    <br />
                    <asp:Button ID="Button3" runat="server" OnClick="button_Click" Text="Enter"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    
    </div>
    </form>

</body>
</html>
