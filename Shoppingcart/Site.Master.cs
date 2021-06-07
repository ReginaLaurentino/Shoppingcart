using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shoppingcart
{
    public partial class SiteMaster : MasterPage
    {
        WebForm3 sum = new WebForm3();
        protected void Page_Load(object sender, EventArgs e)
        {
            int aux1 = sum.sumacarrito();
            var aux2 = aux1.ToString();
            lblsuma.Text = aux2;
        }
    }
}