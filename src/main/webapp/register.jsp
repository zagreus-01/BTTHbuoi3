<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #43e97b, #38f9d7);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .register-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
            width: 350px;
            text-align: center;
        }
        .register-container h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
            text-align: left;
        }
        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #555;
        }
        .form-group input {
            width: 100%;
            padding: 10px;
            border-radius: 8px;
            border: 1px solid #ccc;
            outline: none;
            transition: border-color 0.3s;
        }
        .form-group input:focus {
            border-color: #43e97b;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background: #43e97b;
            border: none;
            border-radius: 8px;
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #34d399;
        }
        .error {
            color: red;
            margin-top: 10px;
            display: block;
        }
        .login-link {
            display: block;
            margin-top: 15px;
            text-decoration: none;
            color: #43e97b;
            font-weight: bold;
        }
        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
<div class="register-container">
    <h2>Đăng ký</h2>
    <form action="RegisterServlet" method="post">
        <div class="form-group">
            <label for="username">Tên đăng nhập</label>
            <input type="text" name="username" id="username" required/>
        </div>
        <div class="form-group">
            <label for="password">Mật khẩu</label>
            <input type="password" name="password" id="password" required/>
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="email" name="email" id="email" required/>
        </div>
        <input type="submit" value="Register" class="btn"/>
    </form>
    <span class="error">${error}</span>
    <a href="login.jsp" class="login-link">Đã có tài khoản? Đăng nhập</a>
</div>
</body>
</html>
