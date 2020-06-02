<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfUpload.aspx.cs" Inherits="waConhecendoOsComponetes.wfUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="UPLOAD de Arquivos"></asp:Label>
        </div>
        
            <asp:FileUpload ID="fuArquivo" runat="server" AllowMultiple="True" />
        <p>
            <asp:Label ID="Label2" runat="server" Text="Nome do Arquivo:"></asp:Label>
            <asp:TextBox ID="txbNome" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Tamanho do Arquivo:"></asp:Label>
            <asp:TextBox ID="txtTamanho" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>

        <asp:Button ID="Button1" runat="server" Text="Enviar Arquivo" OnClick="btEnviar_Click" />

         <asp:Button ID="Button2" runat="server" Text="Enviar Múltiplos Arquivos" OnClick="btEnviar2_Click" />
        
    </form>
</body>
</html>
