using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabalho01

{




    public partial class Reservista : System.Web.UI.Page
    {        

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnNasc_Click(object sender, EventArgs e)
        {
            Response.Redirect("Reservista.aspx");
        }

        protected void btnNota_Click(object sender, EventArgs e)
        {
            Response.Redirect("Média.aspx");
        }

        protected void cldNasc_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {
            int idade = 0;
            var sexo = ddlSexo.SelectedValue;
            /*não consegui fazer a seleção da data de aniversário com o calender de forma mais dinâmica
             é necessário ir até a data de 15/04/2003 */
            DateTime nasc = Convert.ToDateTime(txtData.Text);
            TimeSpan dias = DateTime.Now - nasc;

            idade = (dias.Days) / 365;

            if( sexo == "m" && idade >= 18)
            {
                txtResult.Visible = true;
                lblResult.Visible = true;
                lblResult.Text = $"Insira o Número de Reservista";
            }
            else
            {
                txtResult.Visible = false;
                lblResult.Visible = false;
            }
        }
    }
}