<%@page import="kr.smhrd.entity.member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

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
	
	<%
		member loginMember = (member)session.getAttribute("loginMember");
	%>
		
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
                        <small class="me-3"></small>
                        <small class="me-3"></small>
                    </div>
					<div class="top-link pe-2">
						<%if (loginMember == null) {%>
							<a href="goLogin" class="text-white"><small class="text-white mx-2">로그인</small>/</a>
							<a href="goMemberType" class="text-white"><small class="text-white mx-2">회원가입</small></a>
						<%}else {%>
							<span><small class="text-white mx-2"><%=loginMember.getNick() %>님 환영합니다.</small></span>
							<%if(loginMember.getEmail().equals("admin")) {%>
								<a href="goAdmin" class="text-white"><small class="text-white ms-2">회원관리</small></a>
							<%} %>
							<a href="memberLogout" class="text-white"><small class="text-white mx-2">로그아웃</small></a>
						<%} %>
						
					</div>
				</div>
			</div>
				<div class="container px-0">
					<nav class="navbar navbar-light bg-white navbar-expand-xl">
						<a href="goMain" class="navbar-brand"><h1
								class="text-primary display-6" style="color:#009223 !important;">Share We?</h1></a>
						<button class="navbar-toggler py-2 px-3" type="button"
							data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
							<span class="fa fa-bars text-primary"></span>
						</button>
						<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
							<div class="navbar-nav mx-auto">
								<a href="goGeneral" class="nav-item nav-link active">일반</a> <a
									href="goCompany" class="nav-item nav-link">기업</a> <a
									href="gogBoard" class="nav-item nav-link">게시글작성</a>

									<!-- 기업회원일때만 나오게 -->
									<c:if test="${type eq 'company'}">
										<a href="gocBoard" class="nav-item nav-link">상품등록</a>
									</c:if>
								
								<div class="nav-item dropdown">
									<a href="#" class="nav-link dropdown-toggle"
										data-bs-toggle="dropdown">Pages</a>
									
									<!-- 카테고리별 페이지 이동 -->
									<div class="dropdown-menu m-0 bg-secondary rounded-0">
										<a href="cart.html" class="dropdown-item">식품</a>
	                                    <a href="chackout.html" class="dropdown-item">생필품</a>
	                                    <a href="testimonial.html" class="dropdown-item">항목3</a>
	                                    <a href="404.html" class="dropdown-item active">항목4</a>
									</div>
								</div>
								<a href="contact.html" class="nav-item nav-link">Contact</a>
							</div>
							<div class="d-flex m-3 me-0">
								<a href="goCart" class="position-relative me-4 my-auto"> <i
									class="fa fa-shopping-bag fa-2x"></i> <span
									class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
									style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
								</a> 
								<a href="#" class="my-auto"> <i class="fas fa-user fa-2x"></i></a>
							</div>
						</div>
					</nav>
				</div>
		</div>
		<!-- Navbar End -->
	
	
		<!-- Search Start -->
		<div class="modal fade" id="searchModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-fullscreen">
				0
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
	
	
		<!-- 메인 이미지 슬라이드 div Start -->
		<div class="container-fluid py-5 mb-5 hero-header">
			<div class="container py-5">
				<div class="row g-5 align-items-center">
					<div class="col-md-12 col-lg-7">
						<h4 class="mb-3 text-secondary">100% Organic Foods</h4>
						<h1 class="mb-5 display-3 text-primary">Organic Veggies &
							Fruits Foods</h1>
						
						<!-- 신고 임시 버튼 -->
						<a href="goReport"><button>신고하기</button></a>
						<!-- 신고 임시 버튼 -->
						
						<div class="position-relative mx-auto">
							<form action="search">
								<input
									class="form-control border-2 border-secondary w-75 py-3 px-4 rounded-pill"
									type="text" placeholder="Search" name="searchText">
								<input type="submit" value="검색"
									class="btn btn-primary border-2 border-secondary py-3 px-4 position-absolute rounded-pill text-white h-100"
									style="top: 0; right: 25%;"></input>
							</form>
						</div>
					</div>
					<div class="col-md-12 col-lg-5">
						<div id="carouselId" class="carousel slide position-relative"
							data-bs-ride="carousel">
							<div class="carousel-inner" role="listbox">
								<div class="carousel-item active rounded">
									<img src="resources/img/hero-img-1.png"
										class="img-fluid w-100 h-100 bg-secondary rounded"
										alt="First slide"> <a href="#"
										class="btn px-4 py-2 text-white rounded">슬라이드 사진1</a>
								</div>
								<div class="carousel-item rounded">
									<img src="resources/img/hero-img-2.jpg"
										class="img-fluid w-100 h-100 rounded" alt="Second slide">
									<a href="#" class="btn px-4 py-2 text-white rounded">슬라이드 사진2</a>
								</div>
							</div>
							<button class="carousel-control-prev" type="button"
								data-bs-target="#carouselId" data-bs-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Previous</span>
							</button>
							<button class="carousel-control-next" type="button"
								data-bs-target="#carouselId" data-bs-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="visually-hidden">Next</span>
							</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 메인 이미지 슬라이드 div End -->
	
		<!-- Share We 장점 Start -->
		<div class="container-fluid featurs py-5">
			<div class="container py-5">
				<div class="row g-4">
					<div class="col-md-6 col-lg-3">
						<div class="featurs-item text-center rounded bg-light p-4">
							<div
								class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
								<i class="fas fa-car-side fa-3x text-white"></i>
							</div>
							<div class="featurs-content text-center">
								<h5>Free Shipping</h5>
								<p class="mb-0">Free on order over $300</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="featurs-item text-center rounded bg-light p-4">
							<div
								class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
								<i class="fas fa-user-shield fa-3x text-white"></i>
							</div>
							<div class="featurs-content text-center">
								<h5>Security Payment</h5>
								<p class="mb-0">100% security payment</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="featurs-item text-center rounded bg-light p-4">
							<div
								class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
								<i class="fas fa-exchange-alt fa-3x text-white"></i>
							</div>
							<div class="featurs-content text-center">
								<h5>30 Day Return</h5>
								<p class="mb-0">30 day money guarantee</p>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-3">
						<div class="featurs-item text-center rounded bg-light p-4">
							<div
								class="featurs-icon btn-square rounded-circle bg-secondary mb-5 mx-auto">
								<i class="fa fa-phone-alt fa-3x text-white"></i>
							</div>
							<div class="featurs-content text-center">
								<h5>24/7 Support</h5>
								<p class="mb-0">Support every time fast</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- ShareWe의 장점 End -->
	
	
		<!-- 판매 상품 Start-->
		<div class="container-fluid fruite py-5">
			<div class="container py-5">
				<div class="tab-class text-center">
					<div class="row g-4">
						<div class="col-lg-4 text-start">
							<h1>Share We 상품</h1>
						</div>
						<div class="col-lg-8 text-end">
							<ul class="nav nav-pills d-inline-flex text-center mb-5">
								<li class="nav-item"><a
									class="d-flex m-2 py-2 bg-light rounded-pill active"
									data-bs-toggle="pill" href="#tab-1"> <span class="text-dark"
										style="width: 130px;">All Products</span>
								</a></li>
								<li class="nav-item"><a
									class="d-flex py-2 m-2 bg-light rounded-pill"
									data-bs-toggle="pill" href="#tab-2"> <span class="text-dark"
										style="width: 130px;">Vegetables</span>
								</a></li>
								<li class="nav-item"><a
									class="d-flex m-2 py-2 bg-light rounded-pill"
									data-bs-toggle="pill" href="#tab-3"> <span class="text-dark"
										style="width: 130px;">Fruits</span>
								</a></li>
								<li class="nav-item"><a
									class="d-flex m-2 py-2 bg-light rounded-pill"
									data-bs-toggle="pill" href="#tab-4"> <span class="text-dark"
										style="width: 130px;">Bread</span>
								</a></li>
								<li class="nav-item"><a
									class="d-flex m-2 py-2 bg-light rounded-pill"
									data-bs-toggle="pill" href="#tab-5"> <span class="text-dark"
										style="width: 130px;">Meat</span>
								</a></li>
							</ul>
						</div>
					</div>
					<div class="tab-content">
						<div id="tab-1" class="tab-pane fade show p-0 active">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="row g-4">
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-5.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Grapes</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-5.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Grapes</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-2.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Raspberries</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-4.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Apricots</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-3.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Banana</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-1.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Oranges</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-2.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Raspberries</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-5.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Grapes</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="tab-2" class="tab-pane fade show p-0">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="row g-4">
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-5.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Grapes</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-2.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Raspberries</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="tab-3" class="tab-pane fade show p-0">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="row g-4">
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-1.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Oranges</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-6.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Apple</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="tab-4" class="tab-pane fade show p-0">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="row g-4">
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-5.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Grapes</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-4.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Apricots</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div id="tab-5" class="tab-pane fade show p-0">
							<div class="row g-4">
								<div class="col-lg-12">
									<div class="row g-4">
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-3.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Banana</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-2.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Raspberries</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
										<div class="col-md-6 col-lg-4 col-xl-3">
											<div class="rounded position-relative fruite-item">
												<div class="fruite-img">
													<img src="img/fruite-item-1.jpg"
														class="img-fluid w-100 rounded-top" alt="">
												</div>
												<div
													class="text-white bg-secondary px-3 py-1 rounded position-absolute"
													style="top: 10px; left: 10px;">Fruits</div>
												<div
													class="p-4 border border-secondary border-top-0 rounded-bottom">
													<h4>Oranges</h4>
													<p>Lorem ipsum dolor sit amet consectetur adipisicing
														elit sed do eiusmod te incididunt</p>
													<div class="d-flex justify-content-between flex-lg-wrap">
														<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
														<a href="#"
															class="btn border border-secondary rounded-pill px-3 text-primary"><i
															class="fa fa-shopping-bag me-2 text-primary"></i> Add to
															cart</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 판매 상품 End-->
	
	
		<!-- Vesitable Shop Start-->
		<div class="container-fluid vesitable py-5">
			<div class="container py-5">
				<h1 class="mb-0">Fresh Organic Vegetables</h1>
				<div class="owl-carousel vegetable-carousel justify-content-center">
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-6.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Parsely</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-1.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Parsely</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$4.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-3.png"
								class="img-fluid w-100 rounded-top bg-light" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Banana</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-4.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Bell Papper</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-5.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Potatoes</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-6.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Parsely</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-5.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Potatoes</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div
						class="border border-primary rounded position-relative vesitable-item">
						<div class="vesitable-img">
							<img src="img/vegetable-item-6.jpg"
								class="img-fluid w-100 rounded-top" alt="">
						</div>
						<div
							class="text-white bg-primary px-3 py-1 rounded position-absolute"
							style="top: 10px; right: 10px;">Vegetable</div>
						<div class="p-4 rounded-bottom">
							<h4>Parsely</h4>
							<p>Lorem ipsum dolor sit amet consectetur adipisicing elit sed
								do eiusmod te incididunt</p>
							<div class="d-flex justify-content-between flex-lg-wrap">
								<p class="text-dark fs-5 fw-bold mb-0">$7.99 / kg</p>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Vesitable Shop End -->
	
	
		<!-- 중간 배너 -->
		<div class="container-fluid banner bg-secondary my-5">
			<div class="container py-5">
				<div class="row g-4 align-items-center">
					<div class="col-lg-6">
						<div class="py-4">
							<h1 class="display-3 text-white">Fresh Exotic Fruits</h1>
							<p class="fw-normal display-3 text-dark mb-4">in Our Store</p>
							<p class="mb-4 text-dark">The generated Lorem Ipsum is
								therefore always free from repetition injected humour, or
								non-characteristic words etc.</p>
							<a href="#"
								class="banner-btn btn border-2 border-white rounded-pill text-dark py-3 px-5">BUY</a>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="position-relative">
							<img src="img/baner-1.png" class="img-fluid w-100 rounded" alt="">
							<div
								class="d-flex align-items-center justify-content-center bg-white rounded-circle position-absolute"
								style="width: 140px; height: 140px; top: 0; left: 0;">
								<h1 style="font-size: 100px;">1</h1>
								<div class="d-flex flex-column">
									<span class="h2 mb-0">50$</span> <span
										class="h4 text-muted mb-0">kg</span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- 중간 배너 End -->
	
	
		<!-- Bestsaler Product Start -->
		<div class="container-fluid py-5">
			<div class="container py-5">
				<div class="text-center mx-auto mb-5" style="max-width: 700px;">
					<h1 class="display-4">Bestseller Products</h1>
					<p>Latin words, combined with a handful of model sentence
						structures, to generate Lorem Ipsum which looks reasonable.</p>
				</div>
				<div class="row g-4">
					<div class="col-lg-6 col-xl-4">
						<div class="p-4 rounded bg-light">
							<div class="row align-items-center">
								<div class="col-6">
									<img src="img/best-product-1.jpg"
										class="img-fluid rounded-circle w-100" alt="">
								</div>
								<div class="col-6">
									<a href="#" class="h5">Organic Tomato</a>
									<div class="d-flex my-3">
										<i class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
									</div>
									<h4 class="mb-3">3.12 $</h4>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="p-4 rounded bg-light">
							<div class="row align-items-center">
								<div class="col-6">
									<img src="img/best-product-2.jpg"
										class="img-fluid rounded-circle w-100" alt="">
								</div>
								<div class="col-6">
									<a href="#" class="h5">Organic Tomato</a>
									<div class="d-flex my-3">
										<i class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
									</div>
									<h4 class="mb-3">3.12 $</h4>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="p-4 rounded bg-light">
							<div class="row align-items-center">
								<div class="col-6">
									<img src="img/best-product-3.jpg"
										class="img-fluid rounded-circle w-100" alt="">
								</div>
								<div class="col-6">
									<a href="#" class="h5">Organic Tomato</a>
									<div class="d-flex my-3">
										<i class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
									</div>
									<h4 class="mb-3">3.12 $</h4>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="p-4 rounded bg-light">
							<div class="row align-items-center">
								<div class="col-6">
									<img src="img/best-product-4.jpg"
										class="img-fluid rounded-circle w-100" alt="">
								</div>
								<div class="col-6">
									<a href="#" class="h5">Organic Tomato</a>
									<div class="d-flex my-3">
										<i class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
									</div>
									<h4 class="mb-3">3.12 $</h4>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="p-4 rounded bg-light">
							<div class="row align-items-center">
								<div class="col-6">
									<img src="img/best-product-5.jpg"
										class="img-fluid rounded-circle w-100" alt="">
								</div>
								<div class="col-6">
									<a href="#" class="h5">Organic Tomato</a>
									<div class="d-flex my-3">
										<i class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
									</div>
									<h4 class="mb-3">3.12 $</h4>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-xl-4">
						<div class="p-4 rounded bg-light">
							<div class="row align-items-center">
								<div class="col-6">
									<img src="img/best-product-6.jpg"
										class="img-fluid rounded-circle w-100" alt="">
								</div>
								<div class="col-6">
									<a href="#" class="h5">Organic Tomato</a>
									<div class="d-flex my-3">
										<i class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i
											class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
									</div>
									<h4 class="mb-3">3.12 $</h4>
									<a href="#"
										class="btn border border-secondary rounded-pill px-3 text-primary"><i
										class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6 col-xl-3">
						<div class="text-center">
							<img src="img/fruite-item-1.jpg" class="img-fluid rounded" alt="">
							<div class="py-4">
								<a href="#" class="h5">Organic Tomato</a>
								<div class="d-flex my-3 justify-content-center">
									<i class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
								</div>
								<h4 class="mb-3">3.12 $</h4>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6 col-xl-3">
						<div class="text-center">
							<img src="img/fruite-item-2.jpg" class="img-fluid rounded" alt="">
							<div class="py-4">
								<a href="#" class="h5">Organic Tomato</a>
								<div class="d-flex my-3 justify-content-center">
									<i class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
								</div>
								<h4 class="mb-3">3.12 $</h4>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6 col-xl-3">
						<div class="text-center">
							<img src="img/fruite-item-3.jpg" class="img-fluid rounded" alt="">
							<div class="py-4">
								<a href="#" class="h5">Organic Tomato</a>
								<div class="d-flex my-3 justify-content-center">
									<i class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
								</div>
								<h4 class="mb-3">3.12 $</h4>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-6 col-xl-3">
						<div class="text-center">
							<img src="img/fruite-item-4.jpg" class="img-fluid rounded" alt="">
							<div class="py-2">
								<a href="#" class="h5">Organic Tomato</a>
								<div class="d-flex my-3 justify-content-center">
									<i class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i
										class="fas fa-star text-primary"></i> <i class="fas fa-star"></i>
								</div>
								<h4 class="mb-3">3.12 $</h4>
								<a href="#"
									class="btn border border-secondary rounded-pill px-3 text-primary"><i
									class="fa fa-shopping-bag me-2 text-primary"></i> Add to cart</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Bestsaler Product End -->
	
	
		<!-- 메인 페이지 하단 -->
		<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
			<div class="container py-5">
				<div class="row g-5">
					<div class="col-lg-3 col-md-6">
						<div class="footer-item">
							<h4 class="text-light mb-3">Contact</h4>
							<p>Address: 1429 Netus Rd, NY 48247</p>
							<p>Email: Example@gmail.com</p>
							<p>Phone: +0123 4567 8910</p>
							<p>Payment Accepted</p>
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