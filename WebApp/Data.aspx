<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="WebApp.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" id="gvContactos" 
                  CssClass="border-3 border-primary-subtle mt-3 table table-bordered caption-top" 
                  Caption="Lista de contactos" 
                  AutoGenerateColumns="false"
                  OnRowDeleting="gvContactos_RowDeleting" 
                  OnSelectedIndexChanged="gvContactos_SelectedIndexChanged" >
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Apellido" DataField="Apellido" />
            <asp:BoundField HeaderText="Telefono" DataField="Telefono" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="Direccion" DataField="Direccion" />
            <asp:BoundField HeaderText="Provincia" DataField="Provincia" />
            <asp:BoundField HeaderText="Ciudad" DataField="Ciudad" />
            <asp:BoundField HeaderText="Codigo postal" DataField="CP" />    
            <asp:CommandField ShowSelectButton="true" SelectText="Editar" />
            <asp:CommandField ShowDeleteButton="true" />
        </Columns>    
    </asp:GridView>
</asp:Content>
