<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="Nhom4.Form.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="Template/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Template/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/vendor/animsition/css/animsition.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="Template/vendor/daterangepicker/daterangepicker.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="Template/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="Template/css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
        <div>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
				<div class="login100-form validate-form">
					<span class="login100-form-title p-b-33">
						Account Login
					</span>

					<div class="wrap-input100 validate-input">
						<asp:TextBox CssClass="input100" ID="tk_btn" runat="server" name="email" placeholder="ID"></asp:TextBox>
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="Password is required">
						<asp:TextBox CssClass="input100" ID="mk_btn" type="password" name="pass" runat="server" placeholder="Password"></asp:TextBox>
						<span class="focus-input100-1"></span>
						<span class="focus-input100-2"></span>
					</div>

					<div class="container-login100-form-btn m-t-20">
						<asp:Button ID="btn_dn" class="login100-form-btn" runat="server" OnClick="btn_dn_Click" Text="Login"></asp:button>
					</div>



					<div class="text-center">
						<span class="txt1">
							Create an account?
						</span>

						<a href="Dangki.aspx" class="txt2 hov1">
							Sign up
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	
        </div>
    </form>
<!--===============================================================================================-->
	<script src="Template/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="Template/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="Template/vendor/bootstrap/js/popper.js"></script>
	<script src="Template/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="Template/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="Template/vendor/daterangepicker/moment.min.js"></script>
	<script src="Template/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="Template/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="Template/Template/js/main.js"></script>
</body>
</html>
