<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Shoppingcart.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi carrito</h1>
    <asp:Label ID="vacio" runat="server" Text=""></asp:Label>
  
<<<<<<< HEAD
    <%foreach ( Shoppingcart.Cart item in carrito)
                {%>
              
                          <h5> <%= item.Articulo.Nombre %></h5>
                
                          <p><%= item.Articulo.Precio %></p>
                          <p><%= item.Quantity%></p>
                         
=======
    <%foreach ( Dominio.Articulo item in carrito)
                {%>
              
                          <h5> <%= item.Nombre %></h5>
                          <p><%= item.Precio %></p>
>>>>>>> 464e9d32b369bfffbe5768b98ffef46e63381cd3
                         
           <%  } %>   
                     
</asp:Content>
