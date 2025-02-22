<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Booking</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/Css/bookingstyle.css">
    
</head>
<body>
    <header>
        <h1>Book Your Car</h1>
    </header>
    
    <section class="car-list">
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car1.jpg" alt="Car 1">
            <p>Price: $259</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 1">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car2.jpg" alt="Car 2">
            <p>Price: $259</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 2">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car3.jpg" alt="Car 3">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 3">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car4.jpg" alt="Car 4">
            <p>Price: $200</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 4">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car5.jpg" alt="Car 5">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 5">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car6.jpg" alt="Car 6">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 6">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car1.jpg" alt="Car 7">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 7">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car2.jpg" alt="Car 8">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 8">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car3.jpg" alt="Car 9">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 9">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car4.jpg" alt="Car 10">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 10">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
                <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car5.jpg" alt="Car 11">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 11">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
        <div class="car-item">
            <img src="${pageContext.request.contextPath}/images/car6.jpg" alt="Car 12">
            <p>Price: $300</p>
            <form action="${pageContext.request.contextPath}/CartServlet" method="post">
                <input type="hidden" name="carName" value="Car 12">
                <input type="hidden" name="price" value="259">
                <button type="submit">Add to Cart</button>
            </form>
        </div>
    </section>
    
     <a href="Views/cart.jsp">Go to Cart</a>
     
    
    
</body>
</html>