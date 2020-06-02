using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class Cookie1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["login"]!=null) {
                TextBox1.Text = Request.Cookies["login"].Value;
                TextBox2.Text = Request.Cookies["senha"].Value;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies.Add(new HttpCookie("login", TextBox1.Text));
            Response.Cookies.Add(new HttpCookie("senha", TextBox2.Text));
            Session.Add("login", TextBox1.Text);
            //para ver o item na sessão
            //Session["indice"] mamata
            // Session.Remove()
            //Session.Timeout

        }
    }
}