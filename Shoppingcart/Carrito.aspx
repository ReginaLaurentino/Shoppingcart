<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Shoppingcart.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi carrito</h1>
     
      <table class="table">
        <tr>
            <td>Nombre</td>
            <td>Acción</td>
            <td>Cantidad</td>
            <td>Agregar</td>
            <td>Total</td>
        </tr>

          
        <asp:Repeater runat="server" ID="repetidor">
            <ItemTemplate>
                <tr>
                    <td><%#Eval("Articulo.Nombre")%></td>
                    <td>
                        <%--<asp:Button ID="btnEliminar" CssClass="btn btn-primary" Text="Eliminar" CommandArgument='<%#Eval("Id")%>' CommandName="idPokemon" runat="server" OnClick="btnEliminar_Click" />--%>
                        <asp:Button Text="Eliminar" CssClass="btn btn-primary" ID="btnEliminar2" OnClick="btnEliminar_Click" CommandArgument='<%#Eval("Articulo.Id")%>' runat="server" />
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

       <%if (carrito == null) {   %> 
                <center>
                     <img src="./carrito_vacio_nuevo.png" alt="Imagen no encontrada" text="align-center" />
                </center>
                  
           
               <% }  %>




                     
</asp:Content>
