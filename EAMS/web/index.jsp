<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>教务管理系统</title>
    <link rel="stylesheet" href="https://cdn.bootcdn.net/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link rel="stylesheet" href="style.css">
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
        <h1>教务管理系统</h1>
    </header>
    <main class="main">
        <div class="form-wrapper">
            <form action="/eams/login" method="">
                <button type="submit">进入系统</button>
            </form>
        </div>
    </main>
</div>
</body>
</html>