using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace waConhecendoOsComponetes
{
    public partial class wfUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                String nome = fuArquivo.FileName;
                String caminho = Server.MapPath(@"upload\");

                txbNome.Text = nome;

                txtTamanho.Text = fuArquivo.PostedFile.ContentLength.ToString();

                //fuArquivo.PostedFile.SaveAs(@"C:\Desenvolvimento_Sistemas\Projetos Web Forms\waConhecendoOsComponetes\waConhecendoOsComponetes\upload\" + nome);
                fuArquivo.PostedFile.SaveAs(caminho + nome);
            }
            catch
            {

            }
            
        }

        protected void btEnviar2_Click(object sender, EventArgs e)
        {
            try
            {
                String nome = "";
                String caminho = Server.MapPath(@"upload\");
                for(int i = 0; i < fuArquivo.PostedFiles.Count; i++)
                {
                    nome = nome + fuArquivo.PostedFiles[i].FileName + " - ";
                    fuArquivo.PostedFile.SaveAs(caminho + fuArquivo.PostedFiles[i].FileName);
                }

                txbNome.Text = nome;
            }
            catch
            {

            }

        }

    }
}