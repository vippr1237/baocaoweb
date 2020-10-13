<%@ Page Title="" Language="C#" MasterPageFile="~/Form/Site1.Master" AutoEventWireup="true" CodeBehind="Dangbai.aspx.cs" Inherits="Nhom4.Form.Dangbai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
					<div class="container">
						<div class="container p-3 my-3 border">
							<h1>Vui lòng nhập thông tin câu hỏi của bạn</h1>
							<div class="form-group">
							  <label for="tiltle">Tiêu đề:</label>
							
							  <asp:TextBox runat="server" class="form-control" ID="title"></asp:TextBox>
							</div>
							<div class="form-group">
							  <label for="content">Nội dung:</label>
							  <asp:TextBox ID="body" TextMode="multiline" Columns="100" Rows="10" runat="server"  />
							</div>
							<div class="form-group">
							  <label for="Tag">Tag:</label>
							  <asp:TextBox runat="server" class="form-control" ID="tag"></asp:TextBox>
							</div>
							<div> <asp:Label ID="valid" CssClass="red"  runat="server" />

							</div>

							<asp:Button runat="server" Text="Đăng bài" ID="post_Btn"  class="btn btn-primary" OnClick="post_Btn_Click"/>
							<asp:Button runat="server" Text="Hủy" ID="cancel"  class="btn btn-outline-secondary"/>
                           
					</div>
					</div>
</asp:Content>
