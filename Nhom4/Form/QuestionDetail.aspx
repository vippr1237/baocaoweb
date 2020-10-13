<%@ Page Title="" Language="C#" MasterPageFile="~/Form/Site1.Master" AutoEventWireup="true" CodeBehind="QuestionDetail.aspx.cs" Inherits="Nhom4.Form.QuestionDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  rel="stylesheet" type="text/css" href="Template/css/qd.css" />
        <style>
		table, th, td{
    border:0;
    border-bottom: 1px solid #e6e6e6
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
    <div class="question">
        <div class="head">
        <b style="font-size:40px"><%= title %></b>
        <div>
            <i class="fas fa-tags"></i>
            <a href="#"><%=Tag %></a>
            <a href="#"><%=Tag1 %></a>
            <a href="#"><%=Tag2 %></a>
        </div>
        </div>
        <div style="padding:5px"><a href="Trang_ca_nhan.aspx"><%= Name %></a>
        <div style="float:right"><%= Posttime %></div>
        </div>
        
         <div class="head" >
             <div><%= Body %></div>
             <div style="text-align:right"><i class="far fa-heart"><%= Likes %></i></div>
         </div>
        
    </div>
    <div>
        
        <asp:GridView ID="gvanswer" runat="server" Width="889px" AutoGenerateColumns="false">
            <HeaderStyle Font-Size="X-large"  />
            <Columns>
                <asp:TemplateField HeaderText="Trả Lời">
                    <ItemTemplate>
                        <div style="padding:5px"><a href="Trang_ca_nhan.aspx"><%# Eval("name") %></a>
                            <div style="float:right"><%# Eval("time") %></div>
                        </div>
        
                        <div >
                            <div style="padding:5px"><%# Eval("body")%> </div>
                            <div style="text-align:right"><i class="far fa-heart"><%# Eval("like") %></i></div>
                        </div>

                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
        <div>
        <h4>Đăng câu trả lời</h4>
        <asp:TextBox id="TextArea1" TextMode="multiline" Columns="75" Rows="10" runat="server" />
        <asp:Button runat="server" ID="post_Btn" Text="Đăng Câu Hỏi"/>
        </div>
    </div>
    
</asp:Content>
