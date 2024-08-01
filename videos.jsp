<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Video Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f2f5;
        margin: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .container {
        background-color: #fff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
        max-width: 600px;
    }
    .header {
        margin-bottom: 20px;
        color: #333;
    }
    iframe {
        width: 100%;
        height: 315px;
        border-radius: 8px;
    }
    .footer {
        margin-top: 20px;
        color: #777;
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
        <div class="header">
            <h2>Welcome, <%= session.getAttribute("username") %></h2>
        </div>
        <iframe src="https://www.youtube.com/embed/WX7DBPcsiEs?si=YaqXMdpDoOn1eVu6" title="YouTube video player" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        <div class="footer">
            &copy; 2024 Your Website. All rights reserved.
        </div>
    </div>
</body>
</html>
