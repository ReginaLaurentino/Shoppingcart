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
    public partial class WebForm3 : System.Web.UI.Page
    {

        public List<Articulo> carrito;
        //public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                carrito = (List<Articulo>)Session["listacarrito"];

            }
            catch (Exception)
            {
                vacio.Text = "El carrito esta vacio";

            }
        }
      /*  public void Recibir_lista( int id)
        {
            try {
                ConsultaPresentacion negocio = new ConsultaPresentacion();
                lista = negocio.Presentacion();            
                Articulo seleccionado = lista.Find(x => x.ID == id);
                listadecarrito.Add(seleccionado);
               

            }
            catch (Exception)
            {
                Response.Redirect("Error.aspx");

            }
        }*/
    }
}