using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace trabalho01
{
    public partial class Name : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalc_Click(object sender, EventArgs e)
        {

            lblRes.Text = txt1Valor.Text + " " + txt2Valor.Text;
            lblRes.ForeColor = System.Drawing.Color.DarkRed;
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
    }
}