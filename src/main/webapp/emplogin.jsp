<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Employee Login</title>
    <style>
        /* General Styling */
        body {
            background-color: #f4f7fa;
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            color: #333;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        h2 {
            text-align: center;
            color: #1e90ff;
            font-size: 2.5rem;
            font-weight: 600;
            margin-top: 50px;
        }

        h4 {
            text-align: center;
            color: red;
            font-size: 1rem;
            margin-top: 10px;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #1e90ff;
            padding: 15px 0;
            box-shadow: 0 2px 8px rgba(0, 0, 0, 0.1);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            padding: 12px 20px;
            border-radius: 5px;
            font-size: 1rem;
            margin: 0 15px;
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
            flex: 1;
        }

        /* Form Styling */
        form {
            background-color: #fff;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            width: 400px;
            max-width: 100%;
            font-size: 1.1rem;
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: 500;
            color: #444;
        }

        input[type="email"],
        input[type="password"],
        input[type="submit"],
        input[type="reset"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            box-sizing: border-box;
        }

        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #1e90ff;
            outline: none;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #1e90ff;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #104e8b;
            transform: translateY(-3px);
        }

        /* Footer Styling */
        .footer {
            text-align: center;
            padding: 20px;
            background-color: #f4f7fa;
            color: #777;
            font-size: 0.9rem;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                flex-direction: column;
            }

            .navbar a {
                margin: 10px 0;
            }

            .form-container {
                padding: 20px;
            }

            form {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h2><u>Employee Login</u></h2>
    
    <h4>
     <c:out value="${message }"></c:out>
    </h4>
    
    <div class="form-container">
        <form method="post" action="checkregistrationlogin">
            <label for="eemail">Enter Email ID</label>
            <input type="email" id="eemail" name="eemail" required aria-label="Email Address" />

            <label for="epwd">Enter Password</label>
            <input type="password" id="epwd" name="epwd" required aria-label="Password" />

            <div class="button-container">
                <input type="submit" value="Login"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>

    <div class="footer">
        <p>&copy; 2024 Company Name. All rights reserved.</p>
    </div>
</body>
</html>
