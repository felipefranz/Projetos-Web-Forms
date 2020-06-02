﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wMenu.aspx.cs" Inherits="waConhecendoOsComponetes.wMenu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Menu ID="Menu1" runat="server" BackColor="#F7F6F3" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#7C6F57" Orientation="Horizontal" StaticSubMenuIndent="10px" StaticDisplayLevels="2">
                <DynamicHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <DynamicMenuStyle BackColor="#F7F6F3" />
                <DynamicSelectedStyle BackColor="#5D7B9D" />
                <Items>
                    <asp:MenuItem NavigateUrl="~/wfCursos.aspx" Text="Cadastros" Value="Cadastros">
                        <asp:MenuItem ImageUrl="~/imagens/tony_tony_chopper_happy___o_p_by_leandrojvarini-d47io7j.png" Text="Cliente" Value="Cliente"></asp:MenuItem>
                        <asp:MenuItem Text="Fornecedores" Value="Fornecedores"></asp:MenuItem>
                    </asp:MenuItem>
                    <asp:MenuItem Text="Consultas" Value="Consultas"></asp:MenuItem>
                    <asp:MenuItem Text="Relatorios" Value="Relatorios"></asp:MenuItem>
                </Items>
                <StaticHoverStyle BackColor="#7C6F57" ForeColor="White" />
                <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                <StaticSelectedStyle BackColor="#5D7B9D" />
            </asp:Menu>
            <asp:SiteMapDataSource ID="mapadosite" runat="server" />
        </div>
    </form>
</body>
</html>
