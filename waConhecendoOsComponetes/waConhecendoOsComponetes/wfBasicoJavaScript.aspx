<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfBasicoJavaScript.aspx.cs" Inherits="waConhecendoOsComponetes.wfBasicoJavaScript" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        function ExibeMensagem() {
            alert('Alô Mundo!!!!!');
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/imagens/One-Piece-Chibi-PNG-Image.png" onMouseOver="ExibeMensagem()"/>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Clique no Botão" Width="628px" />
        </div>
    </form>
</body>
</html>
