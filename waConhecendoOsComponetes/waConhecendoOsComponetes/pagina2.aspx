<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pagina2.aspx.cs" Inherits="waConhecendoOsComponetes.pagina2" %>
<%@  PreviousPageType virtualPath="~/Pagina1.aspx"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>
            <br />
            <asp:Button ID="Button1" runat="server" PostBackUrl="~/Pagina1.aspx" Text="Voltar" />
        </div>
    </form>
</body>
</html>
