using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class paciente_muestra_ProcesamientoMuestra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Button ctlBtnAceptar, ctlBtnCancelar;
        ContentPlaceHolder mp = (ContentPlaceHolder)Master.FindControl("MainContent");
        if (mp != null)
        {
            ctlBtnAceptar = (Button) mp.FindControl("btnAceptar");
            ctlBtnCancelar= (Button) mp.FindControl("btnCancelar");
            if (ctlBtnAceptar != null && ctlBtnCancelar != null)
            {
                ctlBtnAceptar.Click += new System.EventHandler(this.btnAceptar_click);
                ctlBtnCancelar.Click += new System.EventHandler(this.bntCancelar_click);
            }
        }
    }

    protected void btnAceptar_click(object sender, EventArgs e)
    {

    }

    protected void bntCancelar_click(object sender, EventArgs e)
    {

    }
}