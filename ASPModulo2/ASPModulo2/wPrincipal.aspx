<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wPrincipal.aspx.cs" Inherits="ASPModulo2.wPrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lLogin" runat="server" Text="Label"></asp:Label>       
            <br />
            <asp:Button ID="btExecutar" runat="server" Text="Apaga Cookie" OnClick="btExecutar_Click" />
            <asp:Button ID="btListar" runat="server" Text="Listar Cookies" OnClick="btListar_Click" style="height: 29px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Session ID:"></asp:Label>
            <asp:TextBox ID="txbID" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Contador da Session :"></asp:Label>
            <asp:TextBox ID="txbsContador" runat="server"></asp:TextBox>
            <asp:Button ID="btIncContS" runat="server" OnClick="btIncContS_Click" Text="ADD" />
            <asp:Button ID="btRemoveS" runat="server" OnClick="btRemoveS_Click" Text="Remover" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Contador da aplicação: "></asp:Label>
            <asp:TextBox ID="txbcapp" runat="server"></asp:TextBox>
            <asp:Button ID="btaddapp" runat="server" OnClick="btaddapp_Click" Text="ADD" />
            <asp:Button ID="btremoveapp" runat="server" OnClick="btremoveapp_Click" Text="Remover" />
        </div>
    </form>
</body>
</html>
