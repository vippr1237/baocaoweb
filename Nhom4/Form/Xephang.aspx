<%@ Page Title="" Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="Xephang.aspx.cs" Inherits="Nhom4.Form.Xephang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1"  runat="server">
    <asp:GridView runat="server" ID="gv_xh" Width="879px" AutoGenerateColumns="false">
        <Columns>
            <asp:TemplateField HeaderText="Ten">
                <ItemTemplate>
                    <%# Eval("name")%>

                </ItemTemplate>
                
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Diem">
                <ItemTemplate>
                    <%# Eval("diem")%>

                </ItemTemplate>
                
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>
