<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="jakarta.servlet.http.*" %>
<%
    String user = (String) session.getAttribute("username");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<html>
<head>
    <title>Welcome</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #ff9a9e, #fad0c4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .welcome-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0px 8px 20px rgba(0,0,0,0.2);
            text-align: center;
        }
        h2 {
            margin-bottom: 20px;
            color: #333;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background: #ff758c;
            color: #fff;
            border: none;
            border-radius: 8px; 
            text-decoration: none;
            font-size: 16px;
            transition: background 0.3s;
        }
        .btn:hover {
            background: #ff4b5c;
        }
    </style>
</head>
<body>
<div class="welcome-container">
    <h2>Xin chào, <%= user %>!</h2>
    <a href="LogoutServlet" class="btn">Đăng xuất</a>
</div>
</body>
</html>
