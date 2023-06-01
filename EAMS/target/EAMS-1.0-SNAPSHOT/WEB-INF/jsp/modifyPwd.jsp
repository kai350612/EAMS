<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改密码页面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .modify-container {
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
        input[type="password"] {
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
        input[type="password"]:focus {
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
<div class="modify-container">
    <h1>修改密码</h1>
    <form name="modifyForm" action="${pageContext.request.contextPath}/modifyPwd" method="post" onsubmit="return checkForm()">
        <label for="old-password">旧密码：</label>
        <div class="form-group">
            <i class="fa fa-lock"></i>
            <input id="old-password" name="oldPassword" type="password" placeholder="请输入旧密码" required>
            <span class="validate-info"></span>
        </div>
        <label for="new-password">新密码：</label>
        <div class="form-group">
            <i class="fa fa-lock"></i>
            <input id="new-password" name="newPassword" type="password" placeholder="请输入新密码" required>
            <span class="validate-info"></span>
        </div>
        <label for="confirm-password">确认新密码：</label>
        <div class="form-group">
            <i class="fa fa-check"></i>
            <input id="confirm-password" name="confirmPassword" type="password" placeholder="请再次输入新密码" required>
            <span class="validate-info"></span>
        </div>
        <button type="submit">修改密码</button>
        <div id="error-msg-container" class="error-msg">${msg}</div>
    </form>
</div>
<script type="text/javascript">
    function checkForm() {
        var oldPassword = document.getElementById("old-password").value;
        var newPassword = document.getElementById("new-password").value;
        var confirmPassword = document.getElementById("confirm-password").value;
        var errorMsgContainer = document.getElementById("error-msg-container");
        if (newPassword === oldPassword) {
            showErrorMessage(errorMsgContainer, "新密码不能与旧密码相同！");
            return false;
        }
        if (!checkPassword(newPassword)) {
            showErrorMessage(errorMsgContainer, "新密码必须为6-16位的大小写字母、数字或特殊字符！");
            return false;
        }
        if (newPassword !== confirmPassword) {
            showErrorMessage(errorMsgContainer, "两次新密码不一致！");
            return false;
        }
        return true;
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