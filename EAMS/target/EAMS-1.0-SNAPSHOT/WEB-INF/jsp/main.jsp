<%@ page contentType="text/html;charset=UTF-8" %>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <title>用户页面</title>
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/twitter-bootstrap/5.0.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
        body {
            background-color: #f5f5f5;
        }

        .container {
            margin: 100px auto;
            max-width: 500px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .2);
            padding: 20px;
        }

        .header {
            margin-bottom: 30px;
            text-align: center;
        }

        h1 {
            font-size: 36px;
            color: #333;
        }

        .form-wrapper {
            text-align: center;
        }

        button[type="submit"] {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #f02308;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color .3s ease;
        }

        button[type="submit"]:hover {
            background-color: #c32107;
        }
    </style>
</head>
<body>
<div class="container">
    <header class="header">
        <h1>用户管理</h1>
    </header>
    <main class="main">
        <div class="form-wrapper">
            <form action="/eams/login" method="" class="row g-3">
                <div class="col-auto">
                    <button type="submit" class="btn btn-primary">
                        注销 <i class="fas fa-sign-in-alt"></i>
                    </button>
                </div>
            </form>
        </div>
    </main>
</div>
<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.bootcdn.net/ajax/libs/bootstrap/5.0.1/js/bootstrap.bundle.min.js"></script>
</body>
</html>