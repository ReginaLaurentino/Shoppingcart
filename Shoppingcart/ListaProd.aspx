<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListaProd.aspx.cs" Inherits="Shoppingcart.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Tienda<i class="fas fa-store"></i></h1>

     
      <asp:TextBox ID="TextBoxSearch" runat="server" CssClass="text-search" Text=""  Width="370" />
      <asp:Button ID="ButtonSearch" runat="server" Class="btn btn-primary" Text="Buscar"  OnClick="ButtonSearch_Click" />
      <br />
       <br />

    <div class="container">
        <div class="row">
  <%if (listafiltrada.Count() == 0)  {   %>
          <%foreach (Dominio.Articulo item in lista) {%>
              <div class="col">
                  <div class="card" style="width: 18rem;">
                      <img src="<% = item.UrlImagen %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                      <div class ="card-body">
                          <h5 class ="card-title"> <%= item.Nombre %></h5>
                          <p class="card-text"><%= item.Precio.ToString("0.00") %></p>
                          <a href="Detalleproducto.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                      </div>
                  </div>
              </div>             
        <%  } %>

                    
 <% }  %>
    <%else{ %>
          
                 
                    <%foreach (Dominio.Articulo item in listafiltrada){%>

                            <%if (item.UrlImagen ==  "nothing-found.png")  {   %>   
                                            <center>
                                             <img src="<% = item.UrlImagen %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';" style="width:25em" />   
                                            </center>
                                  <%  } %>
                         <%else{ %>
                              <div class="col">
                                  <div class="card" style="width: 18rem;">
                                      <img src="<% = item.UrlImagen %>"" class="card-img-top" alt="Imagen no disponible" onerror="this.src='./ind.jpeg';"/>
                                      <div class ="card-body">
                                          <h5 class ="card-title"> <%= item.Nombre %></h5>
                                          <p class="card-text"><%= item.Precio.ToString("0.00") %></p>
                                          <a href="Detalleproducto.aspx?id=<%=item.ID %>" class="btn btn-primary">Ver detalle</a>
                                      </div>
                                  </div>
                              </div>             
                           <% }  %>
             <% }  %>
        
   <% }  %>
        </div>
    </div>
</asp:Content>
