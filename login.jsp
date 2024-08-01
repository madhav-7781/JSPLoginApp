<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
        width: 300px;
    }
    .container h2 {
        margin-bottom: 20px;
        color: #333;
    }
    .container label {
        display: block;
        margin-bottom: 5px;
        color: #555;
    }
    .container input[type="text"],
    .container input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    .container input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #4CAF50;
        border: none;
        border-radius: 4px;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }
    .container input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
    <div class="container">
        <h2>Login</h2>
        <form action="Login" method="post">
            <label for="uname">Enter Username:</label>
            <input type="text" id="uname" name="uname" required>
            
            <label for="pass">Enter Password:</label>
            <input type="password" id="pass" name="pass" required>
            
            <input type="submit" value="Login">
        </form>
    </div>
</body>
</html>
