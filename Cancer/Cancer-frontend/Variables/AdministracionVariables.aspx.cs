using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Cancer_frontend.Cancer_WS;

namespace Cancer_frontend.Variables
{
	public partial class AdministracionVariables : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			HtmlGenericControl li = (HtmlGenericControl) Master.FindControl("liAdminVariables");
			li.Attributes.Add("class", "pure-menu-selected");

			if (!IsPostBack)
			{
				llenarGridDrogas();
			}
		}

		protected void llenarGridDrogas()
		{
			Cancer_wsClient cliente = new Cancer_wsClient();
			List<DrogaDTO> listaDrogas = cliente.obtenerListaDrogas();
			gridDrogas.DataSource = listaDrogas;
			gridDrogas.DataBind();
		}

		/*
		protected void gridDrogas_RowDataBound(object sender, GridViewRowEventArgs e)
		{
			
		}
		*/

		protected void gridDrogas_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
		{
			gridDrogas.EditIndex = -1;
			llenarGridDrogas();
		}

		protected void gridDrogas_RowEditing(object sender, GridViewEditEventArgs  e)
		{
			gridDrogas.EditIndex = e.NewEditIndex;
			llenarGridDrogas();
		}

		protected void gridDrogas_RowUpdating(object sender, GridViewUpdateEventArgs e)
		{
			//Implementar el editar aquí
			//Capturar los controles usando (TextBox) gridDrogas.Rows[e.RowIndex].FindControl("<nombre del control>");
			int id = int.Parse(((Label)gridDrogas.Rows[e.RowIndex].FindControl("lblID")).Text);
			string nombre = ((TextBox) gridDrogas.Rows[e.RowIndex].FindControl("txtNombre")).Text;
			string storageAndStability = ((TextBox) gridDrogas.Rows[e.RowIndex].FindControl("txtStorageAndStability")).Text;
			float porcentajeTDC = float.Parse(((TextBox)gridDrogas.Rows[e.RowIndex].FindControl("txtTDC")).Text);
			float stockSolution = float.Parse(((TextBox)gridDrogas.Rows[e.RowIndex].FindControl("txtStockSolution")).Text);
			//CAMBIAR ESTO!! Hay que consultar cómo se van a administrar las casas comerciales
			string casaComercial ="";

			//Alistar el DTO
			DrogaDTO nuevosDatos = new DrogaDTO();
			nuevosDatos.Nombre = nombre;
			nuevosDatos.StorageAndStability = storageAndStability;
			nuevosDatos.PorcentajeTDC = porcentajeTDC;
			nuevosDatos.StockSolution = stockSolution;
			nuevosDatos.CasaComercial = casaComercial;

			//Invocar el webservice
			Cancer_wsClient cliente = new Cancer_wsClient();
			int resultado = cliente.modificarDroga(id, nuevosDatos);
			llenarGridDrogas();
		}

		protected void gridDrogas_RowDeleting(object sender, GridViewDeleteEventArgs e)
		{
			//Implementar el borrar aquí
			llenarGridDrogas();
		}

		protected void gridDrogas_PageIndexChanging(object sender, GridViewPageEventArgs e)
		{
			gridDrogas.PageIndex = e.NewPageIndex;
			llenarGridDrogas();
		}
	}
}