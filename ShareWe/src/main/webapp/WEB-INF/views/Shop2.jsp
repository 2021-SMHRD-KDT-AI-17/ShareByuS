<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Share We?</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Raleway:wght@600;800&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" />
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">

<!-- Libraries Stylesheet -->
<link href="resources/asset/lib/lightbox/css/lightbox.min.css"
	rel="stylesheet">
<link href="resources/asset/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">


<!-- Customized Bootstrap Stylesheet -->
<link href="resources/asset/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/asset/css/sw_style.css" rel="stylesheet">
    </head>
<body>

	<!-- Spinner Start -->
	<div id="spinner"
		class="show w-100 vh-100 bg-white position-fixed translate-middle top-50 start-50  d-flex align-items-center justify-content-center">
		<div class="spinner-grow text-primary" role="status"></div>
	</div>
	<!-- Spinner End -->


	<!-- Navbar start -->
	<div class="container-fluid fixed-top">
		<div class="container topbar bg-primary d-none d-lg-block">
			<div class="d-flex justify-content-between">
				<div class="top-info ps-2">
					<small class="me-3"></small> <small class="me-3"></small>
				</div>
				<div class="top-link pe-2">
					<a href="goMemberType" class="text-white"><small
						class="text-white mx-2">회원가입</small>|</a> <a href="goLogin"
						class="text-white"><small class="text-white mx-2">로그인</small></a>
				</div>
			</div>
		</div>
		<div class="container px-0">
			<nav class="navbar navbar-light bg-white navbar-expand-xl">
				<a href="goMain" class="navbar-brand"><h1
						class="text-primary display-6">Share We?</h1></a>
				<button class="navbar-toggler py-2 px-3" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars text-primary"></span>
				</button>
				<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
					<div class="navbar-nav mx-auto">
						<a href="gogBoard" class="nav-item nav-link" style="color: black">일반</a>
						<a href="shop.html" class="nav-item nav-link" style="color: black">기업</a>
						<!-- <a href="shop-detail.html" class="nav-item nav-link">Shop Detail</a> -->
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle active"
								data-bs-toggle="dropdown">카테고리</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="cart.html" class="dropdown-item">채소</a> <a
									href="chackout.html" class="dropdown-item">과일</a> <a
									href="testimonial.html" class="dropdown-item">생필품</a>
								<!--<a href="404.html" class="dropdown-item active">404 Page</a> -->
							</div>
						</div>
						<a href="contact.html" class="nav-item nav-link"
							style="color: black">Contact</a>
					</div>
					<div class="d-flex m-3 me-0">
						<button
							class="btn-search btn border border-secondary btn-md-square rounded-circle bg-white me-4"
							data-bs-toggle="modal" data-bs-target="#searchModal">
							<i class="fas fa-search text-primary"></i>
						</button>
						<a href="#" class="position-relative me-4 my-auto"> <i
							class="fa fa-shopping-bag fa-2x"></i> <span
							class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
							style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
						</a> <a href="#" class="my-auto"> <i class="fas fa-user fa-2x"></i>
						</a>
					</div>
				</div>
			</nav>
		</div>
	</div>
	<!-- Navbar End -->


	<!-- Modal Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-fullscreen">
			<div class="modal-content rounded-0">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Search by
						keyword</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body d-flex align-items-center">
					<div class="input-group w-75 mx-auto d-flex">
						<input type="search" class="form-control p-3"
							placeholder="keywords" aria-describedby="search-icon-1">
						<span id="search-icon-1" class="input-group-text p-3"><i
							class="fa fa-search"></i></span>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal Search End -->


	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6">마이페이지</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<li class="breadcrumb-item active text-white">아아</li>
		</ol>
	</div>
	<!-- Single Page Header End -->


	<!-- Fruits Shop Start-->
	<div class="container-fluid fruite py-5">
		<div class="container py-5">
			<h1 class="mb-4">마이 페이지지</h1>
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<div class="col-xl-3">
							<div class="input-group w-100 mx-auto d-flex">
								<input type="search" class="form-control p-3"
									placeholder="keywords" aria-describedby="search-icon-1">
								<span id="search-icon-1" class="input-group-text p-3"><i
									class="fa fa-search"></i></span>
							</div>
						</div>
						<div class="col-6"></div>
						<div class="col-xl-3">
							<div
								class="bg-light ps-3 py-3 rounded d-flex justify-content-between mb-4">
								<label for="fruits">Default Sorting:</label> <select id="fruits"
									name="fruitlist" class="border-0 form-select-sm bg-light me-3"
									form="fruitform">
									<option value="volvo">Nothing</option>
									<option value="saab">Popularity</option>
									<option value="opel">Organic</option>
									<option value="audi">Fantastic</option>
								</select>
							</div>
						</div>
					</div>
					<div class="row g-4">
						<div class="col-lg-3">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="mb-3">
										<h4>Categories</h4>
										<ul class="list-unstyled fruite-categorie">
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>Apples</a>
													<span>(3)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>Oranges</a>
													<span>(5)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>Strawbery</a>
													<span>(2)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>Banana</a>
													<span>(8)</span>
												</div>
											</li>
											<li>
												<div class="d-flex justify-content-between fruite-name">
													<a href="#"><i class="fas fa-apple-alt me-2"></i>Pumpkin</a>
													<span>(5)</span>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="mb-3">
										<h4 class="mb-2">Price</h4>
										<input type="range" class="form-range w-100" id="rangeInput"
											name="rangeInput" min="0" max="500" value="0"
											oninput="amount.value=rangeInput.value">
										<output id="amount" name="amount" min-velue="0"
											max-value="500" for="rangeInput">0</output>
									</div>
								</div>
								
								<div class="col-lg-12">
									<h4 class="mb-3">Featured products</h4>
									<div class="d-flex align-items-center justify-content-start">
										<div class="rounded me-4" style="width: 100px; height: 100px;">
											<img src="img/featur-1.jpg" class="img-fluid rounded" alt="">
										</div>
										
										<div>
											<h6 class="mb-2">Big Banana</h6>
											<div class="d-flex mb-2">
												<i class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="d-flex mb-2">
												<h5 class="fw-bold me-2">2.99 $</h5>
												<h5 class="text-danger text-decoration-line-through">4.11
													$</h5>
											</div>
										</div>
									</div>
									<div class="d-flex align-items-center justify-content-start">
										<div class="rounded me-4" style="width: 100px; height: 100px;">
											<img src="img/featur-2.jpg" class="img-fluid rounded" alt="">
										</div>
										<div>
											<h6 class="mb-2">Big Banana</h6>
											<div class="d-flex mb-2">
												<i class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="d-flex mb-2">
												<h5 class="fw-bold me-2">2.99 $</h5>
												<h5 class="text-danger text-decoration-line-through">4.11
													$</h5>
											</div>
										</div>
									</div>
									<div class="d-flex align-items-center justify-content-start">
										<div class="rounded me-4" style="width: 100px; height: 100px;">
											<img src="img/featur-3.jpg" class="img-fluid rounded" alt="">
										</div>
										<div>
											<h6 class="mb-2">Big Banana</h6>
											<div class="d-flex mb-2">
												<i class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star text-secondary"></i> <i
													class="fa fa-star"></i>
											</div>
											<div class="d-flex mb-2">
												<h5 class="fw-bold me-2">2.99 $</h5>
												<h5 class="text-danger text-decoration-line-through">4.11
													$</h5>
											</div>
										</div>
									</div>
									<div class="d-flex justify-content-center my-4">
										<a href="#"
											class="btn border border-secondary px-4 py-3 rounded-pill text-primary w-100">Vew
											More</a>
									</div>
								</div>
								<div class="col-lg-12">
									<div class="position-relative">
										<img src="img/banner-fruits.jpg"
											class="img-fluid w-100 rounded" alt="">
										<div class="position-absolute"
											style="top: 50%; right: 10px; transform: translateY(-50%);">
											<h3 class="text-secondary fw-bold">
												Fresh <br> Fruits <br> Banner
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-9">
							<div class="row g-4 justify-content-center">
								<c:forEach items="${cboard_list}" var="c">
									<div class="col-md-6 col-lg-6 col-xl-4">
										<div class="rounded position-relative fruite-item">
											<div class="fruite-img">
												<!-- <img src= class="img-fluid w-100 rounded-top" alt=""> -->
											</div>
											<div
												class="text-white bg-secondary px-3 py-1 rounded position-absolute"
												style="top: 10px; left: 10px;">${c.category}</div>
											<div
												class="p-4 border border-secondary border-top-0 rounded-bottom">
												<h4>${c.c_title}</h4>
												<h2>${c.c_writer}</h2>
												<p>${c.c_content}</p>
												<div class="d-flex justify-content-between flex-lg-wrap">
													<!-- 찜버튼(하트) 기능 여기 아래에 -->

													<!-- <p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p> -->
													<!-- <a href="#" class="btn border border-secondary rounded-pill px-3 text-primary"><i class="fa fa-shopping-bag me-2 text-primary"></i>찜</a> -->
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>


					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Fruits Shop End-->


	<!-- 메인 페이지 하단 -->
	<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
		<div class="container py-5">
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<div class="footer-item">
						<h4 class="text-light mb-3">Contact</h4>
						<p>Address: Gwangju, Republic of Korea</p>
						<p>Email: ShareByuS@gmail.com</p>
						<p>Do you want to share it with us?</p>
						<img src="img/payment.png" class="img-fluid" alt="">
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 메인 페이지 하단 End -->



	<!-- Back to Top -->
	<a href="#"
		class="btn btn-primary border-3 border-primary rounded-circle back-to-top"><i
		class="fa fa-arrow-up"></i></a>


	<!-- JavaScript Libraries -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="resources/asset/lib/easing/easing.min.js"></script>
	<script src="resources/asset/lib/waypoints/waypoints.min.js"></script>
	<script src="resources/asset/lib/lightbox/js/lightbox.min.js"></script>
	<script src="resources/asset/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/asset/js/main.js"></script>
</body>

</html>