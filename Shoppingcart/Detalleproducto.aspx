<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalleproducto.aspx.cs" Inherits="Shoppingcart.Detalleproducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Producto</h1>
    <asp:Label Text="a" ID="lblSeleccionado" runat="server" />
    <asp:Label Text="s" ID="lblDescripcion" runat="server" />
      <label for="quantity"> Cantidad</label>   
    <asp:TextBox TextMode="Number" ID="txtCantidad"  type="number" runat="server" min="1" max="20" step="1" Text="0"/>
      

    <asp:Button ID="Agregar" runat="server" Text="Agregar al carrito" OnClick="Agregar_Click" />

   

</asp:Content>
