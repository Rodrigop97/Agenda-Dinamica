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
            if (Request.QueryString["index"] != null && !IsPostBack)
            {
                int index = int.Parse(Request.QueryString["index"]);
                Persona selected = ((List<Persona>)Session["Contactos"])[index];
                txtNombre.Text = selected.Nombre;
                txtApellido.Text = selected.Apellido;
                txtTelefono.Text = selected.Telefono;
                txtEmail.Text = selected.Email;
                txtDireccion.Text = selected.Direccion;
                txtProvincia.Text = selected.Provincia;
                txtCiudad.Text = selected.Ciudad;
                txtCP.Text = selected.CP.ToString();
            }
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {
            Persona contacto;
            if (Request.QueryString["index"] != null)
            {
                int index = int.Parse(Request.QueryString["index"]);
                contacto = ((List<Persona>)Session["Contactos"])[index];
            }
            else
                contacto = new Persona();
            contacto.Nombre = txtNombre.Text.ToString();
            contacto.Apellido = txtApellido.Text.ToString();
            contacto.Telefono = txtTelefono.Text.ToString();
            contacto.Email= txtEmail.Text.ToString();
            contacto.Direccion = txtDireccion.Text.ToString();
            contacto.Provincia = txtProvincia.Text.ToString();
            contacto.Ciudad = txtCiudad.Text.ToString();
            contacto.CP = int.Parse(txtCP.Text.ToString());

            if (Request.QueryString["index"] != null)
                Response.Redirect("Data.aspx");
            if (Session["Contactos"] != null)
                ((List<Persona>)Session["Contactos"]).Add(contacto);
            else
            {
                List<Persona> contactos = new List<Persona>();
                contactos.Add(contacto);
                Session.Add("Contactos", contactos);
            }
            Response.Redirect("Data.aspx");
        }
    }
}