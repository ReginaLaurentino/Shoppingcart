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
                if(carrito == null)
                {

                }
                carrito = (List<Cart>)Session["listacarrito"];
                
                decimal su= carrito.Sum(x => x.subtotal);
                //lblTotal.Text = Convert.ToString(su);

                //holis
                if (!IsPostBack)
                {
                    
                    //Repeater
                    repetidor.DataSource = carrito;
                    repetidor.DataBind();
                }

                



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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            
            var argument = ((Button)sender).CommandArgument;
            List<Cart> eliminado = (List<Cart>)Session["listacarrito"];
            Cart elim = eliminado.Find(x => x.Articulo.ID.ToString() == argument);
            eliminado.Remove(elim);
            Session.Add("listacarrito", eliminado);
            repetidor.DataSource = null;
            repetidor.DataSource = eliminado;
            repetidor.DataBind();

        }

        protected void btnAgregar_Click(object sender, EventArgs e)
        {

            var productid = ((Button)sender).CommandArgument;
            id = Convert.ToInt32(productid);
           
            foreach (Shoppingcart.Cart item in carrito)
            {
                if (item.Articulo.ID ==id)
                {
                    item.Quantity = cantidad;
                    Response.Redirect("Carrito.aspx");
                    
                }
            }


        }


    }
}