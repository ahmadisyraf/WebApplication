<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminhomepage.aspx.cs" Inherits="adminHomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            text-align: center;
        }
        .style2
        {
            height: 23px;
        }
        .style3
        {
            height: 24px;
        }
        .style4
        {
            height: 30px;
        }
    </style>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td>
                    <table class="style1">
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Font-Names="Monotype Corsiva" 
                                    style="font-family: 'Times New Roman', Times, serif; font-size: xx-large; text-align: center; color: #000066;" 
                                    Text="Admin Homepage" Font-Size="420pt"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style3" 
                                style="margin: 500px; padding: 80px; border: 2px groove #000080;">
                                <asp:Button ID="adminCreate" runat="server" Text="Create" Width="80px" />
                                <br />
                                <br />
                                <asp:Button ID="adminUpdate" runat="server" Text="Update" Width="80px" />
                                <br />
                                <br />
                                <asp:Button ID="adminView" runat="server" Text="View" Width="80px" />
                                <br />
                                <br />
                                <asp:Button ID="adminDelete" runat="server" Text="Delete" Width="80px" />
                            </td>
                        </tr>
                        <tr>
                            <td class="style4">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2" width="00">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
