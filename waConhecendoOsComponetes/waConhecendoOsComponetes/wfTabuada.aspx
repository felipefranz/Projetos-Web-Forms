<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfTabuada.aspx.cs" Inherits="waConhecendoOsComponetes.wfTabuada" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <uc1:wucMenu ID="wucMenu1" runat="server" />
            <h1>Tabuada</h1>

            <br />
            <asp:DropDownList ID="dlNumeros" runat="server">
            </asp:DropDownList>
            <asp:Button ID="btExecutar" runat="server" OnClick="btExecutar_Click" Text="Exibir a tabuada" />
            <br />
            <asp:ListBox ID="lbDados" runat="server" Height="302px" Visible="False"></asp:ListBox>

            <br />
            <asp:Table ID="tbDados" runat="server" BackColor="Red" BorderColor="Lime" BorderWidth="2px" CellPadding="5" CellSpacing="5" Font-Bold="True" Font-Size="Medium" Visible="False" Width="247px">
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">0</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">1</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">2</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">3</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">4</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">5</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">6</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">7</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">8</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">9</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow runat="server">
                    <asp:TableCell runat="server"></asp:TableCell>
                    <asp:TableCell runat="server">X</asp:TableCell>
                    <asp:TableCell runat="server">10</asp:TableCell>
                    <asp:TableCell runat="server">=</asp:TableCell>
                    <asp:TableCell runat="server"></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            <br />
            <asp:PlaceHolder ID="PlaceHolder" runat="server"></asp:PlaceHolder>

            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/index.aspx">Home</asp:HyperLink>

        </div>
    </form>
</body>
</html>
