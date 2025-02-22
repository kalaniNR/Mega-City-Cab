<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="com.datapackage.model.CartItem" %> <!-- Ensure correct package import -->
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Shopping Cart</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/bookingstyle.css">
    <style>
    /* General Styles */
body {
    font-family: Arial, sans-serif;
    background-color: #fff9db; /* Light Yellow Background */
    color: #333;
    text-align: center;
    margin: 0;
    padding: 0;
}

h1 {
    color: #d4a017; /* Dark Yellow */
    margin: 20px 0;
}

/* Table Styles */
table {
    width: 80%;
    margin: 20px auto;
    border-collapse: collapse;
    background-color: #fff;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
}

th, td {
    padding: 15px;
    border: 1px solid #d4a017;
    text-align: center;
}

th {
    background-color: #ffcc00; /* Bright Yellow */
    color: #333;
    font-size: 18px;
}

td {
    background-color: #fffde7; /* Lighter Yellow */
}

/* Buttons */
a, button {
    display: inline-block;
    margin: 15px;
    padding: 10px 15px;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    color: white;
    background-color: #d4a017; /* Dark Yellow */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: 0.3s;
}

button:hover, a:hover {
    background-color: #ffcc00;
}

/* Responsive Design */
@media (max-width: 768px) {
    table {
        width: 95%;
    }
    
    th, td {
        padding: 10px;
    }

    a, button {
        padding: 8px 12px;
        font-size: 14px;
    }
}
    
    </style>
</head>
<body>
    <h1>Shopping Cart</h1>

    <table border="1">
        <tr>
            <th>Car Name</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total</th>
        </tr>
        <%
            HttpSession sessionObj = request.getSession(false); // Avoid creating a new session
            List<CartItem> cart = (sessionObj != null) ? (List<CartItem>) sessionObj.getAttribute("cart") : null;

            if (cart != null && !cart.isEmpty()) {
                int totalPrice = 0;
                for (CartItem item : cart) {
                    int itemTotal = item.getPrice() * item.getQuantity();
                    totalPrice += itemTotal;
        %>
        <tr>
            <td><%= item.getCarName() %></td>
            <td>$<%= item.getPrice() %></td>
            <td><%= item.getQuantity() %></td>
            <td>$<%= itemTotal %></td>
        </tr>
        <% } %>
        <tr>
            <td colspan="3"><b>Total:</b></td>
            <td>$<%= totalPrice %></td>
        </tr>
        <% } else { %>
        <tr>
            <td colspan="4">Your cart is empty.</td>
        </tr>
        <% } %>
    </table>

    <a href="booking.jsp">Continue Shopping</a>
    <button type="reset">Clear</button>
</body>
</html>