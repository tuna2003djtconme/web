<%@ page import="java.util.Collection"%>
<%@ page import="Entity.Products"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<!-- link bootstrap -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous" />
<!-- link slick -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<!-- link css -->
<link rel="stylesheet" href="./CSS/Funiture.css" />
</head>
<body>
	<!-- heading -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light;">
		<div class="container-fluid">
			<a class="navbar-brand" href="#">Funiro.</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mb-2 mb-lg-0">
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown1"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Products </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider" />
							</li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
						role="button" data-bs-toggle="dropdown" aria-expanded="false">
							Rooms </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li>
								<hr class="dropdown-divider" />
							</li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Inspirations</a>
					</li>
				</ul>
				<div class="menu">
					<form class="d-flex">
						<div class="mix">
							<img src="./Image/search.svg" alt="Search" /> <input
								class="form-control me-2" type="Search"
								placeholder="Search for minimalist chair" aria-label="Search" />
						</div>
					</form>
					<div class="icon">
						<img src="./Image/heart.svg" alt="Heart" /> <img
							src="./Image/cart.svg" alt="cart" /> <a href="dangnhap.jsp"><img
							src="./Image/login.svg" alt="login" /></a>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- banner -->
	<div class="banner">
		<img class="image1"
			src="https://images.unsplash.com/photo-1555041469-a586c61ea9bc?auto=format&fit=crop&q=80&w=1470&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
			alt="" />
		<div class="high-quality">
			<h1>High-Quality Furniture Just For You</h1>
			<p>Our furniture is made from selected and best quality materials
				that are suitable for your dream home</p>
			<button type="button" class="btn btn-secondary">Shop now</button>
		</div>
		<div class="Bohauss">
			<span>Bohauss</span>
			<p>Luxury big sofa 2-seat</p>
			<div class="rp">
				<span>Rp 17.000.000</span> <img class="icon"
					src="./Image/arrow_right.svg" alt="" />
			</div>
		</div>
	</div>
	<!-- benefit -->
	<div class="benefit-group">
		<div class="benefit">
			<img src="./Image/cup.svg" alt="cup" />
			<div class="text">
				<span>High Quality</span>
				<p>crafted from top materials</p>
			</div>
		</div>
		<div class="benefit">
			<img src="./Image/verified.svg" alt="" />
			<div class="text">
				<span>Warrany Protection</span>
				<p>Over 2 years</p>
			</div>
		</div>
		<div class="benefit">
			<img src="./Image/ship.svg" alt="" />
			<div class="text">
				<span>Free Shipping</span>
				<p>Order over 150 $</p>
			</div>
		</div>
		<div class="benefit">
			<img src="./Image/support.svg" alt="" />
			<div class="text">
				<span>24 / 7 Support</span>
				<p>Dedicated support</p>
			</div>
		</div>
	</div>
	<!-- Our products -->
	<div class="products">
		<h1>Our Products</h1>
		<c:forEach var="o" items="${products}">
			<div class="products-groups">
				<div class="product-items">
					<div class="image-products">
						<img src="${o.thumbnail}" alt="" />
						<div class="discounts">
							<span>${o.discount}</span>
						</div>
					</div>
					<div class="products-text">
						<h5>${o.title}</h5>
						<p>${o.description_PRODUCT}</p>
						<div class="prices">
							<span>${o.price}</span>
							<p>Rp 3.500.000</p>
						</div>
					</div>
					<!-- hover -->
					<div class="overlay">
						<div class="wrapper">
							<button>Add to cart</button>
							<div class="like-and-share">
								<div class="share">
									<p class="material-symbols-outlined">share</p>
									<p>Share</p>
								</div>
								<div class="Like">
									<p class="material-symbols-outlined">favorite</p>
									<p>Like</p>
								</div>
							</div>
						</div>
					</div>
				</div>
		</c:forEach>
	</div>
	<div class="button-end">
		<button>Show More</button>
	</div>
	</div>
	<!-- tip and trick -->
	<div class="tip-n-trick">
		<h1>Tips & Tricks</h1>
		<div class="group">
			<div class="item">
				<img src="../assert/Rectangle 32.png" alt="" />
				<div class="text">
					<span>Solution for clean look working space</span>
					<p>10 jan 2020</p>
				</div>
			</div>
			<div class="item">
				<img src="../assert/Rectangle 32.png" alt="" />
				<div class="text">
					<span>Solution for clean look working space</span>
					<p>10 jan 2020</p>
				</div>
			</div>
			<div class="item">
				<img src="../assert/Rectangle 32.png" alt="" />
				<div class="text">
					<span>Solution for clean look working space</span>
					<p>10 jan 2020</p>
				</div>
			</div>
			<div class="item">
				<img src="../assert/Rectangle 32.png" alt="" />
				<div class="text">
					<span>Solution for clean look working space</span>
					<p>10 jan 2020</p>
				</div>
			</div>
			<div class="item">
				<img src="../assert/Rectangle 32.png" alt="" />
				<div class="text">
					<span>Solution for clean look working space</span>
					<p>10 jan 2020</p>
				</div>
			</div>
		</div>
	</div>
	<!-- image -->
	<div class="photo">
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1670950411934-e21abf39191e?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1688125414593-391cf90f3103?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1678074057896-eee996d4a23e?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjJ8fGZ1bml0dXJlfGVufDB8fDB8fHww"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1663013668671-d453f319544f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fGZ1bml0dXJlfGVufDB8fDB8fHww"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1683129613576-cb27862274c2?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzR8fGZ1bml0dXJlfGVufDB8fDB8fHww"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1683129611580-47d9e0c46fdd?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzN8fGZ1bml0dXJlfGVufDB8fDB8fHww"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1682484702952-e3bb37dfec97?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTd8fGZ1bml0dXJlfGVufDB8fDB8fHww"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://images.unsplash.com/photo-1530018607912-eff2daa1bac4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8dGFibGV8ZW58MHx8MHx8fDA%3D"
				alt="" />
		</div>
		<div class="photo-item">
			<img
				src="https://plus.unsplash.com/premium_photo-1676999260189-5412ac9aeb04?q=80&w=1444&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
				alt="" />
		</div>
	</div>
	<!-- Footer -->
	<div class="container my-">
		<footer
			class="text-center text-lg-start border border-white mt-xl-5 pt-4">
			<!-- Grid container -->
			<div class="container p-4">
				<!--Grid row-->
				<div class="row">
					<!--Grid column 1-->
					<div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
						<h5 class="text-uppercase mb-4">Funiro.</h5>

						<ul class="list-unstyled mb-4">
							<li>
								<p>Worldwide furniture store since 2020. We sell over 1000+
									branded products on our website</p>
							</li>
							<li><p class="small">Sawojajar Malang, Indonesia</p></li>
							<li><p class="small">+6289 456 3455</p></li>
							<li><a href="#">www.funiro.com</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column 2-->
					<div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
						<h5 class="text-uppercase mb-4">Menu</h5>

						<ul class="list-unstyled">
							<li><a href="#!" class="text-white">Products</a></li>
							<li><a href="#!" class="text-white">Rooms</a></li>
							<li><a href="#!" class="text-white">Inspirations</a></li>
							<li><a href="#!" class="text-white">About Us</a></li>
							<li><a href="#!" class="text-white">Terms & Policy</a></li>
						</ul>
					</div>
					<!--Grid column-->

					<!--Grid column 3-->
					<div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
						<h5 class="text-uppercase mb-4">Account</h5>

						<ul class="list-unstyled">
							<li><a href="#!" class="text-white">My Account</a></li>
							<li><a href="#!" class="text-white">Checkout</a></li>
							<li><a href="#!" class="text-white">My Cart</a></li>
							<li><a href="#!" class="text-white">My catalog</a></li>
						</ul>
					</div>
					<!--Grid column 4-->
					<div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
						<h5 class="text-uppercase mb-4">Stay Connected</h5>

						<ul class="list-unstyled">
							<li><a href="https://www.facebook.com/thuythuyn1/"
								class="text-white">Facebook</a></li>
							<li><a
								href="https://www.instagram.com/thuythuyzuizexinhdepne/"
								class="text-white">Instagram</a></li>
							<li><a href="#!" class="text-white">Twitter</a></li>
						</ul>
					</div>

					<!--Grid column-->
					<div class="col-lg-3 col-md-6 mb-4 mb-lg-0">
						<h5 class="text-uppercase mb-4">Sign up to our newsletter</h5>
						<div class="form">
							<div class="form-outline form-white mb-4">
								<input type="text" placeholder="Email address" />
							</div>

							<button type="submit" class="btn btn-outline-white btn-block">
								<ion-icon name="paper-plane-outline"></ion-icon>
							</button>
						</div>
					</div>
					<!--Grid column-->
				</div>
				<!--Grid row-->
			</div>
			<!-- Grid container -->

			<!-- Copyright -->
			<div class="text-center p-3 border-top border-white">
				© 2020 Copyright: <a class="text-white"
					href="https://mdbootstrap.com/">MDBootstrap.com</a>
			</div>
			<!-- Copyright -->
		</footer>
	</div>

	<script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<script src="./JS/Funiture.js"></script>
	<script type="module"
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
	<!-- link icon -->
	<script nomodule
		src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</body>
</html>
