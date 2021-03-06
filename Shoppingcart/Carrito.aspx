<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="Shoppingcart.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1>Mi carrito<i class="fas fa-shopping-cart"></i></h1>


    <%if (carrito == null || carrito.Count() == 0)
        {   %>
    <center>
                     <img src="./carrito_vacio_nuevo.png" alt="Imagen no encontrada" text="align-center" />
                </center>


    <% }  %>
    <%else
        { %>
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

                            <%foreach (Shoppingcart.Cart item in carrito)
                                { %>

                            <tr>
                                <td>
                                    <p><%= item.Articulo.Nombre %></p>
                                </td>
                                <td><a href="Carrito.aspx?id=<%=item.Articulo.ID %>&evento=eliminar" onclick="modificar" class="float-left"><i class="fas fa-trash-alt"></i></a></td>
                                <td><a href="Carrito.aspx?id=<%=item.Articulo.ID %>&evento=menos" onclick="modificar" cssclass="AlineadoDerecha"><i class="fas fa-minus"></i></a></td>
                                <td>
                                    <p><%= item.Quantity %></p>
                                </td>
                                <td><a href="Carrito.aspx?id=<%=item.Articulo.ID %>&evento=sumar" onclick="modificar"><i class="fas fa-plus"></i></a></td>
                                <td>
                                    <p><%= item.subtotal.ToString("0.00") %></p>
                                </td>
                            </tr>

                            <%  } %>
                        </tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><strong>Total</strong></td>
                            <td>
                                <asp:Label Text="s" class="h3 py-2" ID="lblTotal" runat="server" />
                            </td>
                        </tr>

                        <tr>                            
                            <td><a href="ListaProd.aspx" class="btn btn-primary">Agregar mas productos</a></td>
                            <td><asp:Button Text="Vaciar carrito" CssClass="btn btn-primary" ID="Btnvaciar" OnClick="btnvaciar_carrito" runat="server" /></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><a href="Comprar.aspx" class="btn btn-primary">Finalizar comprar</a></td>
                        </tr>

                    </table>
                </div>
            </div>
        </div>
    </div>





    <% }  %>
</asp:Content>
