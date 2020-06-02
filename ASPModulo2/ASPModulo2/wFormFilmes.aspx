<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wFormFilmes.aspx.cs" Inherits="ASPModulo2.wFormFilmes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Filmes: Insira um novo filme digitando seu nome na caixa de texto"></asp:Label>
            <br />
            <asp:DropDownList ID="ddlFilmes" runat="server">
            </asp:DropDownList>
            <asp:TextBox ID="tbValor" runat="server" ToolTip="Digite o nome de um filme para inserir o mesmo na sua lista"></asp:TextBox>
            <asp:Button ID="btInserir" runat="server" Text="Inserir" OnClick="btInserir_Click" />
            <asp:Button ID="btEnviar" runat="server" Text="Enviar" OnClick="btEnviar_Click" PostBackUrl="~/wRespostaFilmes.aspx" style="height: 29px" />
            <br />
        </div>
    </form>
</body>
</html>
