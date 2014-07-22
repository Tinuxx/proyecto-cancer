using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Cancer_frontend.Variables
{
	public partial class AdministracionVariables : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			HtmlGenericControl li = (HtmlGenericControl) Master.FindControl("liAdminVariables");
			li.Attributes.Add("class", "pure-menu-selected");

			//Prueba: poblar gridview de drogas

		}
	}
}