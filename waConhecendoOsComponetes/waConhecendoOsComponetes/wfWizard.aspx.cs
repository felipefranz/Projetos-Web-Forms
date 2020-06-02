using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class wfWizard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                Wizard1.ActiveStepIndex = 0;
            }
        }

        protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
        {
            var nome = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbNome")).Text;
            var cpf = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCPF")).Text;
            var rg = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbRG")).Text;
            var cep = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCEP")).Text;
            var uf = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbUF")).Text;
            var cidade = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbCidade")).Text;
            var rua = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbRua")).Text;
            //var Bairro = ((TextBox)Wizard1.WizardSteps[0].FindControl("tbBairro")).Text;
            var Bairro = tbBairro.Text;
            Wizard1.Visible = false;
            Response.Write("<h1> Dados do formulário Wizard</h1>");
            Response.Write("<h3>Nome: " + nome + "</h3>");
            Response.Write("<h3>CPF: " + cpf + "</h3>");
            //...
            Response.Write("<h3>Bairro: " + Bairro + "</h3>");

        }
    }
}