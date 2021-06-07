<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="style/indexStyle.css"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Staatliches&display=swap" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/> 
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="top-nav">
            <p>UMBRELLA</p>
            <a id="HyperLink2" href="adminlogin.aspx">Admin</a>
        </div>

        <div class="login-container">

            <div class="container-1">
                <div class="logo-container">
                    <p>Login on Umbrella</p>
                </div>
    
                <label>Email</label><br/>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server"></asp:Label>
                </br>
    
                <label>Password</label><br>
                <asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox><asp:Label ID="Label2" runat="server"></asp:Label>
                </br>

                <asp:Label ID="Label3" runat="server"></asp:Label><br />
    
                <asp:button ID="button" runat="server" text="Login" OnClick="button_Click"/></br>
    
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="register.aspx" ForeColor="Black">New user? Register Here</asp:HyperLink>
            </div>

            <div class="container-2">
                <div class="image-container">
                    <img src="images/login.png" alt="login image"/>
                    <p>Know the covid area in detail</p>
                </div>
            </div>

        </div>


    </form>
</body>
</html>