<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Detalleproducto.aspx.cs" Inherits="Shoppingcart.Detalleproducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                      <asp:Image class="card-img img-fluid"  alt="Imagen no disponible" onerror="this.src='./ind.jpeg';" id="imagen"  runat="server" />
                    </div>
                    <div class="row">
                        
              
                    </div>
                </div>
                <!-- col end -->
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <asp:label Text="a" class="h2" ID="lblnombre" runat="server" />
                            <br />
                            <asp:Label Text="s" class="h3 py-2" ID="lblprecio" runat="server"/>
                            <p class="py-2">
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-warning"></i>
                                <i class="fa fa-star text-secondary"></i>
                                
                            </p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h6>Marca:</h6>
                                </li>
                                <li class="list-inline-item">
                                    <asp:Label Text="s"  class="text-muted" ID="lblmarca" runat="server" />
                                </li>
                            </ul>

                            <h6>Descripcion:</h6>
                             <asp:Label Text="s"   ID="lbldescrip" runat="server" />
                          
                           <form action="" method="GET">
                                <input type="hidden" name="product-title" value="Activewear">
                               
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                     <a href="Comprar.aspx" class="btn btn-primary btn-lg">Comprar</a>
                                    </div>
                                    <div class="col d-grid">
                                     <asp:button type="submit" ID="Agregar" class="btn btn-primary btn-lg" name="submit" text="Agregar al carrito" OnClick="Agregar_Click" runat="server"></asp:button>
                                    </div>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
  
</asp:Content>
