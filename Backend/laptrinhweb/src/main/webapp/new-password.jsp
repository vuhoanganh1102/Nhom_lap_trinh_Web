
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đổi mật khẩu</title>
    <link rel="stylesheet" href="static/css/new-password.css">
</head>
<body>
<div class="new-password">
        <div class="new-password-container">
            <div class="new-password-text">
                <h3>Thay đổi mật khẩu</h3>
                <p>Nhập mật khẩu mới</p>
            </div>
            <div class="form">
                <form name="signupForm" id="newPasswordForm" action="newPassword" method="post">
                    <div class="">
                        <label for="password" class="new-password-label">Mật khẩu <span
                                class="required">*</span></label><br>
                        <input type="password" id="password" name="password" class="new-password-input"
                            placeholder="Mật khẩu" required>
                    </div>
                    <div class="">
                        <label for="re-password" class="new-password-label">Xác nhận mật khẩu <span
                                class="required">*</span></label><br>
                        <input type="password" id="re-password" name="re-password" class="new-password-input"
                            placeholder="Xác nhận mật khẩu" required>
                    </div>
                    <div class="btn">
                        <div class="btn-submit">
                            <button type="submit" id="submitButton"
                                onclick="validateSignupForm()">Đổi mật khẩu</button>
                        </div>
                        <div class="btn-cancel">
                            <a href="login.jsp" class="cancel">Hủy</a>
                        </div>

                    </div>
                </form>
            </div>

        </div>
    </div>
<script src="static/js/newPassword.js"></script>
</body>
</html>
