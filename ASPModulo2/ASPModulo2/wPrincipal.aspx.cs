using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wPrincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == true)
            {
                lLogin.Text = "";
                if (Request.Cookies["login"] != null)
                {
                    lLogin.Text = Request.Cookies["login"].Value;
                }
            }

            if (Session["login"] == null)
            {
                Response.Redirect("~/wLogin.aspx");
            }
            else
            {
                lLogin.Text = Session["login"].ToString();
                if (Session["contador"] == null) Session["contador"] = 0;
                txbID.Text = Session.SessionID.ToString();
                txbsContador.Text = Session["contador"].ToString();
            }

            if (Application["contador"] == null) Application["contador"] = 0;
            else txbcapp.Text = Application["contador"].ToString();
        }

        protected void btExecutar_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["login"] != null)
            {
                //Request.Cookies.Clear();
                Request.Cookies.Remove("login");
                int n = Request.Cookies.Count;
            }
        }

        protected void btListar_Click(object sender, EventArgs e)
        {
            var keys = Request.Cookies.AllKeys;
            String texto = "<p>";
            String pos = "";           
            for (int i = 0; i < Request.Cookies.Count; i++)
            {
                pos = keys[i];
                texto += pos + ":" + Request.Cookies[pos].Value + " ";
            }
            texto += "</p>";
            Response.Write(texto);
        }

        protected void btIncContS_Click(object sender, EventArgs e)
        {
            Session["contador"] = Convert.ToInt32(Session["contador"]) + 1;
        }

        protected void btRemoveS_Click(object sender, EventArgs e)
        {
            Session.Remove("contador");  
        }

        protected void btaddapp_Click(object sender, EventArgs e)
        {
            Application.Lock();
            Application["contador"] = Convert.ToInt32(Application["contador"]) + 1;
            Application.UnLock();
        }

        protected void btremoveapp_Click(object sender, EventArgs e)
        {
            Application.Remove("contador");
        }
    }
}