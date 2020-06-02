<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ImageMap.aspx.cs" Inherits="waConhecendoOsComponetes.Beta.ImageMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="ImageMap1" runat="server" HotSpotMode="PostBack" ImageUrl="~/imagens/OnePiecePoster.png" OnClick="ImageMap1_Click">
                <asp:RectangleHotSpot AlternateText="site One Piece" Bottom="300" HotSpotMode="PostBack" NavigateUrl="http://www.dfilitto.com.br" PostBackValue="kkkkkk" Right="300" Target="_blank" />
            </asp:ImageMap>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </form>
</body>
</html>
