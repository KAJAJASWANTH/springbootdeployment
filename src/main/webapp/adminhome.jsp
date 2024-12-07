<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        /* General Styling */
        body {
            background-color: #f5f5f5;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h1 {
            text-align: center;
            color: #1e90ff;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            font-size: 2.5rem;
            margin-top: 20px;
        }

        h2 {
            text-align: center;
            color: #555;
            margin: 10px 0 20px 0;
            font-size: 1.2rem;
            font-weight: 300;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #1e90ff;
            padding: 15px 0;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 1rem;
            margin: 0 10px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #104e8b;
            transform: translateY(-3px);
        }

        /* Stats Section */
        .content {
            padding: 20px;
        }

        .stats {
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 30px;
        }

        .stat-box {
            background-color: #fff;
            padding: 20px;
            width: 250px;
            text-align: center;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .stat-box h3 {
            font-size: 1.2rem;
            color: #444;
            margin-bottom: 10px;
        }

        .stat-box p {
            font-size: 1.5rem;
            font-weight: bold;
            color: #1e90ff;
        }

        .stat-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(0, 0, 0, 0.2);
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .stats {
                flex-direction: column;
                align-items: center;
            }

            .stat-box {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@include file="adminnavbar.jsp" %>
    <div class="content">
        <h1>Welcome to Admin Dashboard</h1>
        <h2>Manage your employees and other resources effectively</h2>
        <div class="stats">
            <div class="stat-box">
                <h3>Total Employees</h3>
                <p><c:out value="${empcount}" /></p>
            </div>
            <div class="stat-box">
                <h3>Pending Tasks</h3>
                <p>12</p>
            </div>
            <div class="stat-box">
                <h3>Completed Projects</h3>
                <p>8</p>
            </div>
        </div>
    </div>
</body>
</html>
