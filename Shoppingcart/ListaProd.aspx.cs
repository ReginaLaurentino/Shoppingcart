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
     public List<Articulo> lista;
       
        protected void Page_Load(object sender, EventArgs e) {
            ConsultaPresentacion negocio = new ConsultaPresentacion();
            try
            {
               
                lista = negocio.Presentacion();

                Session.Add("listaprod", lista);
            }
            catch (Exception ex )
            {
                Response.Redirect("Error.aspx");
               
            }


        }
    }
}