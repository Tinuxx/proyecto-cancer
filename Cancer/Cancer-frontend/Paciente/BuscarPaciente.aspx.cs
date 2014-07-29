using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace Cancer_frontend.Pacientes
{
    public partial class BuscarPaciente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HtmlGenericControl li = (HtmlGenericControl)Master.FindControl("liBuscarPaciente");
            li.Attributes.Add("class", "pure-menu-selected");
        }
        protected void btnConMuestras_Click(object sender, EventArgs e)
        {
            limpiarSeleccionadoMenuBusquedaRapida();
            mtvBusquedaRapida.SetActiveView(viewPacientesConMuestras);
            liConMuestras.Attributes.Add("class", "pure-menu-selected");
        }
        protected void btnConCitometria_Click(object sender, EventArgs e)
        {
            limpiarSeleccionadoMenuBusquedaRapida();
            mtvBusquedaRapida.SetActiveView(viewPacientesConCitometria);
            liConCitometria.Attributes.Add("class", "pure-menu-selected");
        }
        protected void btnConTerapia_Click(object sender, EventArgs e)
        {
            limpiarSeleccionadoMenuBusquedaRapida();
            mtvBusquedaRapida.SetActiveView(viewPacientesConTerapia);
            liConTerapia.Attributes.Add("class", "pure-menu-selected");
        }
        protected void btnConSeguimiento_Click(object sender, EventArgs e)
        {
            limpiarSeleccionadoMenuBusquedaRapida();
            mtvBusquedaRapida.SetActiveView(viewPacientesConSeguimiento);
            liConSeguimiento.Attributes.Add("class", "pure-menu-selected");
        }
        protected void btnPacientesRecientes_Click(object sender, EventArgs e)
        {
            limpiarSeleccionadoMenuBusquedaRapida();
            mtvBusquedaRapida.SetActiveView(viewPacientesRecientes);
            liRecientes.Attributes.Add("class", "pure-menu-selected");
        }

        private void limpiarSeleccionadoMenuBusquedaRapida()
        {
            liRecientes.Attributes.Remove("class");
            liConCitometria.Attributes.Remove("class");
            liConMuestras.Attributes.Remove("class");
            liConTerapia.Attributes.Remove("class");
            liConSeguimiento.Attributes.Remove("class");
        }
        protected void dispararBusqueda(object sender, EventArgs e)
        {
            if (txtTerminoBusqueda.Text == "")
            {
                mtvPanelBusqueda.SetActiveView(viewBusquedaRapida);
            }
            else
            {
                mtvPanelBusqueda.SetActiveView(viewResultadosBusquedaHilera);
            }
        }

		protected void btnVolverBusqueda_Click(object sender, EventArgs e)
		{
			mtvPanelBusqueda.SetActiveView(viewBusquedaRapida);
		}
    }
}