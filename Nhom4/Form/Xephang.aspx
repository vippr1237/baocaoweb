<%@ Page Title="" Language="C#" MasterPageFile="Site1.Master" AutoEventWireup="true" CodeBehind="Xephang.aspx.cs" Inherits="Nhom4.Form.Xephang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
					<div class="container">
						<h1>Bảng xếp hạng TOP người dùng dẫn đầu</h1>
						  <table class="table table-hover">
							<thead class="thead-dark">
							  <tr>
								<th>User</th>
								<th>Name</th>
								<th>Email</th>
								<th>Rank</th>
								<th>Reputation point</th>
							  </tr>
							</thead>
							<tbody>
							  <tr>
								<td>User1</td>
								<td>Doe</td>
								<td>john@example.com</td>
								<td>1</td>
								<td>1000</td>
							  </tr>
							  <tr>
								<td>User2</td>
								<td>Moe</td>
								<td>mary@example.com</td>
								<td>2</td>
								<td>999</td>
							  </tr>
							  <tr>
								<td>User3</td>
								<td>Dooley</td>
								<td>july@example.com</td>
								<td>3</td>
								<td>998</td>
							  </tr>
							</tbody>
						  </table>
					</div>
</asp:Content>
