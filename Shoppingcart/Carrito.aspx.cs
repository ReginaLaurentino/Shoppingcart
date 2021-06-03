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

<<<<<<< HEAD
        public static List<Cart> carrito;
        
=======
        public List<Articulo> carrito;
>>>>>>> 464e9d32b369bfffbe5768b98ffef46e63381cd3
        //public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
<<<<<<< HEAD
                carrito = (List<Cart>)Session["listacarrito"];
                
=======
                carrito = (List<Articulo>)Session["listacarrito"];
>>>>>>> 464e9d32b369bfffbe5768b98ffef46e63381cd3

            }
            catch (Exception)
            {
                vacio.Text = "El carrito esta vacio";

            }
        }
<<<<<<< HEAD
     
=======
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
>>>>>>> 464e9d32b369bfffbe5768b98ffef46e63381cd3
    }
}