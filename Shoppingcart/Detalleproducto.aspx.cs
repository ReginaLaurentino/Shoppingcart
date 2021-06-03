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
        
        public static List<Cart> shoppingcart = new List<Cart>();
        int id = 0;
        int  cantidad = 0;
        
        Articulo seleccionado, aux;
        protected void Page_Load(object sender, EventArgs e)
        {
             id = int.Parse(Request.QueryString["id"]);
            List<Articulo> lista = (List<Articulo>)Session["listaprod"];
            seleccionado = lista.Find(x => x.ID == id);
            //seleccionado = lista.FirstOrDefault(x => x.Articulo.ID == id).Articulo;
            lblSeleccionado.Text = seleccionado.Nombre;
            lblDescripcion.Text = seleccionado.Descripcion;

            cantidad = Convert.ToInt32(txtCantidad.Text);

           aux = seleccionado;
            
        }


        protected void Agregar_Click(object sender, EventArgs e)
        {

            try
            {
                shoppingcart.Add(new Cart { Articulo = aux, Quantity = cantidad });
                Session.Add("listacarrito", shoppingcart);
                Response.Redirect("Carrito.aspx");
                
            }
            catch (Exception ex)
            {
              //  Response.Redirect("Error.aspx");

            }

           // WebForm3 Carro = new WebForm3();
           // Carro.Recibir_lista(id);

        }
    }


}