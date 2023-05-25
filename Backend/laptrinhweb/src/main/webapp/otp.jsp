<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Verify OTP</title>
    <link rel="stylesheet" href="static/css/otp.css">
    <script src="static/js/otp.js"></script>
</head>
<body>
    <div class="container">
        <div class="content">
            <div class="otp-head">
                <h3>Enter OTP</h3>
            </div>
            <div class="otp-message">
                <p>We have sent OTP to your email. Please verify. 
                </p>
            </div>
            <div class="enter-otp">
                <form action="ValidateOTP" method="post">
                	<div class="validate-otp" style="color:red;">
                        <% String a = (String) request.getAttribute("validate");
                            if(a==null){a="";}
                        %>
                        <%=a %>
                    </div>
                    <div class="userInput">
                        <input type="text" id='first' name="first" maxlength="1" onkeyup="moveToNext(this,'second')">
                        <input type="text" id="second" name="second" maxlength="1" onkeyup="moveToNext(this,'third')">
                        <input type="text" id="third" name="third" maxlength="1" onkeyup="moveToNext(this,'fourth')">
                        <input type="text" id="fourth" name="fourth" maxlength="1" onkeyup="moveToNext(this,'fifth')">
                        <input type="text" id="fifth" name="fifth" maxlength="1" onkeyup="moveToNext(this, 'sixth')">
                        <input type="text" id="sixth" name="sixth" maxlength="1">
                    </div>
                    <button type ="submit">Verify</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>