using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class wfComponentes1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btInserir_Click(object sender, EventArgs e)
        {
            //dlSite.Items.Add(txtSite.Text);
            ListItem item = new ListItem(txtSite.Text, txtEndereco.Text);
            lbEndereco.Items.Add(item);
            txtEndereco.Text = "";
            txtSite.Text = "";
        }

        protected void btSelecionar_Click(object sender, EventArgs e)
        {
            dlSite.Items.Clear();
            ListItem li;
            for (int i = 0; i < lbEndereco.Items.Count; i++)
            {
                li = lbEndereco.Items[i];
                if (li.Selected)
                {
                    li.Selected = false;
                    dlSite.Items.Add(li);
                }
            }
            /*
            foreach (ListItem item in lbEndereco.Items)
            {
                if (item.Selected)
                {
                    item.Selected = false;
                    dlSite.Items.Add(item);
                }
            }
            */
        }

        protected void lbEndereco_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtEndereco_TextChanged(object sender, EventArgs e)
        {

        }
    }
}