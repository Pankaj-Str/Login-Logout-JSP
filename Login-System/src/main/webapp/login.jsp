<!-- login.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>

    <h2>Login</h2>
    <form action="loginHandler.jsp" method="post">
  	<div class="container">
        <label>Username:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </div>
    </form>
</body>
</html>
