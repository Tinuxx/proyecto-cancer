using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paciente_EditarPaciente : System.Web.UI.Page
{
    protected string FechaIngreso { get; set; }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.PreviousPage != null)
        {
            Control contenedorPaginaPrevia = PreviousPage.Controls[0].FindControl("MainContent");
            TextBox controlPrevioCedula = (TextBox)contenedorPaginaPrevia.FindControl("txtCedula");
            TextBox controlPrevioNombre = (TextBox) contenedorPaginaPrevia.FindControl("txtNombre");
            TextBox controlPrevioEdad = (TextBox)contenedorPaginaPrevia.FindControl("txtEdad");
            RadioButton controlPrevioFemenino = (RadioButton)contenedorPaginaPrevia.FindControl("femenino");
            RadioButton controlPrevioMasculino = (RadioButton)contenedorPaginaPrevia.FindControl("femenino");
            TextBox controlPrevioFechaIngreso = (TextBox)contenedorPaginaPrevia.FindControl("txtFechaIngreso");

            if (controlPrevioNombre != null && controlPrevioCedula != null && controlPrevioEdad != null && controlPrevioFemenino != null && controlPrevioMasculino != null && controlPrevioFechaIngreso != null)
            {
                txtCedula.Text = controlPrevioCedula.Text;
                txtNombre.Text = controlPrevioNombre.Text;
                txtEdad.Text = controlPrevioEdad.Text;
                femenino.Checked = controlPrevioFemenino.Checked;
                masculino.Checked = controlPrevioMasculino.Checked;
                txtFechaIngreso.Text = controlPrevioFechaIngreso.Text;
            }
        }
    }
}