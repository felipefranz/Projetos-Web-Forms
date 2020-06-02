<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfBulletListBeta.aspx.cs" Inherits="waConhecendoOsComponetes.wfBulletListBeta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:BulletedList ID="blDados" runat="server" BorderStyle="Groove" BulletStyle="Square" DisplayMode="LinkButton" OnClick="blDados_Click">
            </asp:BulletedList>
            <br />
            <asp:Image ID="Image1" runat="server" />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="http://www.dfilitto.com.br">Abrir curso para comprar</asp:HyperLink>
        </div>
    </form>
</body>
</html>
