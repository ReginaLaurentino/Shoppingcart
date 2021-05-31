﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Dominio {
    public class Articulo    {
        
        public string Codigo { get; set; }

        public string Nombre { get; set; }

        public string Descripcion { get; set; }

        public string UrlImagen { get; set; }

        public Marca Marcas { get; set; }

        public Categoria Categorias { get; set; }

        public decimal Precio { get; set; }

        public int ID { get; set; }

        public Articulo() {

        }


    }
}
