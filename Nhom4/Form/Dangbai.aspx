<%@ Page Title="" Language="C#" MasterPageFile="~/Form/Site1.Master" AutoEventWireup="true" CodeBehind="Dangbai.aspx.cs" Inherits="Nhom4.Form.Dangbai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
					<div class="container">
						<div class="container p-3 my-3 border">
							<h1>Vui lòng nhập thông tin câu hỏi của bạn</h1>
							<div class="form-group">
							  <label for="tiltle">Tiêu đề:</label>
							  <input type="text" class="form-control" id="tiltle">
							</div>
							<div class="form-group">
							  <label for="content">Nội dung:</label>
							  <textarea class="form-control" rows="5" id="content"></textarea>
							</div>
							<div class="form-group">
							  <label for="Tag">Tag:</label>
							  <input type="text" class="form-control" id="Tag">
							</div>
						<button type="submit" class="btn btn-primary">Đăng bài</button>
						<button type="submit" class="btn btn-outline-secondary">Hủy</button>
					</div>
					</div>
</asp:Content>
