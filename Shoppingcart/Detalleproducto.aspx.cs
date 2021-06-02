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
        public List<Articulo> listadecarrito = new List<Articulo>();
        int id = 0;
        Articulo seleccionado;
        protected void Page_Load(object sender, EventArgs e)
        {
             id = int.Parse(Request.QueryString["id"]);
            List<Articulo> lista = (List<Articulo>)Session["listaprod"];
            seleccionado = lista.Find(x => x.ID == id);

            lblSeleccionado.Text = seleccionado.Nombre;
            lblDescripcion.Text = seleccionado.Descripcion;
        }

        protected void Agregar_Click(object sender, EventArgs e)
        {

            try
            {
                listadecarrito.Add(seleccionado);
                Session.Add("listacarrito", listadecarrito);
                Response.Redirect("Carrito.aspx");
                //La lista carga siempre en la posicion [0] VER!!!
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");

            }

           // WebForm3 Carro = new WebForm3();
           // Carro.Recibir_lista(id);

        }
    }


}