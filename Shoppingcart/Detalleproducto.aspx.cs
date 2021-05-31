using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Negocio;

namespace Shoppingcart
{
    public partial class Detalleproducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = int.Parse(Request.QueryString["id"]);
            List<Articulo> lista = (List<Articulo>)Session["listaprod"];
            Articulo seleccionado = lista.Find(x => x.ID == id);

            lblSeleccionado.Text = seleccionado.Nombre;
            lblDescripcion.Text = seleccionado.Descripcion;
        }
    }
}