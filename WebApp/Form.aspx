<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Form.aspx.cs" Inherits="WebApp.Form" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row mt-3">
        <h2 class="col align-self-start">Nuevo contacto</h2>
    </div>
    <div class="row">
        <div class="col-md-12">
            <label for="txtNombre" class="form-label">Nombre</label>
            <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
        </div>
        <div class="col-md-12">
            <label for="txtApellido" class="form-label">Apellido</label>
            <asp:TextBox runat="server" ID="txtApellido" CssClass="form-control" />
        </div>
        <div class="col-12">
            <label for="txtTelefono" class="form-label">Telefono</label>
            <asp:TextBox runat="server" ID="txtTelefono" CssClass="form-control" type="numeric" />
        </div>
        <div class="col-md-12">
            <label for="txtEmail" class="form-label">Email</label>
            <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" type="Email" />
        </div>
        <div class="col-12">
            <label for="txtDireccion" class="form-label">Direccion</label>
            <asp:TextBox runat="server" class="form-control" ID="txtDireccion" />
        </div>
        <div class="col-md-5">
            <label for="txtCiudad" class="form-label">Ciudad</label>
            <asp:TextBox runat="server" ID="txtCiudad" CssClass="form-control" />
        </div>
        <div class="col-md-5">
            <label for="txtProvincia" class="form-label">Provincia</label>
            <asp:TextBox runat="server" ID="txtProvincia" CssClass="form-control" />
        </div>
        <div class="col-md-2">
            <label for="txtCP" class="form-label">CP</label>
            <asp:TextBox runat="server" ID="txtCP" CssClass="form-control" />
        </div>
        <div class="col-12">
            <%--<div class="form-check">
            <input class="form-check-input" type="checkbox" id="gridCheck">
            <label class="form-check-label" for="gridCheck">
                Check me out
            </label>
        </div>--%>
        </div>
        <div class="col-12 mt-3">
            <% if (Request.QueryString["index"] != null)
                {
            %>
            <asp:Button Text="Guardar" OnClick="Agregar_Click" runat="server" CssClass="btn btn-primary" />
            <%}
                else
                {
            %>
            <asp:Button Text="Agregar" OnClick="Agregar_Click" runat="server" CssClass="btn btn-primary" />
            <%} %>
            <a href="Data.aspx">Cancelar</a>

        </div>
    </div>
</asp:Content>
