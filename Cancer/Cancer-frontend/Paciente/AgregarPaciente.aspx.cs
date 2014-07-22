using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Cancer_frontend.Pacientes
{
    public partial class AgregarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl li = (HtmlGenericControl)Master.FindControl("liAgregarPaciente");
            li.Attributes.Add("class", "pure-menu-selected");
        }
        protected void btnIncluirMuestra_Click(object sender, EventArgs e)
        {
            Server.Transfer("~/paciente/EditarPaciente.aspx", false);
        }
    }
}