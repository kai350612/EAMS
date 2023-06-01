<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>注册页面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .register-container {
            margin: 100px auto;
            width: 400px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,.2);
            padding: 20px;
            box-sizing: border-box;
        }
        h1 {
            text-align: center;
            font-size: 36px;
            color: #666;
            margin-bottom: 30px;
        }
        input[type="text"], input[type="password"] {
            border: none;
            outline: none;
            width: 100%;
            height: 50px;
            padding: 0 10px;
            box-sizing: border-box;
            font-size: 18px;
            margin: 10px 0;
            background-color: #f0f0f0;
            border-radius: 5px;
            box-shadow: inset 0 0 5px rgba(0,0,0,.1);
            transition: background-color .5s;
        }
        input[type="text"]:focus, input[type="password"]:focus {
            background-color: #fff;
        }
        label {
            display: block;
            font-size: 16px;
            color: #999;
            margin-bottom: 5px;
        }
        button {
            width: 100%;
            height: 50px;
            border: none;
            outline: none;
            background-color: #f02308;
            color: #fff;
            font-size: 20px;
            font-weight: bold;
            cursor: pointer;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,.2);
            transition: background-color .5s;
        }
        button:hover {
            background-color: #c32107;
        }
        .form-group {
            position: relative;
            margin-bottom: 20px;
        }
        .fa {
            position: absolute;
            top: 15px;
            left: 15px;
            font-size: 20px;
            color: #999;
        }
        .validate-info {
            position: absolute;
            top: 10px;
            right: 0;
            font-size: 14px;
            color: #999;
            display: none;
        }
        .has-error input {
            border-color: #f00;
        }
        .has-error .validate-info {
            display: block;
        }
        .error-msg {
            margin-top: 10px;
            color: #f00;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="register-container">
    <h1>注册</h1>
    <form name="registerForm" action="${pageContext.request.contextPath}/register" method="post" onsubmit="return checkForm()">
        <label for="account">账号：</label>
        <div class="form-group">
            <i class="fa fa-user"></i>
            <input id="account" name="account" type="text" placeholder="请输入账号" required autofocus>
            <span class="validate-info"></span>
        </div>
        <label for="password">密码：</label>
        <div class="form-group">
            <i class="fa fa-lock"></i>
            <input id="password" name="password" type="password" placeholder="请输入密码" required>
            <span class="validate-info"></span>
        </div>
        <label for="confirm-password">确认密码：</label>
        <div class="form-group">
            <i class="fa fa-check"></i>
            <input id="confirm-password" name="resetPwd" type="password" placeholder="请再次输入密码" required>
            <span class="validate-info"></span>
        </div>
        <button type="submit">注册</button>
        <div id="error-msg-container" class="error-msg">${msg}</div>
    </form>
    <div style="text-align:center;margin-top: 20px;font-size: 14px;color: #666;">已有账号？<a href="${pageContext.request.contextPath}/login" style="color: #f02308; text-decoration:none;font-size: 14px;">立即登录</a></div>
</div>
<script type="text/javascript">
    function checkForm() {
        var account = document.getElementById("account").value;
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirm-password").value;
        var errorMsgContainer = document.getElementById("error-msg-container");
        if (!checkAccount(account)) {
            showErrorMessage(errorMsgContainer, "账号只能包含数字！");
            return false;
        }
        if (!checkPassword(password)) {
            showErrorMessage(errorMsgContainer, "密码必须为6-16位的大小写字母、数字或特殊字符！");
            return false;
        }
        if (password !== confirmPassword) {
            showErrorMessage(errorMsgContainer, "两次密码不一致！");
            return false;
        }
        return true;
    }

    function checkAccount(account) {
        var regex = /^[0-9]{6,16}$/;
        return regex.test(account);
    }

    function checkPassword(password) {
        var regex = /^.{6,16}$/;
        return regex.test(password);
    }

    function showErrorMessage(container, msg) {
        container.innerHTML = '<div class="error-msg">' + msg + '</div>';
    }
</script>
</body>
</html>