<%@ Page Title="" Language="C#" MasterPageFile="~/Form/Site1.Master" AutoEventWireup="true" CodeBehind="Question.aspx.cs" Inherits="Nhom4.Form.Question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style>
		table, th, td{
    border:0;
    border-bottom: 1px solid #e6e6e6
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <asp:GridView ID="gv_question" runat="server" Width="852px" AutoGenerateColumns="False" CellPadding="7" >
        
            <Columns>
                
                <asp:TemplateField HeaderText="Topic">
                    <ItemTemplate>
                       <asp:Label runat="server"><a href="QuestionDetail.aspx?qid=<%# Eval("qid") %>"><%# Eval("Title") %></a></asp:Label><br /> 
                       <div>
                       <i class="fas fa-tags"></i>
                       <asp:Label runat="server"><a href="#"><%# Eval("Tag") %></a></asp:Label>
                       <asp:Label runat="server"><a href="#"><%# Eval("Tag1") %></a></asp:Label> 
                       <asp:Label runat="server"><a href="#"><%# Eval("Tag2") %></a></asp:Label>  
                       </div>
                    </ItemTemplate>    
                </asp:TemplateField>
               <asp:TemplateField HeaderText="Ten">
                    <ItemTemplate>
                       <asp:Label runat="server"><a href="Trang_ca_nhan.aspx"><%# Eval("Name") %></a></asp:Label> 
                    </ItemTemplate>    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Replies">
                    <ItemTemplate>
                        <asp:Label runat="server"><%# Eval("Replies") %></asp:Label> 
                    </ItemTemplate>    
                </asp:TemplateField>
                                <asp:TemplateField HeaderText="View">
                    <ItemTemplate>
                        <asp:Label runat="server"><%# Eval("viewcount") %></asp:Label> 
                    </ItemTemplate>    
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Activity">
                    <ItemTemplate>
                        <asp:Label runat="server"><%# Eval("Posttime") %></asp:Label>
                        
                    </ItemTemplate>    
                </asp:TemplateField>
             
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
