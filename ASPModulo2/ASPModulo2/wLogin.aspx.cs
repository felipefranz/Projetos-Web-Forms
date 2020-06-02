using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPModulo2
{
    public partial class wLogin : System.Web.UI.Page
    {
        List<String> Usuarios;
        String SenhaPadrao = "asp.net2017";
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuarios = new List<string>();
            Usuarios.Add("dfilitto");
            Usuarios.Add("makeindiegames");
            Usuarios.Add("aluno");


            if (Request.Cookies["login"] != null)
            {
                txbLogin.Text = Request.Cookies["login"].Value;
                txbSenha.Text = Request.Cookies["senha"].Value;
                btExecutar_Click(sender, e);
            }
        }

        protected void btExecutar_Click(object sender, EventArgs e)
        {
            Boolean flag = false;
            foreach (var item in Usuarios)
            {
                if(item == txbLogin.Text && SenhaPadrao == txbSenha.Text)
                {
                    //cookie
                    HttpCookie login = new HttpCookie("login", txbLogin.Text);
                    Response.Cookies.Add(login);
                    Response.Cookies.Add(new HttpCookie("senha",txbSenha.Text));
                    //session
                    Session["login"] = txbLogin.Text;
                    Response.Redirect("~/wPrincipal.aspx");
                }
            }
        }
    }
}