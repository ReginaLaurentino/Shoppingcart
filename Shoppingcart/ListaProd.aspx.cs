using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;
using Dominio;

namespace Shoppingcart
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        public List<Articulo> lista = new List<Articulo>();
        public List<Articulo> listafiltrada = new List<Articulo>();

        protected void Page_Load(object sender, EventArgs e) {
            ConsultaPresentacion negocio = new ConsultaPresentacion();

            try
            {

                lista = negocio.Presentacion();
                Session.Add("listaprod", lista);
              
            }
            catch (Exception ex)
            {
                Response.Redirect("Error.aspx");

            }


        }
        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
             
            if (TextBoxSearch.Text != "")
            {
                listafiltrada = lista.FindAll(x => x.Nombre.ToUpper().Contains(TextBoxSearch.Text.ToUpper()) ||
                                                x.Descripcion.ToUpper().Contains(TextBoxSearch.Text.ToUpper()) ||
                                                x.Categorias.Nombre.ToUpper().Contains(TextBoxSearch.Text.ToUpper()) ||
                                                x.Marcas.Nombre.ToUpper().Contains(TextBoxSearch.Text.ToUpper()) ||
                                                x.Codigo.ToUpper().Contains(TextBoxSearch.Text.ToUpper()));
                if (listafiltrada.Count() == 0)
                {
                    listafiltrada.Add(new Articulo { UrlImagen = "nothing-found.png" });
                }


            }

        }

    }

}
