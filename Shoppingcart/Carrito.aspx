<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Shoppingcart.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi carrito</h1>
    <asp:Label ID="vacio" runat="server" Text=""></asp:Label>
  
    <%foreach ( Shoppingcart.Cart item in carrito)
                {%>
              
                          <h5> <%= item.Articulo.Nombre %></h5>
                
                          <p><%= item.Articulo.Precio %></p>

                          <asp:TextBox TextMode="Number" ID="suma" type="number" runat="server" min="1" max="20" step="1" Text=<%= item.Quantity%>/>
                          <p><%= item.Quantity%></p>
                          <p><%= item.subtotal %></p>
                         
                         
           <%  } %>   
          <asp:Label ID="lblTotal" runat="server" Text=""></asp:Label>
                     
</asp:Content>
