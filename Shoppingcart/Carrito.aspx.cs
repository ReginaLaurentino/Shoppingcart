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

        public static List<Cart> carrito;
        
        //public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                carrito = (List<Cart>)Session["listacarrito"];
                
                decimal su= carrito.Sum(x => x.subtotal);
                lblTotal.Text = Convert.ToString(su);
                //holis

            }
            catch (Exception)
            {
                vacio.Text = "El carrito esta vacio";

            }
        }
     
    }
}