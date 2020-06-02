<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidarCPF.aspx.cs" Inherits="waConhecendoOsComponetes.ValidarCPF" %>

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
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ValidationExpression="^(\d{3}.\d{3}.\d{3}-\d{2})|(\d{11})$ ou ^\d{3}\x2E\d{3}\x2E\d{3}\x2D\d{2}$">CPF Inválido</asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
        </div>
    </form>
</body>
</html>
