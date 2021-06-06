<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Comprar.aspx.cs" Inherits="Shoppingcart.WebForm5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <form>

    <div class="form-group"> 
        <label for="nombre" class="control-label">Nombre</label>
        <input type="text" class="form-control" id="nombre" name="full_name" placeholder="Maxi">
    </div>    
    <div class="form-group"> 
        <label for="apellido" class="control-label">Apellido</label>
        <input type="text" class="form-control" id="apellido" name="full_name" placeholder="Sar Fernandez">
    </div>    

    <div class="form-group"> 
        <label for="calle1" class="control-label">Calle</label>
        <input type="text" class="form-control" id="calle1" name="street1" placeholder="Hipolito Yrigoyen">
    </div>                    
                            
    <div class="form-group">
        <label for="calle2" class="control-label">Numero</label>
        <input type="text" class="form-control" id="calle2" name="calle2" placeholder="288">
    </div>    

    <div class="form-group"> 
        <label for="ciudad" class="control-label">City</label>
        <input type="text" class="form-control" id="ciudad" name="city" placeholder="General Pacheco">
    </div>                                    
                            
    <div class="form-group"> 
        <label for="provincia" class="control-label">State</label>
        <select class="form-control" id="provincia">
            <option value="BUE">Buenos Aires</option>
            <option value="CABA">Capital Federal</option>
            <option value="CAT">Catamarca</option>
            <option value="CHA">Chaco</option>
            <option value="CHU">Chubut</option>
            <option value="CBA">Córdoba</option>
            <option value="COR">Corrientes</option>
            <option value="ER">Entre Ríos</option>
            <option value="FOR">Formosa</option>
            <option value="JJY">Jujuy</option>
            <option value="LP">La Pampa</option>
            <option value="LR">La Rioja</option>
            <option value="MDZ">Mendoza</option>
            <option value="MSN">Misiones</option>
            <option value="NQN">Neuquén</option>
            <option value="RN">Río Negro</option>
            <option value="SLT">Salta</option>
            <option value="SJ">San Juan</option>
            <option value="SL">San Luis</option>
            <option value="SC">Santa Cruz</option>
            <option value="SF">Santa Fe</option>
            <option value="SDE">Santiago del Estero</option>
            <option value="TDF">Tierra del Fuego</option>
            <option value="TUC">Tucumán</option>
            
        </select>                    
    </div>
    
    <div class="form-group"> 
        <label for="cp" class="control-label">Codigo Postal</label>
        <input type="text" class="form-control" id="cp" name="CP" placeholder="#####">
    </div>        
    <br /><br />
    <div class="form-group"> 
        <a href="Final.aspx" class="btn btn-primary">Comprar!</a>
    </div>     
    
</form>

</asp:Content>
