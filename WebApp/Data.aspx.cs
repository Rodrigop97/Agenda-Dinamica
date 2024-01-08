using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using dominio;

namespace WebApp
{
    public partial class Data : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Contactos"] != null) { 
                gvContactos.DataSource = (List<Persona>)Session["Contactos"];
                gvContactos.DataBind();

            }
        }

        protected void gvContactos_SelectedIndexChanged(object sender, EventArgs e)
        {
            Response.Redirect("Form.aspx?index=" + gvContactos.SelectedIndex);   
        }

        protected void gvContactos_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            List<Persona> lista = (List<Persona>)Session["Contactos"];
            Persona seleccionado = lista[e.RowIndex];
            ((List<Persona>)Session["Contactos"]).Remove(seleccionado);
            gvContactos.DataSource = Session["Contactos"];
            gvContactos.DataBind();
        }
    }
}