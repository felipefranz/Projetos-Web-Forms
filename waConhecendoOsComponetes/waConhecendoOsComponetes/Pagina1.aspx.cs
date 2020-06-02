using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class Pagina1 : System.Web.UI.Page
    {
        public Double SalarioBruto { get; set; }
        public Double PercentualDesconto { get; set; }

        public List<String> Sites { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Sites = new List<string>();
            this.Sites.Add("www.movieaholicbrasil.com.br");
            this.Sites.Add("www.dfilitto.com.br");
            this.Sites.Add("www.makeindiegames.com.br");
            if (IsPostBack != true)
            {
                if (Request.Cookies["sb"] != null)
                {
                    this.SalarioBruto = Convert.ToDouble(Request.Cookies["sb"].Value);
                    this.PercentualDesconto = Convert.ToDouble(Request.Cookies["pd"].Value);
                }
                else
                {
                    this.SalarioBruto = 0;
                    this.PercentualDesconto = 10;
                }

                tbSalBruto.Text = this.SalarioBruto.ToString();
                rbDesconto.SelectedValue = this.PercentualDesconto.ToString();
                
            }
        }

        protected void btEnviar_Click(object sender, EventArgs e)
        {
            this.SalarioBruto = Convert.ToDouble(tbSalBruto.Text);
            this.PercentualDesconto = Convert.ToDouble(rbDesconto.SelectedValue);
            
        }
    }
}