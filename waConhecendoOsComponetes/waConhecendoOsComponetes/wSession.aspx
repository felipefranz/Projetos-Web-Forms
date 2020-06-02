<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wSession.aspx.cs" Inherits="waConhecendoOsComponetes.wSession" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Session ID: "></asp:Label>
            <asp:TextBox ID="tbID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contator da Sessão : "></asp:Label>
            <asp:TextBox ID="tbsCont" runat="server"></asp:TextBox>
            <asp:Button ID="bAddSession" runat="server" OnClick="bAddSession_Click" Text="Adicionar" />
            <asp:Button ID="btrvariavel" runat="server" OnClick="btrvariavel_Click" Text="Remover variável" />
            <asp:Button ID="btfsessao" runat="server" OnClick="btfsessao_Click" Text="Finalizar sessão" />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contador aplicação: "></asp:Label>
            <asp:TextBox ID="tbaCont" runat="server"></asp:TextBox>
            <asp:Button ID="bAddApplication" runat="server" OnClick="bAddApplication_Click" Text="Adicinar" />
            <asp:Button ID="Button4" runat="server" Text="Button" />
        </div>
    </form>
</body>
</html>
