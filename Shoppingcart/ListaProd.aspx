<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProd.aspx.cs" Inherits="Shoppingcart.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Productos</h1>
    <div class="container">
        <div class="row">
            <%foreach ( Dominio.Articulo item in lista)
                {%>
              <div class="col">
                  <div class="card" style="width: 18rem;">
                      <img src="<% = item.UrlImagen %>"" class="card-img-top" alt="...">
                      <div class ="card-body">
                          <h5 class ="card-title"> <%= item.Nombre %></h5>
                          <p class="card-text"><%= item.Precio %></p>
                          <a href="Detalleproducto.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                      </div>
                  </div>
              </div>             
           <%  } %>
        </div>
    </div>
</asp:Content>
