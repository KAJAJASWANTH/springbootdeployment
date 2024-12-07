<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style>
    /* General Styling */
    body {
        background-color: #f5f5f5;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        margin: 0;
        padding: 0;
        color: #333;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .login-card {
        background-color: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
        width: 400px;
        max-width: 100%;
        font-size: 1.1rem;
    }

    .login-card h2 {
        text-align: center;
        color: #444;
    }

    .error-message {
        color: red;
        background-color: #f8d7da;
        padding: 10px;
        border-radius: 5px;
        margin-bottom: 15px;
        text-align: center;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: 500;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 1rem;
    }

    input[type="submit"] {
        background-color: #1e90ff;
        color: #fff;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        font-size: 1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #104e8b;
    }
</style>
</head>
<body>

    <div class="login-card">
        <h2><u>Admin Login</u></h2>

        <!-- Display error message if login fails -->
        <c:if test="${not empty message}">
            <div class="error-message">
                <c:out value="${message}"/>
            </div>
        </c:if>

        <form method="post" action="checkadminlogin">
            <label for="auname">Enter Username</label>
            <input type="text" id="auname" name="auname" required/>

            <label for="apwd">Enter Password</label>
            <input type="password" id="apwd" name="apwd" required/>

            <input type="submit" value="Login"/>
            <input type="reset" value="Clear"/>
        </form>
    </div>

</body>
</html>
