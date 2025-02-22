<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Manage Admins</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/Css/adminStyle.css">
    <style>
        /* Page Styling */
        body {
            font-family: Arial, sans-serif;
            background-color: #2c3436;
            margin: 0;
            padding: 0;
            text-align: center;
        }

        .container {
            width: 90%;
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background: #5fdef5;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h2, h3 {
            color: #004080;
            margin-top: 20px;
        }

        a {
            display: block;
            width: 200px;
            margin: 10px auto;
            padding: 10px;
            text-decoration: none;
            background-color: #004080;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        a:hover {
            background-color: #0059b3;
        }

        .logout {
            background-color: #cc0000;
        }

        .logout:hover {
            background-color: #ff0000;
        }

        /* Form Styling */
        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            margin: 20px 0;
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

        .success {
            color: green;
            font-weight: bold;
        }

        .error {
            color: red;
            font-weight: bold;
        }

        /* Table Styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background: white;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: center;
        }

        th {
            background: #004080;
            color: white;
        }

        .edit-btn, .delete-btn {
            padding: 6px 10px;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .edit-btn {
            background: #ffa500;
        }

        .delete-btn {
            background: #cc0000;
        }

        .edit-btn:hover {
            background: #e69500;
        }

        .delete-btn:hover {
            background: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Manage Admins</h2>

        <%-- Success or error messages --%>
        <% String successMessage = request.getParameter("success");
           String errorMessage = request.getParameter("error");
        %>
        <% if (successMessage != null) { %>
            <div class="success">✔ <%= successMessage %></div>
        <% } %>
        <% if (errorMessage != null) { %>
            <div class="error">✖ <%= errorMessage %></div>
        <% } %>

        <!-- Add Admin Form -->
        <h3>Add New Admin</h3>
        <form action="${pageContext.request.contextPath}/AdminManagementServlet" method="post">
            <input type="hidden" name="action" value="add">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" placeholder="Enter Admin Username" required >

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" placeholder="Enter Admin Password" required>
            
            <button type="reset">Clear</button>

            <button type="submit">Add Admin</button>
        </form>

        <!-- Admins List Table -->
        <h3>Admin List</h3>
        <table>
            <tr>
                <th>ID</th>
                <th>Username</th>
                <th>Actions</th>
            </tr>
            
            <% 
            Connection conn = null;
            PreparedStatement pstmt = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/project3", "root", "Kalani2003@#$");
                String sql = "SELECT * FROM admin";
                pstmt = conn.prepareStatement(sql);
                rs = pstmt.executeQuery();
                while (rs.next()) {
            %>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("username") %></td>
                <td>
                    <a href="editAdmin.jsp?id=<%= rs.getInt("id") %>&username=<%= rs.getString("username") %>" class="edit-btn">Edit</a>
                    <a href="${pageContext.request.contextPath}/AdminManagementServlet?action=delete&id=<%= rs.getInt("id") %>" class="delete-btn" onclick="return confirm('Are you sure you want to delete this admin?');">Delete</a>
                </td>
            </tr>
            <% 
                }
            } catch (Exception e) {
                e.printStackTrace();
            } finally {
                if (rs != null) rs.close();
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            }
            %>
        </table>

        <a href="adminDashboard.jsp">Back to Dashboard</a>
    </div>
</body>
</html>
