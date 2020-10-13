<%@ Page Title="" Language="C#" MasterPageFile="~/Form/Site1.Master" AutoEventWireup="true" CodeBehind="QuestionDetail.aspx.cs" Inherits="Nhom4.Form.QuestionDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link  rel="stylesheet" type="text/css" href="Template/css/qd.css" />
        <style>
		table, th, td{
    border:0;
    border-bottom: 1px solid #e6e6e6
    
}
        .red{
            color:red;
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
                            <button><a href="Delete.aspx?id=<%# Eval("userid") %>&ans=<%# Eval("ansid") %>">Xóa</a></button>
                        </div>
                        
                    </ItemTemplate>

                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        </div>
        <div>
        <h4>Đăng câu trả lời</h4>
        <div>
        <asp:Label ID="valid_lb" runat="server" CssClass="red"></asp:Label>
        </div>
        <asp:TextBox id="ansbody" TextMode="multiline" Columns="75" Rows="10" runat="server"  />
        <asp:Button runat="server" ID="post_Btn" Text="Đăng Câu Trả Lời" OnClick="Post_Answer"/>
        
        </div>
    </div>
    
    
</asp:Content>
