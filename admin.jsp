<!DOCTYPE html>
<html>
<head>
    <title>Student Portal - Admin Panel</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            height: 100vh;
            background: linear-gradient(135deg, #e0f7fa, #f1f8ff);
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

        /* ============== CENTER CONTENT ============== */
        .main-content {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding-top: 70px;
        }

        .admin-card {
            background: #222;
            color: white;
            padding: 40px;
            width: 350px;
            text-align: center;
            border-radius: 15px;
            box-shadow: 0 15px 40px rgba(0, 0, 0, 0.4);
            animation: slideUp 1s ease forwards;
        }

        .admin-card h2 {
            margin-bottom: 15px;
            color: #00e5ff;
        }

        .admin-card p {
            margin-bottom: 25px;
            color: #ccc;
        }

        .admin-card a {
            text-decoration: none;
            background: #ff3d00;
            color: white;
            padding: 10px 25px;
            border-radius: 8px;
            transition: 0.3s;
            display: inline-block;
        }

        .admin-card a:hover {
            background: #ff5722;
            transform: scale(1.05);
        }

        @keyframes slideUp {
            0% {
                transform: translateY(200px);
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
            <a href="login.php">Logout</a>
        </div>
    </div>

    <!-- MAIN CONTENT -->
    <div class="main-content">
        <div class="admin-card">
            <h2>Admin Panel</h2>

<p><b>Admin Name:</b> ${admin.username}</p>
<p><b>Email:</b> ${admin.email}</p>
<p><b>Role:</b> ${admin.role}</p>

<a href="dashboard">Back</a>
        </div>
    </div>
    
    


</body>
</html>
