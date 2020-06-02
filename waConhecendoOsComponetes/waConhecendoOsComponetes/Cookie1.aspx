<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cookie1.aspx.cs" Inherits="waConhecendoOsComponetes.Cookie1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Cookie" Width="167px" />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Session" Width="167px" />
        </div>
    </form>
</body>
</html>
