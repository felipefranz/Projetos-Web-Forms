using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wRespostaSalarioMinimo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Response.Write("<h1> Objeto Request </h1>");
            //Response.Write("<h3> tbSb: " + Request.Form["tbSb"] + "</h3>");
            //Response.Write("<h3> tbPb: " + Request.Form["tbPd"] + "</h3>");
            //Response.Write("<h3> tbPb: " + Request.QueryString["Nome"] + "</h3>");

            if (Request["tbSb"] == null)
            {
                Response.Redirect("~/wFormSalarioMinimo.aspx");
            }

            Double sb = Convert.ToDouble(Request.Form["tbSb"]);
            Double pd = 0;
            RadioButtonList rb = (RadioButtonList) Page.PreviousPage.FindControl("rbPd");
            if(rb.SelectedIndex != 3)
            {
                switch (rb.SelectedIndex)
                {
                    case 0:
                        pd = 10;
                        break;
                    case 1:
                        pd = 20;
                        break;
                    case 2:
                        pd = 30;
                        break;
                }
            }
            else
            {
                pd = Convert.ToDouble(Request["tbPd"]);
            }
            
            Double d = (sb * pd)/ 100;
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
            coluna.Text = pd.ToString();
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

            PlaceHolder1.Controls.Add(tabela);
        }
    }
}