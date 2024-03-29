
<%@page import="kr.smhrd.entity.g_board"%>

<%@page import="kr.smhrd.entity.member"%>
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


<style>
#topMenu {
	height: 30px;
	width: 850px;
}

#topMenu ul li {
	list-style: none;
	color: white;
	background-color: #009223;
	float: left;
	line-height: 50px;
	vertical-align: middle;
	text-align: center;
}

#topMenu .menuLink {
	text-decoration: none;
	color: white;
	display: block;
	width: 150px;
	font-size: 12px;
	font-weight: bold;
	font-family: "Trebuchet MS", Dotum, Arial;
}

#topMenu .menuLink:hover {
	color: black;
	background-color: #badc58;
}

.filters_menu {
    display: list-item;
    text-align: -webkit-match-parent;
    unicode-bidi: isolate;
}
</style>

</head>
<body>
<%
		member loginMember = (member)session.getAttribute("loginMember");
		g_board g_board = (g_board)session.getAttribute("g_board");
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
					<small class="me-3"></small> <small class="me-3"></small>
				</div>
				<div class="top-link pe-2">
					<%if (loginMember == null) {%>
							<a href="goLogin" class="text-white"><small class="text-white mx-2">로그인</small>/</a>
							<a href="goMemberType" class="text-white"><small class="text-white mx-2">회원가입</small></a>
						<%}else {%>
							<span><small class="text-white mx-2"><%=loginMember.getNick() %>님 환영합니다.</small></span>
							<%if(loginMember.getEmail().equals("admin")) {%>
								<a href="#" class="text-white"><small class="text-white ms-2">회원관리</small></a>
							<%} %>
							<a href="memberLogout" class="text-white"><small class="text-white mx-2">로그아웃</small></a>
						<%} %>
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
						<a href="goGeneral" class="nav-item nav-link" style="color: black">일반</a>
						<a href="goCompany" class="nav-item nav-link" style="color: black">기업</a>
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
							<a href="goCart" class="position-relative me-4 my-auto"> <i
								class="fa fa-shopping-bag fa-2x"></i> <span
								class="position-absolute bg-secondary rounded-circle d-flex align-items-center justify-content-center text-dark px-1"
								style="top: -5px; left: 15px; height: 20px; min-width: 20px;">3</span>
							</a> <a href="goMyPage" class="my-auto"> <i
								class="fas fa-user fa-2x"></i></a>
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
			<li class="breadcrumb-item active text-white">My Page</li>
		</ol>
	</div>
	<!-- Single Page Header End -->


	<!-- Fruits Shop Start-->


	<div class="container-fluid fruite py-5" align="center">

		<div class="card" style="width: 1000px" align="center">
			<table width="1000px">
			<tr>
			<td>
			<img src="resources/img/avatar.jpg" class="card-img-top"
				style="width: 200px; height: 200px; margin: 50px;" align="left">
			</td>
			<td width="600px" border-top="0px">
				<div class="sc-eKZiaR jfoJEs">
					
					<script type="text/javascript">
						 function div_show() {  
								document.getElementById("ReNick").style.display = "block"; 
								document.getElementById("none").style.display = "none"; } 
						 function div_hide() {  
								document.getElementById("ReNick").style.display = "none";
								document.getElementById("none").style.display = "block"; }
					</script>
					
					<div> 
						<h5>${loginMember.nick}</h5>
						<input style="color: white" id="none" type="button" class="btn btn-primary" onclick="div_show();" value="닉네임 수정">
						
						<div id="ReNick" style="display:none">
							<form action="UpdateNick">
							<input type="hidden" value="${loginMember.email}" name="email">
							<input type="text" value="${loginMember.nick}" name="nick">
							<button type="submit" onclick="div_hide();">확인</button>
							</form>
						</div>
							
						<p><%=loginMember.getEmail() %></p>
						
					</div>
			</td>
			
				<td>
					<div class="card-body" style="width: 200px">
						<a href="goUpdateMember" align="left" class="btn btn-primary" style="color: white">회원정보 수정</a>
					</div>
				</td>
										
			</div>	
		
			</table>
		</div>


		<br> <br> <br>
		</div>

	<div class="row g-4 justify-content-center" id="categoryBox"
		style="width:auto;" >



		<ul class="filters_menu" >


			<a onclick="getCategory()" id="clickVege">
			<li class="list-group-item">관심 카테고리</li></a>

			<a onclick="getBoard()" id="clickVege">
			<li class="list-group-item">My 게시글</li></a>

			<a onclick="getReview()" id="clickVege">
			<li class="list-group-item">리뷰관리</li></a>

			<a onclick="getSub()" id="clickVege">
			<li class="list-group-item">구독권</li></a>

			<a onclick="getJoin()" id="clickVege">
			<li class="list-group-item">Share 참여 내역</li></a>




		</ul>
		


		<script type="text/javascript">
			function getBoard() {
				
				document.getElementById("myCategory").style.display = "none";
				document.getElementById("myBoard").style.display = "block";
				document.getElementById("myReview").style.display = "none";
				document.getElementById("mySub").style.display = "none";
				document.getElementById("myJoin").style.display = "none";
			}
		</script>
		<script type="text/javascript">
			function getCategory() {
				document.getElementById("myCategory").style.display = "block";
				document.getElementById("myBoard").style.display = "none";
				document.getElementById("myReview").style.display = "none";
				document.getElementById("mySub").style.display = "none";
				document.getElementById("myJoin").style.display = "none";
				
			}
		</script>
		<script type="text/javascript">
			function getReview() {
				document.getElementById("myCategory").style.display = "none";
				document.getElementById("myBoard").style.display = "none";
				document.getElementById("myReview").style.display = "block";
				document.getElementById("mySub").style.display = "none";
				document.getElementById("myJoin").style.display = "none";
			}
		</script>
		<script type="text/javascript">
			function getSub() {
				document.getElementById("myCategory").style.display = "none";
				document.getElementById("myBoard").style.display = "none";
				document.getElementById("myReview").style.display = "none";
				document.getElementById("mySub").style.display = "block";
				document.getElementById("myJoin").style.display = "none";
			}
		</script>
		<script type="text/javascript">
			function getJoin() {
				document.getElementById("myCategory").style.display = "none";
				document.getElementById("myBoard").style.display = "none";
				document.getElementById("myReview").style.display = "none";
				document.getElementById("mySub").style.display = "none";
				document.getElementById("myJoin").style.display = "block";				
			}
		</script>

	
	
	<div class="col-lg-9"  id="myBoard" style="display: none">

		<c:if test="${loginMember.type == 2 || loginMember.type == 3}">
			<div class="row g-4 justify-content-center">
				<div class="col-md-6 col-lg-6 col-xl-4" style="width: 1200px">
					<div class="rounded position-relative fruite-item">
						<c:forEach items="${gboard_list}" var="g">
						
								<div align="justify" align="left" style="width: 50px">
									<a href="G_BoardContent?g_num=${g.g_num}"> 
									<img alt="" src="resources/g_Image/${g.g_img1}" align="left"
										style="margin-right: 30px; width: 100px; height: 80px; object-fit: fill;"></a>
									<a href="G_BoardContent?g_num=${g.g_num}"><h3 >${g.g_title}</h3></a>
									<strong>작성일 ${g.g_w_date }</strong>
									<hr>
								</div>
							
						</c:forEach>
					</div>
				</div>
			</div>
		</c:if>
		
		<c:if test="${loginMember.type == 1}">
			<div class="row g-4 justify-content-center">
				<div class="col-md-6 col-lg-6 col-xl-4" style="width: 1200px">
					<div class="rounded position-relative fruite-item">
						<c:forEach items="${cboard_list}" var="c">
							<div class="fruite-img">
								<div align="justify" align="left">
									<a href="C_BoardContent?c_num=${c.c_num}"> 
									<img alt="" src="resources/c_Image/${c.c_img1}" align="left"
										style="margin-right: 30px; width: 100px; height: 80px; object-fit: fill;"></a>
									<a href="C_BoardContent?g_num=${c.c_num}"><h3 style="text-align: center;">${c.c_title}</h3></a>
									<strong>작성일 ${c.c_w_date }</strong>
									<hr>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</c:if>
		
	</div>
