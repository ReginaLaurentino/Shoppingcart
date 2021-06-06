using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shoppingcart
{
    public partial class WebForm6 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var estado = Request.QueryString["estado"];
            if(estado == "compro")
            {
                WebForm3 final = new WebForm3();
                final.limpiarlista();
            }
        }
    }
}