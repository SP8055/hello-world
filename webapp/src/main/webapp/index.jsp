<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, #6cc1ff, #467fcf);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .login-container {
            background: white;
            padding: 30px 40px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 400px;
            text-align: center;
        }

        .login-container h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .input-field {
            width: 100%;
            padding: 12px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            color: #333;
            transition: all 0.3s ease;
        }

        .input-field:focus {
            outline: none;
            border-color: #467fcf;
            box-shadow: 0 0 5px rgba(70, 127, 207, 0.5);
        }

        .login-button {
            width: 100%;
            padding: 12px;
            background-color: #467fcf;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .login-button:hover {
            background-color: #365fa6;
        }

        .login-footer {
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }

        .login-footer a {
            color: #467fcf;
            text-decoration: none;
        }

        .login-footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="login.jsp" method="post">
            <input type="text" name="username" class="input-field" placeholder="Username" required>
            <input type="password" name="password" class="input-field" placeholder="Password" required>
            <button type="submit" class="login-button">Login</button>
        </form>
        
        <% 
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            if (username != null && password != null) {
                // Here you can validate the credentials, for example:
                // if (username.equals("admin") && password.equals("password")) { ... }
                
                out.println("<p>Entered Username: " + username + "</p>");
                out.println("<p>Entered Password: " + password + "</p>");
            }
        %>
        
        <div class="login-footer">
            <p>Don't have an account? <a href="#">Sign up</a></p>
        </div>
    </div>
</body>
</html>
