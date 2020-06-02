using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class wfBulletListBeta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<ListItem> dados = new List<ListItem>();
            dados.Add(new ListItem("Foto 1"));
            dados.Add(new ListItem("Foto 2"));
            blDados.DataSource = dados;
            blDados.DataBind();
        }

        protected void blDados_Click(object sender, BulletedListEventArgs e)
        {
            switch (e.Index)
            {
                case 0: Image1.ImageUrl = "/imagens/1.jpg"; 
                    break;
                case 1:
                    Image1.ImageUrl = "/imagens/2.jpg";
                    break;
            }
        }
    }
}