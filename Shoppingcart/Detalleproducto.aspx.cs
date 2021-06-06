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
        int cantidad = 1;

        Articulo seleccionado, aux;
        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request.QueryString["id"]);
            List<Articulo> lista = (List<Articulo>)Session["listaprod"];
            seleccionado = lista.Find(x => x.ID == id);
            //seleccionado = lista.FirstOrDefault(x => x.Articulo.ID == id).Articulo;

            imagen.ImageUrl = seleccionado.UrlImagen;
            lblnombre.Text = seleccionado.Nombre;
            lblprecio.Text = seleccionado.Precio.ToString("0.00");
            lblmarca.Text = seleccionado.Marcas.Nombre;
            lbldescrip.Text = seleccionado.Descripcion;

            //cantidad = Convert.ToInt32(txtCantidad.Text);

            aux = seleccionado;

        }


        protected void Agregar_Click(object sender, EventArgs e)
        {
                bool encontro = false;
                var reemplazo = new Cart { };
                foreach (Shoppingcart.Cart item in shoppingcart)
                {
                    if (item.Articulo.ID == id)
                    {
                        encontro = true;
                        reemplazo.Articulo = item.Articulo;
                        reemplazo.Quantity = item.Quantity + 1;
                        reemplazo.subtotal = (reemplazo.Quantity * item.Articulo.Precio);

                    }
                }
             

                if (encontro==false)
                {
                shoppingcart.Add(new Cart { Articulo = aux, Quantity = cantidad, subtotal = aux.Precio * cantidad });
                Session.Add("listacarrito", shoppingcart);
                Response.Redirect("Carrito.aspx");
                }
                else
                {
                var eindex = shoppingcart.FindIndex(i => i.Articulo.ID == reemplazo.Articulo.ID);

                shoppingcart[eindex] = reemplazo;
                Response.Redirect("Carrito.aspx");
                }


        }

    }

}