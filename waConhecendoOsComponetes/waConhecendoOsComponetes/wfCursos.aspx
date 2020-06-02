<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="wfCursos.aspx.cs" Inherits="waConhecendoOsComponetes.wfCursos" %>

<%@ Register src="wucMenu.ascx" tagname="wucMenu" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <uc1:wucMenu ID="wucMenu1" runat="server" />
            <asp:AdRotator ID="AdRotator1" runat="server" AdvertisementFile="~/propaganda.xml" Target="_blank"/> 
            <br />
            <asp:Literal ID="Literal1" runat="server" Text="&lt;h1&gt;Alô Mundo!!!!!!&lt;h1&gt;"></asp:Literal>
        </div>
        <div>
            
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="500px" ImageUrl="~/imagens/Curso1.jpg" OnClick="ImageButton1_Click" ToolTip="Clique aqui para saber mais" Width="700px" />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="500px" ImageUrl="~/imagens/Curso2.jpg" OnClick="ImageButton2_Click" Width="700px" />
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" Text="Construct 2 - Do básico ao multiplayer "></asp:Label>
                    <br />
                    <p>O curso tem como objeto ensinar de maneira prática e dinâmica os conceitos necessários para se criar jogos na ferramenta Construct 2. 
O curso abordará todos os conceitos básicos da ferramenta como criação de cenários, movimentação, colisão, uso de sons, criação de eventos, comandos de input e muito mais. Ensinará a exportar seus jogos criados para a plataforma Web e Android. Além disso, será abordado as técnicas de criação de jogos multiplayer (conceitos básicos e intermediários). </p>
                    <p>
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://www.udemy.com/construct-2-do-basico-ao-multiplayer/" Target="_blank">Compre o curso Construct 2 - Do básico ao multiplayer</asp:HyperLink>
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="https://www.dfilitto.com.br" Target="_blank">Visite o site dfilitto.com.br</asp:HyperLink>
                    </p>
                    <p>
                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
                    </p>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Large" Text="Construct 2 - Construindo um clone do jogo Timberman "></asp:Label>
                    <br />
                    <p>O objetivo do curso é construir um jogo no estilo infinity runner baseado no game Timberman. Timberman é um jogo casual estilo arcade, onde o jogador é um lenhador que tem como objetivo cortar os galhos das árvores evitando que os galhos batam em sua cabeça.
Para o desenvolvimento dese curso o aluno irá utilizar a ferramenta de desenvolvimento de jogos 2D Construct 2. Com o uso dessa ferramenta é possível criar jogos facilmente sem a necessidade de conhecer nenhuma linguagem de programação. Toda a programação realizada é visual e de fácil entendimento.</p>
                    <p>
                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="https://www.udemy.com/construct-2-construindo-um-clone-do-jogo-timberman/" Target="_blank">Compre o curso Construct 2 - Do básico ao multiplayer</asp:HyperLink>
                    </p>
                    <p>
                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="https://www.dfilitto.com.br" Target="_blank">Visite o site dfilitto.com.br</asp:HyperLink>
                    </p>
                    <p>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton1_Click">Voltar</asp:LinkButton>
                    </p>
                </asp:View>
            </asp:MultiView>
        </div>
    </form>
</body>
</html>
