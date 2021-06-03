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
<<<<<<< HEAD
        
        public static List<Cart> shoppingcart = new List<Cart>();
        int id = 0;
        int  cantidad = 0;
        
        Articulo seleccionado, aux;
=======
        public List<Articulo> listadecarrito = new List<Articulo>();
        int id = 0;
        Articulo seleccionado;
>>>>>>> 464e9d32b369bfffbe5768b98ffef46e63381cd3
        protected void Page_Load(object sender, EventArgs e)
        {
             id = int.Parse(Request.QueryString["id"]);
            List<Articulo> lista = (List<Articulo>)Session["listaprod"];
            seleccionado = lista.Find(x => x.ID == id);
<<<<<<< HEAD
            //seleccionado = lista.FirstOrDefault(x => x.Articulo.ID == id).Articulo;
=======

>>>>>>> 464e9d32b369bfffbe5768b98ffef46e63381cd3
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