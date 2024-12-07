body {
    font-family: 'Arial', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f9f9f9;
    color: #333;
}

h3 {
    color: #4CAF50;
    margin-top: 20px;
    font-size: 24px;
}

.form-container {
    width: 50%;
    margin: 30px auto;
    background: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
}

table td {
    padding: 10px;
    vertical-align: middle;
}

table td label {
    font-weight: bold;
    font-size: 14px;
    color: #555;
}

form:input,
form:password,
form:textarea,
form:radiobutton {
    font-size: 14px;
    width: calc(100% - 22px);
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    outline: none;
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.1);
}

form:textarea {
    resize: vertical;
    min-height: 60px;
}

form:radiobutton {
    margin-right: 5px;
    width: auto;
}

input[type="submit"],
input[type="reset"] {
    font-size: 14px;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    background-color: #4CAF50;
    color: white;
    margin-right: 10px;
    transition: background-color 0.3s ease;
}

input[type="reset"] {
    background-color: #f44336;
}

input[type="submit"]:hover {
    background-color: #45a049;
}

input[type="reset"]:hover {
    background-color: #d32f2f;
}

.button-container {
    text-align: center;
}

tr:nth-child(even) td {
    background-color: #f2f2f2;
}

tr:hover td {
    background-color: #f1f7f9;
}

