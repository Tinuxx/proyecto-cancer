using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Cancer_frontend.Eventos
{
    public partial class ManejoEventos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl li = (HtmlGenericControl)Master.FindControl("liManejoEventos");
            li.Attributes.Add("class", "pure-menu-selected");
        }
    }
}