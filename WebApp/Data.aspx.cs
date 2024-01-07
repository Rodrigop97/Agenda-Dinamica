using System;
using System.Collections.Generic;
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
    }
}