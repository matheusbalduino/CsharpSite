using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabalho01
{
    public partial class Média : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnNome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Name.aspx");
        }

        protected void btnMulti_Click(object sender, EventArgs e)
        {
            Response.Redirect("multiplier.aspx");
        }

        protected void btnNasc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservista.aspx");
        }

        protected void btnNota_Click(object sender, EventArgs e)
        {
            Response.Redirect("Média.aspx");
        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {

            if(txt1Valor.Text == "" && txt2Valor.Text == "")
            {
                lblResult.ForeColor = System.Drawing.Color.Red;
                lblResult.Text = $"<b> Informe um valor </b> ";
            }
            else
            {
                double nota1 = Convert.ToDouble(txt1Valor.Text);
                double nota2 = Convert.ToDouble(txt2Valor.Text);
                double media = (nota1 + nota2) / 2;

                if (media < 4)
                {
                    lblResult.ForeColor = System.Drawing.Color.Red;
                    lblResult.Text = $"Reprovado com <b> {media} </b> ";
                }
                else if (media >= 4 && media < 6)
                {
                    lblResult.ForeColor = System.Drawing.Color.Blue;
                    lblResult.Text = $"Exame com <b> {media} </b> ";
                }
                else if (media >= 6)
                {
                    lblResult.ForeColor = System.Drawing.Color.Green;
                    lblResult.Text = $"Aprovado com <b> {media} </b> ";
                }
            }
            
        }
    }
}
