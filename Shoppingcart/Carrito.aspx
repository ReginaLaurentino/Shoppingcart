<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Shoppingcart.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi carrito</h1>

   
       <%if (carrito == null || carrito.Count()==0 ) {   %> 
                <center>
                     <img src="./carrito_vacio_nuevo.png" alt="Imagen no encontrada" text="align-center" />
                </center>
                  
           
        <% }  %>
        <%else{ %>
    <div class="container mb-4">
    <div class="row">
        <div class="col-12">
            <div class="table-responsive">  
      <table class="table table-striped">
          <thead>
        <tr>
            <td>Nombre</td>
            <td></td>
            <td></td>
            <td>Cantidad</td>
            <td></td>
            <td>Total</td>
            
       </tr>   
          </thead>  
  


        <tbody>
              
        <%foreach ( Shoppingcart.Cart item in carrito)
            { %>

      <tr> 
              <td>  <p><%= item.Articulo.Nombre %></p>  </td>  
                  
              <td> <a href="Carrito.aspx?id=<%=item.Articulo.ID %>&evento=eliminar" onclick="modificar" class="float-left" ><i class="fas fa-trash-alt"></i></a> </td>  
         
              <td>     <a href="Carrito.aspx?id=<%=item.Articulo.ID %>&evento=menos" onclick="modificar" CssClass="AlineadoDerecha"><i class="fas fa-minus"></i></a>  </td>  
          
              <td>     <p><%= item.Quantity %></p>   </td>  
              <td>    <a href="Carrito.aspx?id=<%=item.Articulo.ID %>&evento=sumar" onclick="modificar" ><i class="fas fa-plus"></i></a>  </td>  
             <td>      <p><%= item.subtotal %></p>  </td>  
                    
    </tr>
     
        <%  } %>
          </tbody>
          <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                         <td>  <asp:Label Text="s" class="h3 py-2" ID="lblTotal" runat="server"/> </td> 
                        </tr>

       </table>
</div>
            </div>
        </div>
    </div>




        <asp:Button Text="Vaciar carrito" CssClass="btn btn-primary" ID="Btnvaciar" OnClick="btnvaciar_carrito"  runat="server" />
        <% }  %>
   
   
                     
</asp:Content>
