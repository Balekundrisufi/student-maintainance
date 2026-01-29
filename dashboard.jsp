<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Student Portal - Dashboard</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #e0f7fa, #f1f8ff);
        }

        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 70px;
            background: rgba(20, 20, 20, 0.9);
            display: flex;
            align-items: center;
            padding: 0 30px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.4);
            z-index: 1000;
        }

        .nav-title {
            font-size: 24px;
            font-weight: bold;
            color: #00e5ff;
            flex: 1;
        }

        .nav-links {
            flex: 2;
            display: flex;
            justify-content: center;
            gap: 30px;
        }

        .nav-links a {
            text-decoration: none;
            color: white;
            font-size: 16px;
            padding: 8px 18px;
            border-radius: 20px;
            transition: 0.3s;
        }

        .nav-links a:hover {
            background: #00e5ff;
            color: #000;
        }

        .main-content {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 70px;
        }

        .dashboard-card {
            background: #1f1f1f;
            color: white;
            padding: 40px;
            width: 360px;
            border-radius: 15px;
            text-align: center;
            box-shadow: 0 15px 40px rgba(0,0,0,0.4);
            animation: slideUp 1s ease forwards;
        }

        .dashboard-card h2 {
            margin-bottom: 25px;
            color: #00e5ff;
        }

        .dashboard-card a {
            display: block;
            margin: 15px 0;
            padding: 12px;
            background: #ff3d00;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            transition: 0.3s;
        }

        .dashboard-card a:hover {
            background: #ff5722;
            transform: scale(1.05);
        }

        @keyframes slideUp {
            0% { transform: translateY(200px); opacity: 0; }
            100% { transform: translateY(0); opacity: 1; }
        }
    </style>
</head>
<body>

<div class="navbar">
    <div class="nav-title">Student Portal</div>
    <div class="nav-links">
        <a href="${pageContext.request.contextPath}/dashboard">Dashboard</a>
        <a href="${pageContext.request.contextPath}/profile">Profile</a>
        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>

<div class="main-content">
    <div class="dashboard-card">
        <h2>Welcome, ${sessionScope.loggedUser.username}</h2>

        <a href="${pageContext.request.contextPath}/profile">Profile</a>

        <c:if test="${not empty sessionScope.loggedUser and sessionScope.loggedUser.role == 'admin'}">
            <a href="${pageContext.request.contextPath}/admin">Admin Panel</a>
        </c:if>

        <a href="${pageContext.request.contextPath}/logout">Logout</a>
    </div>
</div>

</body>
</html>
