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
        int cantidad = 1, id=0;

        //public List<Articulo> lista;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            try
            {
                

                if (carrito == null)
                {

                }
                carrito = (List<Cart>)Session["listacarrito"];
                
                decimal su= carrito.Sum(x => x.subtotal);
               lblTotal.Text = Convert.ToString(su);

                //holis
               

                var pid = (Request.QueryString["id"]);
                var evento = Request.QueryString["evento"];
              id = Convert.ToInt32(pid);

                if (evento == "sumar") modificar(id);
                if (evento == "menos") restar(id);
                if (evento == "eliminar") Eliminar(id);



            }
            catch (Exception)
            {
               // vacio.Text = "El carrito esta vacio";

            }
        }
        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
           var cantidades =  ((TextBox)sender).Text;
           cantidad = Convert.ToInt32(cantidades);   
            
        }

        protected void Eliminar(int id)
        {
           
            List<Cart> eliminado = (List<Cart>)Session["listacarrito"];
            Cart elim = eliminado.Find(x => x.Articulo.ID == id);
            eliminado.Remove(elim);
            Session.Add("listacarrito", eliminado);
           
        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {


        }

        protected void btnvaciar_carrito(object sender, EventArgs e)
        {
            carrito.Clear();
            Response.Redirect("Carrito.aspx");
        }

        protected void modificar(int id)
        {
            var reemplazo = new Cart { };
            foreach (Shoppingcart.Cart item in carrito)
            {
                if (item.Articulo.ID == id)
                {
                    reemplazo.Articulo = item.Articulo;
                    reemplazo.Quantity =item.Quantity+1;
                    reemplazo.subtotal = (reemplazo.Quantity* item.Articulo.Precio);
                    
                }
            }
            var eindex = carrito.FindIndex(i => i.Articulo.ID == reemplazo.Articulo.ID);
          
            carrito[eindex] = reemplazo;
            Response.Redirect("Carrito.aspx");


        }

        protected void restar(int id)
        {
            var reemplazo = new Cart { };
            foreach (Shoppingcart.Cart item in carrito)
            {
                if (item.Articulo.ID == id)
                {
                    reemplazo.Articulo = item.Articulo;
                    reemplazo.Quantity = item.Quantity -1;
                    if (reemplazo.Quantity <= 1) reemplazo.Quantity = 1; 
                    reemplazo.subtotal = (reemplazo.Quantity * item.Articulo.Precio);

                }
            }
            var eindex = carrito.FindIndex(i => i.Articulo.ID == reemplazo.Articulo.ID);

            carrito[eindex] = reemplazo;
            Response.Redirect("Carrito.aspx");


        }
    }
}