using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Dominio;

namespace Shoppingcart
{
    public class Cart
    {
        public Articulo Articulo { get; set; } 
        public int Quantity { get; set; } 

        public decimal subtotal { get; set; }
        
    }
}