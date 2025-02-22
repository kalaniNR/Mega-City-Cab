<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Taxi & Car Rental Service</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/Css/homeStyle.css">

</head>
<body>

	<header class="sticky-header">
		<div class="logo">Kuber</div>
		<nav>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Gallery</a></li>
				<li><a href="#">Blog</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="#">Help</a></li>
			</ul>
		</nav>
	</header>



	<section class="hero">
		<div class="overlay"></div>
		<div class="hero-content">
			<h2>Need a Ride? Just Call</h2>
			<h1>911 999 911</h1>
			<p>Enjoy city breaks or extended holidays in comfort. Book your
				taxi now!</p>
			<button class="btn">Call for Taxi</button>
		</div>
		<div class="booking-form">
			<h2>Book Your Taxi Online</h2>
			<form action="${pageContext.request.contextPath}/BookingServlet" method="post">
				<input type="text" id="name" name="name" placeholder="Your name"required> 
				<input type="email" id="email" name="email"placeholder="Email address" required>
				<input type="text"id="phone" name="phone" placeholder="Phone number" required>
				<input type="text" id="fromLocation" name="fromLocation"placeholder="From Destination" required>
				<input type="text"id="toLocation" name="toLocation" placeholder="To Destination"required> 
				<input type="datetime-local" id="datetime"name="datetime" required>
				<a href="booking.jsp">
				<button type="submit" class="btn">Make Reservation</button>
				</a>
				


			</form>
		</div>
	</section>

	<!-- About Section -->
	<section class="about" id="about">
		<h2>About Us</h2>
		<p>We are a trusted taxi and car rental service providing safe and
			reliable rides to our customers. With a fleet of modern vehicles and
			professional drivers, we ensure your journey is comfortable and
			hassle-free.</p>
	</section>

	<!-- Services Section -->
	<section class="services" id="services">
		<h2>Our Services</h2>
		<div class="service-list">
			<div class="service-item">
				<h3>Airport Pickup</h3>
				<p>We provide fast and convenient airport taxi services 24/7.</p>
			</div>
			<div class="service-item">
				<h3>City Tours</h3>
				<p>Explore the city with our comfortable and guided tours.</p>
			</div>
			<div class="service-item">
				<h3>Corporate Rides</h3>
				<p>Professional car rental solutions for businesses and
					executives.</p>
			</div>
			<div class="service-item">
				<h3>Long Distance Travel</h3>
				<p>Travel between cities with affordable and comfortable rides.</p>
			</div>
		</div>
	</section>

	<!-- Gallery Section -->
	<section class="gallery" id="gallery">
		<h2>Gallery</h2>
		<div class="gallery-container">
			<img src="images/car1.jpg" alt="Taxi Image 1"> <img
				src="taxi2.jpg" alt="Taxi Image 2"> <img src="taxi3.jpg"
				alt="Taxi Image 3">
		</div>
	</section>

	<!-- Blog Section -->
	<section class="blog" id="blog">
		<h2>Latest News & Blogs</h2>
		<article>
			<h3>5 Tips for Safe Taxi Travel</h3>
			<p>Stay safe while using taxi services with these essential
				tips...</p>
		</article>
		<article>
			<h3>Why Choose Our Taxi Service?</h3>
			<p>Learn what makes us the best choice for your travel needs...</p>
		</article>
	</section>

	<!-- Help Section -->
	<section class="help" id="help">
		<h2>Help & Support</h2>
		<p>Have questions? Reach out to our 24/7 customer support team.</p>
		<button class="btn">Contact Support</button>
	</section>

	<!-- Contact Section -->
	<section class="contact-section" id="contact">
		<h2>Get in touch with us and ask your questions!</h2>

		<div class="contact-info">
			<p>Email: support@kubertaxi.com</p>
			<p>Phone: 911 999 911</p>
		</div>

		<form class="contact-form">
			<input type="text" name="name" placeholder="Your Name" required>
			<input type="email" name="email" placeholder="Your Email" required>
			<input type="text" name="phone" placeholder="Your Phone" required>
			<select name="department">
				<option value="business">Business Department</option>
				<option value="support">Support</option>
				<option value="sales">Sales</option>
			</select>
			<textarea name="message" rows="4" placeholder="Your Message" required></textarea>
			<button type="submit">Submit</button>
		</form>

		<div class="social-icons">
			<a href="#">&#xf099;</a>
			<!-- Facebook -->
			<a href="#">&#xf09a;</a>
			<!-- Twitter -->
			<a href="#">&#xf16d;</a>
			<!-- Instagram -->
		</div>
	</section>

	<footer class="footer-section"
		style="background: #FFD700; padding: 10px 0; text-align: center; color: #000;">
		<div class="container">
			<div class="footer-content">
				<div class="footer-logo">
					<h2 style="margin: 0; font-size: 24px; font-weight: bold;">Kuber
						Taxi</h2>
				</div>
				<nav class="footer-nav">
					<ul
						style="list-style: none; padding: 0; display: flex; justify-content: center; gap: 15px;">
						<li><a href="#home"
							style="color: #000; text-decoration: none; font-weight: bold;">Home</a></li>
						<li><a href="#about"
							style="color: #000; text-decoration: none; font-weight: bold;">About</a></li>
						<li><a href="#services"
							style="color: #000; text-decoration: none; font-weight: bold;">Services</a></li>
						<li><a href="#gallery"
							style="color: #000; text-decoration: none; font-weight: bold;">Gallery</a></li>
						<li><a href="#blog"
							style="color: #000; text-decoration: none; font-weight: bold;">Blog</a></li>
						<li><a href="#contact"
							style="color: #000; text-decoration: none; font-weight: bold;">Contact</a></li>
					</ul>
				</nav>
				<div class="footer-contact">
					<p>
						Email: <a href="mailto:support@kubertaxi.com"
							style="color: #000; text-decoration: none;">support@kubertaxi.com</a>
					</p>
					<p>
						Phone: <a href="tel:911999911"
							style="color: #000; text-decoration: none;">911 999 911</a>
					</p>
				</div>
				<div class="social-icons" style="margin-top: 10px;">
					<a href="#"
						style="margin: 0 10px; color: #000; font-size: 20px; text-decoration: none;">&#xf099;</a>
					<a href="#"
						style="margin: 0 10px; color: #000; font-size: 20px; text-decoration: none;">&#xf09a;</a>
					<a href="#"
						style="margin: 0 10px; color: #000; font-size: 20px; text-decoration: none;">&#xf16d;</a>
				</div>
				<p style="margin-top: 15px; font-size: 14px;">&copy; 2025 Kuber
					Taxi. All Rights Reserved.</p>
			</div>
		</div>
	</footer>




</body>
</html>