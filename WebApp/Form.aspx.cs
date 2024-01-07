using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using dominio;


namespace WebApp
{
    public partial class Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Persona nuevo = new Persona();
            nuevo.Nombre = txtNombre.Text.ToString();
            nuevo.Apellido = txtApellido.Text.ToString();
            nuevo.Telefono = txtTelefono.Text.ToString();
            nuevo.Email= txtEmail.Text.ToString();
            nuevo.Direccion = txtDireccion.Text.ToString();
            nuevo.Provincia = txtProvincia.Text.ToString();
            nuevo.Ciudad = txtCiudad.Text.ToString();
            nuevo.CP = int.Parse(txtCP.Text.ToString());

            if (Session["Contactos"] != null)
                ((List<Persona>)Session["Contactos"]).Add(nuevo);
            else
            {
                List<Persona> contactos = new List<Persona>();
                contactos.Add(nuevo);
                Session.Add("Contactos", contactos);
            }
            Response.Redirect("Data.aspx");
        }
    }
}