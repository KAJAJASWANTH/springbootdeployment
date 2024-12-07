<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
  <meta charset="UTF-8">
  <title>OTP Verification</title>
  <link rel="stylesheet" href="styles.css">
</head>
<body>
  <div class="otp-container">
    <form action="verifyOtp" method="POST">
      <h2>OTP Verification</h2>
      <div class="form-group">
        <label for="otp">Enter OTP:</label>
        <input type="text" id="otp" name="otp" required>
      </div>
      <div class="form-group">
        <button type="submit">Verify OTP</button>
      </div>

      <!-- Display error message if OTP is invalid -->
      <c:if test="${not empty message}">
        <div class="error-message">
          <c:out value="${message}" />
        </div>
      </c:if>
    </form>
  </div>
</body>
</html>
