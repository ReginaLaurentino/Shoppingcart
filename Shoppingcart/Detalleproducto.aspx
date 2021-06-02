<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalleproducto.aspx.cs" Inherits="Shoppingcart.Detalleproducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<h1>Producto</h1>
    <asp:Label Text="a" ID="lblSeleccionado" runat="server" />
    <asp:Label Text="s" ID="lblDescripcion" runat="server" />

    <asp:Button ID="Agregar" runat="server" Text="Agregar al carrito" OnClick="Agregar_Click" />

   

</asp:Content>
