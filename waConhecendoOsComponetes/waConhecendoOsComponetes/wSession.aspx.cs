using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class wSession : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            tbID.Text = Session.SessionID;
            if(Session["contador"]==null)
            {
                Session["contador"] = 0;
            }
            tbsCont.Text = Session["contador"].ToString();
            if(Application["contador"]==null)
            {   
                Application["contador"] = 0;
            }
            tbaCont.Text = Application["contador"].ToString();
            

        }

        protected void bAddSession_Click(object sender, EventArgs e)
        {
            Session["contador"] = Convert.ToInt32(Session["contador"]) +1;
        }

        protected void bAddApplication_Click(object sender, EventArgs e)
        {
            Application["contador"] = Convert.ToInt32(Application["contador"]) + 1;
        }

        protected void btrvariavel_Click(object sender, EventArgs e)
        {
            Session.Remove("contador");
        }

        protected void btfsessao_Click(object sender, EventArgs e)
        {
            Session.Abandon();
        }
    }
}