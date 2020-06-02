<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagina1.aspx.cs" Inherits="waConhecendoOsComponetes.Pagina1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Salário Bruto"></asp:Label>
            <br />
            <asp:TextBox ID="tbSalBruto" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Valor de Desconto"></asp:Label>
            <asp:RadioButtonList ID="rbDesconto" runat="server">
                <asp:ListItem Value="10">10 %</asp:ListItem>
                <asp:ListItem Value="20">20 %</asp:ListItem>
                <asp:ListItem Value="30">30 %</asp:ListItem>
            </asp:RadioButtonList>
            <asp:Button ID="btEnviar" runat="server" PostBackUrl="~/pagina2.aspx" Text="Enviar" OnClick="btEnviar_Click" />
            <br />
        </div>
    </form>
</body>
</html>
