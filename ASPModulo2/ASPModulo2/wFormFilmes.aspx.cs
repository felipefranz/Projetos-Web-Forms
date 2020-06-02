using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wFormFilmes : System.Web.UI.Page
    {
        public List<String> Filmes { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btInserir_Click(object sender, EventArgs e)
        {
            ddlFilmes.Items.Add(new ListItem(tbValor.Text, tbValor.Text));
        }

        protected void btEnviar_Click(object sender, EventArgs e)
        {
            Filmes = new List<string>();
            foreach (ListItem item in ddlFilmes.Items)
            {
                Filmes.Add(item.Text);
                //Response.Redirect("~/wRespostaFilmes.aspx");
            }
        }
    }
}