<!-- my 찜 및카테고리 -->
		<div align="center"  id="myCategory" style="display: none; width: 1500px;">
			<ul class="filters_menu" style="margin: 0px;" >
				<a onclick="getGen()" style="margin: 10px;"> <li id="genText" style="border-color: white; color: green;">일반</li></a> 
				<a onclick="getCom()"style="margin: 10px;"> <li id="comText" style="border-color: white;">기업</li></a>
			</ul>
			
			<script type="text/javascript">
			function getGen() {
				document.getElementById("gen").style.display = "block";
				document.getElementById("com").style.display = "none";
				document.getElementById("comText").style.color = "black";
				document.getElementById("genText").style.display = "green";
						
			}
			function getCom() {
				document.getElementById("gen").style.display = "none";
				document.getElementById("com").style.display = "block";
				document.getElementById("comText").style.color = "green";
				document.getElementById("genText").style.color = "black";
						
			}
		</script>
		
			
			<br>

			<div class="row g-4 justify-content-center">
			
				<div id="gen" class="col-md-6 col-lg-6 col-xl-4" style="width: 100%;">
					<div class="rounded position-relative fruite-item" style="width:1500px;" >
					
					<c:forEach items="${Gfv_list}" var="f">
						
							<div  class="p-4 border border-secondary  rounded" style="width: 300px; border:solid; border-width:1px;margin:auto; border-color:#EEEEEE !important; display: inline-block;" align="cenber;">
								
							<c:forEach items="${allG_list}" var="g">
								<c:if test="${f.g_num eq g.g_num}">
									<a href="G_BoardContent?g_num=${g.g_num}"> <img alt=""
										src="resources/g_Image/${g.g_img1}" align="left"
										class='img-fluid w-100 rounded-top' style="width: 150px; height: 150px; !important;"></a>
									<a href="G_BoardContent?g_num=${g.g_num}">
									
									<h3 style="text-align: center; ">${g.g_title}</h3></a>
									
									<br>
									<strong style="color: #A4A4A4;">${g.category }</strong>
									<hr>
										<strong style="color: #A4A4A4;">${g.g_w_date }</strong>
									</c:if>
									</c:forEach>
								
								
							</div>
							</c:forEach>
				
					</div>
				</div>
			</div>
			
		
				<div class="row g-4 justify-content-center">
				<div id="com" class="col-md-6 col-lg-6 col-xl-4" style="width: 100%; display: none">
					<div class="rounded position-relative fruite-item" style="width:1500px;">
					<c:forEach items="${Cfv_list}" var="f">
						
							<div  class="p-4 border border-secondary  rounded" style="width: 300px; border:solid; border-width:1px;margin:auto; border-color:#EEEEEE !important; display: inline-block;" align="cenber;">
								
							<c:forEach items="${allC_list}" var="c">
								<c:if test="${f.c_num eq c.c_num }">
									<a href="C_BoardContent?c_num=${c.c_num}"> <img alt=""
										src="resources/g_Image/${c.c_img1}" align="left"
										class='img-fluid w-100 rounded-top' style="width: 150px; height: 150px; !important;"></a>
									<a href="C_BoardContent?c_num=${c.c_num}">
									
									<h3 style="text-align: center; ">${c.c_title}</h3></a>
									
									<br>
									<strong style="color: #A4A4A4;">${c.category }</strong>
									<hr>
										<strong style="color: #A4A4A4;">${c.c_w_date }</strong>
									</c:if>
									</c:forEach>
								
								
							</div>
							</c:forEach>
						
				
					</div>
				</div>
			</div>
			

		</div>

		<div class="col-lg-9" id="myReview" style="display: none">

			<div class="row g-4 justify-content-center">
				<div class="col-md-6 col-lg-6 col-xl-4" style="width: 1200px">
					<div class="rounded position-relative fruite-item">
						<h1>리뷰</h1>
					</div>
				</div>
			</div>
		</div>

		<div class="col-lg-9" id="mySub" style="display: none">

			<div class="row g-4 justify-content-center">
				<div class="col-md-6 col-lg-6 col-xl-4" style="width: 1200px">
					<div class="rounded position-relative fruite-item">
						<h1>구독</h1>
					</div>
				</div>
			</div>
		</div>
		<div class="col-lg-9" id="myJoin" style="display: none">

			<div class="row g-4 justify-content-center">
				<div class="col-md-6 col-lg-6 col-xl-4" style="width: 1200px">
					<div class="rounded position-relative fruite-item">
						<h1>참여내역</h1>
					</div>
				</div>
			</div>
		</div>
	
		





		<!-- <div class="container py-5">
			<div class="row g-4">
				<div class="col-lg-12">
					<div class="row g-4">
						<div class="col-xl-3">
						</div>
						<div class="col-6"></div>
					</div>
					<div class="row g-4">
						<div class="col-lg-3">
							
						</div>

						<div class="col-lg-9">
							<div class="row g-4 justify-content-center">
								
				
							</div>
						</div>


					</div>
				</div>
			</div>
		</div> -->

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