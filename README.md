# Login system without a database in JSP

login system without a database in JSP can be done by using simple session management to store user information. In this example, we'll use a basic username and password combination for demonstration purposes. Keep in mind that this approach is not suitable for production environments as it lacks security and scalability.

Here's a step-by-step guide to creating a simple login without a database in JSP:

1. Create a JSP file named `login.jsp`. This will be the login page where users enter their credentials.

```jsp
<!-- login.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
    <h2>Login</h2>
    <form action="loginHandler.jsp" method="post">
        <label>Username:</label>
        <input type="text" name="username" required><br>
        <label>Password:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="Login">
    </form>
</body>
</html>
```

2. Create another JSP file named `loginHandler.jsp`. This file will handle the login logic and session management.

```jsp
<!-- loginHandler.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.io.IOException" %>

<%
    // Simulate a user database (not recommended for production use)
    Map<String, String> users = new HashMap<>();
    users.put("user1", "password1");
    users.put("user2", "password2");
    // Add more users as needed.

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if (username != null && password != null) {
        String storedPassword = users.get(username);
        if (storedPassword != null && storedPassword.equals(password)) {
            // Login successful, create a session
            session.setAttribute("username", username);
            response.sendRedirect("welcome.jsp");
        } else {
            // Login failed, redirect back to login page
            response.sendRedirect("login.jsp");
        }
    } else {
        // Invalid request, redirect back to login page
        response.sendRedirect("login.jsp");
    }
%>
```

3. Finally, create a `welcome.jsp` page to display a welcome message for logged-in users.

```jsp
<!-- welcome.jsp -->
<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("username") %>!</h2>
    <p>You are now logged in.</p>
    <p><a href="logout.jsp">Logout</a></p>
</body>
</html>
```

4. To provide logout functionality, create a `logout.jsp` file.

```jsp
<!-- logout.jsp -->
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.io.IOException" %>

<%
    // Invalidate the session and redirect to the login page
    session.invalidate();
    response.sendRedirect("login.jsp");
%>
```

Remember that this approach is for educational purposes only and should not be used in production. A real-world login system should involve a database for securely storing user information and robust security measures to protect user data.
