using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class pagina2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Double sb = Convert.ToDouble(Request.Form["tvSalBruto"]);

            //Response.Write("<p>"+sb.ToString()+"</p>");

            //Double valor = Convert.ToDouble(Request.QueryString["valor"]);
            //Response.Write("<p>" + valor.ToString() + "</p>");

            //for (int i = 0; i < Request.ServerVariables.Count; i++)
            //{
            //    Response.Write("<p>"+ Request.ServerVariables[i]+"</p>");
            //}

            //Response.Write("<p>" + PreviousPage.codigo+ "</p>");
            //foreach (string key in Request.Form.Keys)
            //{
            //    Response.Write("<p>"+key + "</p>");
            //    Response.Write("<p>" + Request.Form[key] + "</p>");
            //}

            //Double sb = Convert.ToDouble(Request["tbSalBruto"]);
            //TextBox aux = (TextBox) Page.PreviousPage.FindControl("tbSalBruto");
            //sb = Convert.ToDouble(aux.Text);
            Double sb = PreviousPage.SalarioBruto;
            //Response.Cookies.Add(new HttpCookie("sb", aux.Text));
            Response.Cookies.Add(new HttpCookie("sb",sb.ToString()));

            Double desc = Convert.ToDouble(Request["rbDesconto"]);
            Response.Cookies.Add(new HttpCookie("pd", Request["rbDesconto"]));

            Double d = (sb * desc) / 100;
            Double sl = sb - d;

            Table tabela = new Table();
            //Salario Bruto
            TableRow linha = new TableRow();
            //texto
            TableCell coluna = new TableCell();
            coluna.Text = "Salário Bruto:";
            linha.Cells.Add(coluna);
            //valor
            coluna = new TableCell();
            coluna.Text = sb.ToString();
            linha.Cells.Add(coluna);

            tabela.Rows.Add(linha);

            //Percentual de desconto
            linha = new TableRow();
            //texto
            coluna = new TableCell();
            coluna.Text = "Percentual de desconto:";
            linha.Cells.Add(coluna);
            //valor
            coluna = new TableCell();
            coluna.Text = desc.ToString();
            linha.Cells.Add(coluna);
            tabela.Rows.Add(linha);

            //Salario Liquido
            linha = new TableRow();
            //texto
            coluna = new TableCell();
            coluna.Text = "Sálario Líquido:";
            linha.Cells.Add(coluna);
            //valor
            coluna = new TableCell();
            coluna.Text = sl.ToString();
            linha.Cells.Add(coluna);
            tabela.Rows.Add(linha);
            foreach (var item in PreviousPage.Sites)
            {
                coluna = new TableCell();
                coluna.Text = item;
                linha.Cells.Add(coluna);
                tabela.Rows.Add(linha);
            }
            PlaceHolder1.Controls.Add(tabela);
        }
        protected void CarregarVariaveisServidor()
        {
            // Declaração de variáveis auxiliares.
            int loop1, loop2;
            NameValueCollection valorColecao;
            // Carregandos ServerVariable da coleção.
            valorColecao = Request.ServerVariables;
            // Obtem os nomes de todas as chaves da coleção e guarda em um array.
            String[] colecao = valorColecao.AllKeys;
            // Varrendo todas as variáveis existentes no servidor.
            for (loop1 = 0; loop1 < colecao.Length; loop1++)
            {
                // Escrevendo na tela as variáveis existentes no servidor.
                Response.Write("Chave da variavel: " + colecao[loop1] + "<br>");
                String[] valor = valorColecao.GetValues(colecao[loop1]);
                // Varrendo todas as propriedades da variavel.
                for (loop2 = 0; loop2 < valor.Length; loop2++)
                {
                    // Escrevendo na tela todos os valores das variáveis encontradas.
                    Response.Write("Valor da Variavel: " + loop2 + ": " + Server.HtmlEncode(valor[loop2]) + "<br>");
                }
            }
        }
    }
}