<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="duvidaDropDownList.aspx.cs" Inherits="waConhecendoOsComponetes.duvidaDropDownList" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="https://www.dfilitto.com.br">dfilitto</asp:ListItem>
                <asp:ListItem Value="https://www.makeindiegames.com.br">make indie games</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            
        </div>
    </form>
</body>
</html>
