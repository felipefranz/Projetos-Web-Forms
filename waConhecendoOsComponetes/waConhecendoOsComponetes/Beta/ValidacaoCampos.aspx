<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ValidacaoCampos.aspx.cs" Inherits="waConhecendoOsComponetes.Beta.ValidacaoCampos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#99CCFF" GroupingText="texto" Height="422px" Width="1145px">
                <asp:Label ID="Label1" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="E-mail não informado" SetFocusOnError="True" InitialValue="*" ViewStateMode="Enabled">Informe o e-mail</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="senha1" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="senha1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ToolTip=" teste eeeee">dasdsdsadasds</asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="senha2" runat="server"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="senha1" ControlToValidate="senha2" ErrorMessage="As senhas devem ser iguais" ToolTip="teste 2">teste</asp:CompareValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Senha"></asp:Label>
                <asp:TextBox ID="senha3" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="senha3" ErrorMessage="dasdasdasdas sdsdsad" MaximumValue="10" MinimumValue="1" Type="Integer">kkkk</asp:RangeValidator>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Button" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
