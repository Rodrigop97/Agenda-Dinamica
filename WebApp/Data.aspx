<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="WebApp.Data" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView runat="server" id="gvContactos" CssClass="border-3 border-primary-subtle mt-3 table table-bordered caption-top" Caption="Lista de contactos">
    
    </asp:GridView>
</asp:Content>
