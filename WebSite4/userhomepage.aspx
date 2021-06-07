<%@ Page Language="C#" AutoEventWireup="true" CodeFile="userhomepage.aspx.cs" Inherits="userhomepage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link rel="stylesheet" href="style/userhome.css"/>

    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Press+Start+2P&family=Staatliches&display=swap" rel="stylesheet"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/> 
    <link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro&display=swap" rel="stylesheet"/>
</head>
<body style="background-color: #FFFFFF">
    <form id="form1" runat="server">

        <div class="top-nav">
            <p>UMBRELLA</p>
            <a id="HyperLink2" href="index.aspx">Logout</a>
            <a id="HyperLink3">kk</a>
        </div>

        <table class="style1">
            <tr>
                <td>
                    <label id="bold">Search COVID-19 cases in Malaysia</label>
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
                    <asp:Button ID="Button3" runat="server" OnClick="TextBox2_TextChanged" Text="Enter"/><br />
                    <asp:Label ID="Label1" runat="server"></asp:Label>
                    <br /><br />
                    <asp:Label ID="Label4" runat="server"></asp:Label>
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="state" HeaderText="state" SortExpression="state" />
                            <asp:BoundField DataField="district" HeaderText="district" SortExpression="district" />
                            <asp:BoundField DataField="premise" HeaderText="premise" SortExpression="premise" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [casesTable] WHERE [state] = @state AND [district] =  @district">
                        <SelectParameters>  
                            <asp:ControlParameter ControlID="TextBox1" Name="state" PropertyName="Text" Type="String" />  
                            <asp:ControlParameter ControlID="TextBox2" Name="district" PropertyName="Text" Type="String" />  
                        </SelectParameters>  
                    </asp:SqlDataSource>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
