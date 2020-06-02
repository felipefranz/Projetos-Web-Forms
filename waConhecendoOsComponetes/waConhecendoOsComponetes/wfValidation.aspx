<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfValidation.aspx.cs" Inherits="waConhecendoOsComponetes.wfValidation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Panel ID="Panel1" runat="server" BackColor="#0066FF" GroupingText="Validação de campos" Height="377px" Width="994px">
                <asp:Label ID="Label1" runat="server" Text="Nome:"></asp:Label>
                <asp:TextBox ID="tbNome" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbNome" ErrorMessage="O nome é obrigatório"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label7" runat="server" Text="E-mail"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Informe o e-mail corretamente" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Idade:"></asp:Label>
                <asp:TextBox ID="tbIdade" runat="server"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbIdade" ErrorMessage="Valor fora do escopo permitido" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Senha:"></asp:Label>
                <asp:TextBox ID="tbSenha1" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="tbSenha1" ErrorMessage="Informe uma senha"></asp:RequiredFieldValidator>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Senha:"></asp:Label>
                <asp:TextBox ID="tbSenha2" runat="server" TextMode="Password"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tbSenha1" ControlToValidate="tbSenha2" ErrorMessage="Os valores informados não são iguais"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbSenha2" ErrorMessage="Informe a segunda senha"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Button ID="btEnviar" runat="server" Text="Enviar" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
