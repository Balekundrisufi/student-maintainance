<!DOCTYPE html>
<html>
<head>
    <title>Student Portal - Login</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #e3f2fd, #f9fbe7);
        }

        /* ================= NAVBAR ================= */
        .navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 70px;
            background: rgba(20, 20, 20, 0.9);
            backdrop-filter: blur(10px);
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
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0,229,255,0.6);
        }

        /* ============== CENTER LOGIN ============== */
        .main-content {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 70px;
        }

        .login-card {
            background: #1f1f1f;
            padding: 35px;
            width: 320px;
            border-radius: 15px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.4);
            color: white;
            text-align: center;
            animation: slideDown 1s ease forwards;
        }

        .login-card h2 {
            margin-bottom: 20px;
            color: #00e5ff;
        }

        .login-card input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 8px;
            border: none;
            outline: none;
        }

        .login-card button {
            width: 100%;
            padding: 10px;
            background: #ff3d00;
            border: none;
            border-radius: 8px;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: 0.3s;
        }

        .login-card button:hover {
            background: #ff5722;
            transform: scale(1.05);
        }

        @keyframes slideDown {
            0% {
                transform: translateY(-200px);
                opacity: 0;
            }
            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }
    </style>
</head>

<body>

    <!-- NAVBAR -->
    <div class="navbar">
        <div class="nav-title">Student Portal</div>
        <div class="nav-links">
            <a href="dashboard">Dashboard</a>
            <a href="profile">Profile</a>
            <a href="login">Logout</a>
        </div>
    </div>

    <!-- LOGIN CONTENT -->
    <div class="main-content">
        <div class="login-card">
            <h2>Login</h2>
            <form action="dashboard" method="post">
                <input name="username" placeholder="Username" required>
                <input type="password" name="password" placeholder="Password" required>
                <button>Login</button>
            </form>
        </div>
    </div>

</body>
</html>
