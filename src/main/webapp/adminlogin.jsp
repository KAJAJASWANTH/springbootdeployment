<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <style>
        /* General Styling */
        body {
            background-color: #f0f8ff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
        }

        h2 {
            text-align: center;
            color: #1e90ff;
            margin-top: 30px;
            font-size: 2rem;
            text-shadow: 1px 1px 3px rgba(0, 0, 0, 0.2);
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

        /* Form Container Styling */
        .form-container {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 50px 0;
        }

        /* Form Styling */
        form {
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
            width: 400px;
            max-width: 100%;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 600;
            color: #444;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"] {
            width: 48%;
            background-color: #1e90ff;
            color: #fff;
            padding: 10px;
            border: none;
            border-radius: 5px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin-right: 4%;
        }

        input[type="reset"] {
            background-color: #ff6347;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            transform: translateY(-3px);
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        input[type="reset"]:hover {
            background-color: #ff4500;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            form {
                width: 90%;
                padding: 20px;
            }

            input[type="submit"],
            input[type="reset"] {
                width: 100%;
                margin: 10px 0;
            }

            .button-container {
                flex-direction: column;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h2>Admin Login</h2>
    <div class="form-container">
        <form method="post" action="checkadminlogin">
            <label for="auname">Enter Username</label>
            <input type="text" id="auname" name="auname" required/>

            <label for="apwd">Enter Password</label>
            <input type="password" id="apwd" name="apwd" required/>

            <div class="button-container">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>
</body>
</html>
