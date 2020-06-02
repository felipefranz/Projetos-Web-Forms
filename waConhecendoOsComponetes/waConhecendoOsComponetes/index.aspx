<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="waConhecendoOsComponetes.index" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <uc1:wucMenu ID="wucMenu1" runat="server" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/wfTabuada.aspx">Tabuada</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/wfParOuImparFatorial.aspx.cs">Par Ou Impar</asp:HyperLink>
                    </td>
                    <td>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/wfDiasDeVida.aspx.designer.cs">Calcula os dias de vida</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ImageButton ID="ImageButton2" runat="server" Height="241px" ImageUrl="~/imagens/Curso1.jpg" PostBackUrl="~/wfCursos.aspx" Width="429px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton3" runat="server" Height="272px" ImageUrl="~/imagens/Curso2.jpg" PostBackUrl="~/wfCursos.aspx" Width="430px" />
                    </td>
                    <td>
                        <asp:ImageButton ID="ImageButton1" runat="server" Height="268px" ImageUrl="~/imagens/OnePiecePoster.png" PostBackUrl="~/wfAlteraTamanhoFonte.aspx" Width="349px" />
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <asp:SiteMapPath ID="SiteMapPath1" runat="server" Font-Names="Verdana" Font-Size="0.8em" PathSeparator=" : ">
            <CurrentNodeStyle ForeColor="#333333" />
            <NodeStyle Font-Bold="True" ForeColor="#7C6F57" />
            <PathSeparatorStyle Font-Bold="True" ForeColor="#5D7B9D" />
            <RootNodeStyle Font-Bold="True" ForeColor="#5D7B9D" />
        </asp:SiteMapPath>
    </form>
</body>
</html>
