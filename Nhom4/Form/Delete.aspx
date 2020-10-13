<%@ Page Title="" Language="C#" MasterPageFile="~/Form/Site1.Master" AutoEventWireup="true" CodeBehind="Delete.aspx.cs" Inherits="Nhom4.Form.Delete" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1><asp:Label runat="server" ID="lb"></asp:Label></h1>
    <asp:Button ID="btn_del" Visible="false" Text="Xóa" runat="server" OnClick="btn_del_Click" />
    <asp:Button ID="btn_huy" Visible="true" Text="Quay Lại" runat="server" onclick="btn_huy_Click"/>
</asp:Content>
