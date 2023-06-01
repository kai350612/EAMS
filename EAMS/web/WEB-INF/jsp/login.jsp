<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>登录页面</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
        }
        .login-container {
            margin: 100px auto;
            width: 300px;
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
        .error-msg {
            margin-top: 10px;
            color: #f00;
            font-size: 14px;
            text-align: center;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #666;
        }
        .register-link a {
            color: #f02308;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="login-container">
    <h1>登录</h1>
    <form method="post" action="${pageContext.request.contextPath}/login">
        <label for="account">账号：</label>
        <div>
            <input id="account" name="account" type="text" placeholder="请输入账号" required>
        </div>
        <label for="password">密码：</label>
        <div>
            <input id="password" name="password" type="password" placeholder="请输入密码" required>
        </div>
        <button type="submit">登录</button>
        <c:if test="${not empty msg}">
            <div class="error-msg">${msg}</div>
        </c:if>
    </form>
    <div class="register-link">还没有账号？<a href="${pageContext.request.contextPath}/register">立即注册</a></div>
</div>

</body>
</html>
