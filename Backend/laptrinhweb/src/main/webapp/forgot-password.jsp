<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" href="static/css/forgot-password.css">
<meta charset="ISO-8859-1">
<title>Lấy lại mật khẩu</title>
</head>
<body>
	<div class="forgot-password">
        <div class="forgot-password-header">
            <h1>đăng nhập tài khoản</h1>
            <p>Bạn chưa có tài khoản ?<a href="sign-up.jsp" class="btn__login">Đăng kí tại đây</a></p>
        </div>
        <div class="forgot-password-container">
            <div class="forgot-password-text">
                <h3>đặt lại mật khẩu</h3>
                <p>Chúng tôi sẽ gửi cho bạn một email để kích hoạt việc đặt lại mật khẩu.</p>
            </div>
            <form action="forgot-password" method="post" class="forgot-password-form">
                <div class="">
                    <input type="text" name ="email" class="forgot-password-input" placeholder="Email" required>
                </div>
                <div class="">
                    <button class="btn-submit">Lấy lại mật khẩu</button>
                </div>               
            </form>
            <div class="btn-before">
                <div>
                    <a href="login.jsp" class="before">Quay lại</a>
                </div>
                
            </div>
            <div>
                <p class="login__another">Hoặc đăng nhập bằng</p>

            </div>

            <div>
                <div class="login__button-another">
                    <button class="login__google">
                        <i class="fa-brands fa-google-plus-g icon-google"></i>
                        <span>Đăng nhập Google</span>
                    </button>
                    <button class="login__facebook">
                        <i class="fa-brands fa-facebook-f icon-facebook"></i>
                        <span>Đăng nhập Facebook</span>
                    </button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>