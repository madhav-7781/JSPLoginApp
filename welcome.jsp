<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f2f5;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        width: 300px;
    }
    .container h2 {
        margin-bottom: 20px;
        color: #333;
    }
    .container a {
        display: block;
        margin: 10px 0;
        padding: 10px;
        background-color: #4CAF50;
        color: white;
        text-decoration: none;
        border-radius: 4px;
        transition: background-color 0.3s;
    }
    .container a:hover {
        background-color: #45a049;
    }
    .container form {
        margin-top: 20px;
    }
    .container input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #f44336;
        border: none;
        border-radius: 4px;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }
    .container input[type="submit"]:hover {
        background-color: #e53935;
    }
</style>
</head>
<body>
    <div class="container">
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");	
            if(session.getAttribute("username") == null) {
                response.sendRedirect("login.jsp");
            }
        %>
        <h2>Welcome, <%= session.getAttribute("username") %></h2>
        <a href="videos.jsp">Videos Here</a>
        <form action="Logout">
            <input type="submit" value="Logout">
        </form>
    </div>
</body>
</html>
