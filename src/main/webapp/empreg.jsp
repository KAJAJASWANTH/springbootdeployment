<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
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
            color: #28a745;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            font-size: 2.8rem;
            margin-top: 50px;
        }

        h2 {
            text-align: center;
            color: #444;
            margin-top: 30px;
            font-weight: 300;
        }

        /* Navbar Styling */
        .navbar {
            display: flex;
            justify-content: center;
            background-color: #007bff;
            padding: 12px 0;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            position: sticky;
            top: 0;
            z-index: 1000;
        }

        .navbar a {
            text-decoration: none;
            color: #fff;
            padding: 12px 25px;
            font-size: 1.1rem;
            margin: 0 15px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .navbar a:hover {
            background-color: #0056b3;
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
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            width: 600px;
            max-width: 100%;
            font-size: 1.1rem;
            display: flex;
            flex-direction: column;
        }

        label {
            display: block;
            margin-bottom: 8px;
            font-weight: 500;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        input[type="email"],
        input[type="date"],
        select,
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: border 0.3s ease;
        }

        input[type="text"]:focus,
        input[type="number"]:focus,
        input[type="email"]:focus,
        input[type="date"]:focus,
        select:focus,
        input[type="password"]:focus {
            border-color: #007bff;
            outline: none;
        }

        .button-container {
            text-align: center;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #007bff;
            color: #fff;
            padding: 12px 25px;
            border: none;
            border-radius: 8px;
            font-size: 1rem;
            cursor: pointer;
            transition: background-color 0.3s ease, transform 0.3s ease;
            margin: 10px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            background-color: #0056b3;
            transform: translateY(-3px);
        }

        /* Password Strength Message */
        #password-message {
            font-size: 0.9rem;
            font-weight: 500;
            margin-top: 5px;
        }

        /* Table Styling */
        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }

        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        tr:hover {
            background-color: #f1f1f1;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .form-container {
                padding: 20px;
            }

            form {
                width: 100%;
            }

            table, th, td {
                display: block;
                width: 100%;
                box-sizing: border-box;
            }

            th {
                background-color: #007bff;
                padding: 12px;
            }

            tr {
                margin-bottom: 15px;
                display: block;
                background-color: #fff;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            td {
                display: block;
                padding: 12px;
                text-align: right;
                border: none;
            }

            td::before {
                content: attr(data-label);
                font-weight: bold;
                float: left;
                color: #333;
            }
        }
    </style>
    <script>
        function validatePassword() {
            const password = document.getElementById("epwd").value;
            const message = document.getElementById("password-message");
            const regex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;

            if (password.match(regex)) {
                message.style.color = "green";
                message.innerHTML = "Password is strong.";
                return true;
            } else {
                message.style.color = "red";
                message.innerHTML = "Password must be at least 8 characters long, contain at least one letter, one number, and one special character.";
                return false;
            }
        }

        function validatePhoneNumber() {
            const phone = document.getElementById("econtact").value;
            const message = document.getElementById("phone-message");
            const phoneRegex = /^[0-9]{10}$/;

            if (phone.match(phoneRegex)) {
                message.style.color = "green";
                message.innerHTML = "Phone number is valid.";
                return true;
            } else {
                message.style.color = "red";
                message.innerHTML = "Please enter a valid 10-digit phone number.";
                return false;
            }
        }
    </script>
</head>
<body>
  <%@include file="mainnavbar.jsp" %>
    <h2><u>Employee Registration</u></h2>
    <div class="form-container">
        <form method="post" action="insertemp" onsubmit="return validatePassword() && validatePhoneNumber()">
            <div>
               <label for="ename">Enter Name</label>
               <input type="text" id="ename" name="ename" required/>
            </div>
            <div>
                <label for="egender">Select Gender</label>
                <select id="egender" name="egender" required>
                    <option value="">---Select Gender---</option>
                    <option value="MALE">Male</option>
                    <option value="FEMALE">Female</option>
                    <option value="OTHERS">Others</option>
                </select>
            </div>
            <div>
                <label for="edob">Enter Date of Birth</label>
                <input type="date" id="edob" name="edob" required/>
            </div>
            <div>
                <label for="edept">Select Department</label>
                <select id="edept" name="edept" required>
                    <option value="">---Select---</option>
                    <option value="TECHNICAL">Technical</option>
                    <option value="MARKETING">Marketing</option>
                    <option value="SALES">Sales</option>
                </select>
            </div>
            <div>
                <label for="esalary">Enter Salary</label>
                <input type="number" id="esalary" name="esalary" step="0.01" required/>
            </div>
            <div>
                <label for="elocation">Enter Location</label>
                <input type="text" id="elocation" name="elocation" required/>
            </div>
            <div>
                <label for="eemail">Enter Email ID</label>
                <input type="email" id="eemail" name="eemail" required/>
            </div>
             <div>
                <label for="epwd">Enter Password</label>
                <input type="password" id="epwd" name="epwd" required oninput="validatePassword()"/>
                <div id="password-message"></div>
            </div>
            <div>
                <label for="econtact">Enter Contact</label>
                <input type="number" id="econtact" name="econtact" required oninput="validatePhoneNumber()"/>
                <div id="phone-message"></div>
            </div>
            <div class="button-container">
                <input type="submit" value="Register"/>
                <input type="reset" value="Clear"/>
            </div>
        </form>
    </div>
</body>
</html>
