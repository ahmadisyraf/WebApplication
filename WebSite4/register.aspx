<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/userlogin.css" />
</head>
<body>
    <form id="form1" runat="server">    
        <div class="top-nav">
            <p>UMBRELLA</p>
        </div>

        <div class="login-container">

            <div class="container-1">
                <div class="logo-container">
                    <p>Register on Umbrella</p>
                </div>
    
                <label>Email</label><br/>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br>
    
                <label>Password</label><br>
                <asp:TextBox ID="TextBox2" runat="server" type="password"></asp:TextBox><br>

                <label>Confrim password</label><br>
                <asp:TextBox ID="TextBox4" runat="server" type="password"></asp:TextBox><br>
    
                <asp:button ID="button" runat="server" text="Register"/><br>
    
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="index.aspx" ForeColor="Black">Already have an account?</asp:HyperLink>
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
