<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/userlogin.css" />
    <script src="script/registerValidation.js"></script>

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
                    <p>Register on Umbrella</p>
                </div>
    
                <label>Email</label><br/>
                <asp:TextBox ID="TextBox1" runat="server" name="email"></asp:TextBox><asp:Label ID="Label1" runat="server"></asp:Label>
                <br />
    
                <label>Password</label><br>
                <asp:TextBox ID="TextBox2" runat="server" type="password" name="password"></asp:TextBox><asp:Label ID="Label2" runat="server"></asp:Label>
                <br />
    
                <asp:button ID="button" runat="server" text="Register" OnClick="button_Click" type="submit"/><br />
    
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="index.aspx" ForeColor="Black">Already have an account?</asp:HyperLink>
            </div>

            <div class="container-2">
                <div class="image-container">
                    <img src="images/login.png" alt="login image"/>
                    <p>Know the covid area in detail</p>
                </div>
            </div>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    </form>
</body>
</html>
