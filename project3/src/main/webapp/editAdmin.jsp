<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    // Get admin ID and username from request parameters
    String adminId = request.getParameter("id");
    String currentUsername = request.getParameter("username");

    if (adminId == null || currentUsername == null) {
        response.sendRedirect("manageAdmins.jsp?error=Invalid Admin ID");
        return;
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Edit Admin</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/adminStyle.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            max-width: 500px;
            margin: 50px auto;
            padding: 20px;
            background: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2 {
            color: #004080;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }

        input {
            width: 80%;
            padding: 8px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        button {
            background-color: #004080;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
            margin-top: 10px;
        }

        button:hover {
            background-color: #0059b3;
        }

        .cancel {
            background-color: #cc0000;
            text-decoration: none;
            padding: 10px 15px;
            color: white;
            border-radius: 5px;
            margin-top: 10px;
            display: inline-block;
        }

        .cancel:hover {
            background-color: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Admin</h2>

        <%-- Display success or error messages --%>
        <% String successMessage = request.getParameter("success");
           String errorMessage = request.getParameter("error");
        %>
        <% if (successMessage != null) { %>
            <div class="success">✔ <%= successMessage %></div>
        <% } %>
        <% if (errorMessage != null) { %>
            <div class="error">✖ <%= errorMessage %></div>
        <% } %>

        <form action="${pageContext.request.contextPath}/AdminManagementServlet" method="post">
            <input type="hidden" name="action" value="update">
            <input type="hidden" name="adminId" value="<%= adminId %>">

            <label for="username">Username:</label>
            <input type="text" id="username" name="username" value="<%= currentUsername %>" required>

            <label for="password">New Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter new password">

            <button type="submit">Update Admin</button>
        </form>

        <a href="manageAdmins.jsp" class="cancel">Cancel</a>
    </div>
</body>
</html>