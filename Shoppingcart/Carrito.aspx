<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Shoppingcart.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi carrito</h1>
     
      <table class="table">
        <tr>
            <td>Nombre</td>
            <td></td>
            <td>Cantidad</td>
            <td></td>
            <td>Total</td>
        </tr>

          
        <asp:Repeater runat="server" ID="repetidor">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("Articulo.Nombre")%></td>
                    <td>
                        
                     <asp:Button Text="Eliminar" CssClass="btn btn-primary"  ID="btnEliminar2" OnClick="btnEliminar_Click" CommandArgument='<%#Eval("Articulo.Id")%>' runat="server"  />

                    </td>
                    <td>
                        <asp:TextBox TextMode="Number" ID="sumar" runat="server" AutoPostBack="true" OnTextChanged="txtCantidad_TextChanged" />
                    </td>
                    <td>
                         <asp:Button Text="Agregar" CssClass="btn btn-primary" ID="Button1" OnClick="btnAgregar_Click" CommandArgument='<%#Eval("Articulo.Id")%>' runat="server" />
                    </td>
                    <td>                        
                        <%#Eval("subtotal")%>
                    </td>
                        <asp:Label  ID="lblproducid" style="display: none;" runat="server" Text=<%#Eval("Articulo.Id")%>></asp:Label>
                     
                </tr>

            </ItemTemplate>
        </asp:Repeater>
            
    </table>

    <div class="container">    
   

              
        <%foreach ( Shoppingcart.Cart item in carrito)
            { %>

             <div class="items">
                 <p><%= item.Articulo.Nombre %></p>
             </div>
            <div class="items">
                <p>Eliminar</p>
            </div>
            <div class="items">
                <p>Menos</p>
            </div>
            <div class="items">
                <p><%= item.Quantity %></p>
            </div>
            <div class="items">
                 <a href="Carrito.aspx?id=<%=item.Articulo.ID %>" ><i class="fas fa-plus"></i></a>
            </div>
            <div class="items">
                <p><%= item.subtotal %></p>
            </div>   

   
     
        <%  } %>


     </div>

       <%if (carrito == null || carrito.Count()==0 ) {   %> 
                <center>
                     <img src="./carrito_vacio_nuevo.png" alt="Imagen no encontrada" text="align-center" />
                </center>
                  
           
        <% }  %>
        <%else{ %>
        <asp:Button Text="Vaciar carrito" CssClass="btn btn-primary" ID="Btnvaciar" OnClick="btnvaciar_carrito"  runat="server" />
        <% }  %>


                     
</asp:Content>
