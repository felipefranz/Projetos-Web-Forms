<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfSitesParceiros.aspx.cs" Inherits="waConhecendoOsComponetes.wfSitesParceiros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:ImageMap ID="ImageMap1" runat="server" ImageUrl="~/imagens/exemplopropagandas.jpg">
                <asp:RectangleHotSpot AlternateText="Site Make Indie Games" Bottom="350" NavigateUrl="http://www.makeindiegames.com.br" Right="400" Target="_blank" />
                <asp:RectangleHotSpot Bottom="300" Left="450" NavigateUrl="http://www.vivapontal.com.br" Right="800" Target="_blank" />
                <asp:CircleHotSpot AlternateText="Movie Aholic" NavigateUrl="http://www.movieaholicbrasil.com.br" Radius="100" Target="_blank" X="600" Y="500" />
                <asp:PolygonHotSpot AlternateText="dfilitto" Coordinates="0,500,400,500,400,600,0,600,0,500" NavigateUrl="http://www.dfilitto.com.br" Target="_blank" />
            </asp:ImageMap>
        </div>
    </form>
</body>
</html>
