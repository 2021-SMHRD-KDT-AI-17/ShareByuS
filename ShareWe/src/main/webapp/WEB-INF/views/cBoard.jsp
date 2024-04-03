<%@page import="kr.smhrd.entity.member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>Fruitables - Vegetable Website Template</title>
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

<style type="text/css">
.notes {
	background-attachment: local;
	background-image: linear-gradient(to right, white 10px, transparent 10px),
		linear-gradient(to left, white 10px, transparent 10px),
		repeating-linear-gradient(white, white 30px, #ccc 30px, #ccc 31px, white
		31px);
	line-height: 31px;
	padding: 8px 10px;
}
</style>
</head>

<body>


	<%
	member loginMember = (member) session.getAttribute("loginMember");
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

					<%
					if (loginMember == null) {
					%>
					<a href="goLogin" class="text-white"><small
						class="text-white mx-2">로그인</small>|</a> <a href="goMemberType"
						class="text-white"><small class="text-white mx-2">회원가입</small></a>
					<%
					} else {
					%>
					<span><small class="text-white mx-2"><%=loginMember.getNick()%>님
							환영합니다.</small></span>
					<%
					if (loginMember.getEmail().equals("admin")) {
					%>
					<a href="#" class="text-white"><small class="text-white ms-2">회원관리</small></a>
					<%
					}
					%>
					<a href="goMain" class="text-white"><small
						class="text-white mx-2">홈</small>|</a> <a href="memberLogout"
						class="text-white"><small class="text-white mx-2">로그아웃</small></a>
					<%
					}
					%>

				</div>
			</div>
		</div>
		<div class="container px-0">
			<nav class="navbar navbar-light bg-white navbar-expand-xl">
				<a href="goMain" class="navbar-brand">
					<h1 class="text-primary display-6">Share We?</h1>
				</a>
				<button class="navbar-toggler py-2 px-3" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars text-primary"></span>
				</button>
				<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
					<div class="navbar-nav mx-auto">
						<a href="goGeneral" class="nav-item nav-link"
							style="color: black; font-size: 18px;"><strong>공구함</strong></a> <a
							href="goCompany" class="nav-item nav-link"
							style="color: black; font-size: 18px;"><strong>우리동네</strong></a>
						<!-- <a href="shop-detail.html" class="nav-item nav-link">Shop Detail</a> -->
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle active"
								data-bs-toggle="dropdown" style="color: black; font-size: 18px;"><strong>카테고리</strong></a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="getCategory?category=식품" class="dropdown-item">식품</a> <a
									href="getCategory?category=과일" class="dropdown-item">과일</a> <a
									href="getCategory?category=생필품" class="dropdown-item">생필품</a> <a
									href="getCategory?category=패션/뷰티" class="dropdown-item">패션/뷰티</a>
								<a href="getCategory?category=여행/도서" class="dropdown-item">여행/도서</a>
							</div>
						</div>
						<%
						if (loginMember == null) {
						%>
						<a href="goLogin" class="nav-item nav-link"
							style="color: black; font-size: 18px;"><strong>동네보기</strong></a>
						<%
						} else {
						%>
						<a href="goHood" class="nav-item nav-link"
							style="color: black; font-size: 18px;"><strong>동네보기</strong></a>
						<%
						}
						%>
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


	<!-- Search Start -->
	<div class="modal fade" id="searchModal" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-fullscreen">

			<div class="modal-content rounded-0">
				<div class="modal-header">
					<!-- <h5 class="modal-title" id="exampleModalLabel">Search by
                  keyword</h5> -->
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<form action="goSearch">
					<div class="modal-body d-flex align-items-center">
						<div class="input-group w-75 mx-auto d-flex"
							style="height: 800px; padding-bottom: 100px; width: 50% !important; justify-content: center; align-items: center;">
							<input type="text" class="form-control p-3" name="searchText"
								style="height: 58px;" placeholder="검색어를 입력해주세요."
								aria-describedby="search-icon-1"> <input type="submit"
								value="검색" id="search-icon-1"
								style="border-top-right-radius: 10px; border-bottom-right-radius: 10px; height: 58px;"
								class="btn btn-primary border-2 border-secondary py-3 px-4">
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<!-- Search End -->


	<!-- Single Page Header start -->
	<div class="container-fluid page-header py-5">
		<h1 class="text-center text-white display-6"
			style="margin-bottom: 20px">상품 등록</h1>
		<ol class="breadcrumb justify-content-center mb-0">
		</ol>
	</div>
	<!-- Single Page Header End -->



	<div class="container-fluid py-5">
		<div class="container py-5">
			<form action="cBoardInsert" method="post">

				<div class="row g-5 justify-content-center" id="loginDiv">

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">* 상품 명</h4>
						<br>
						<div class="form-item">
							<input type="text" name="c_title" style="width: 600px;"
								class="border-0 border-bottom rounded me-5 py-3 mb-4"
								placeholder="상품 명을 입력 해주세요">
						</div>
						<input type="hidden" value="${loginMember.nick }" name="c_writer">
						<input type="hidden" value="${loginMember.email }" name="email">

					</div>

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">* 대표 이미지</h4>
						<br>
						<div class="form-item">

							<label class="input-file-button" for="btnAtt"> 대표사진 </label> <input
								type="file" name="c_img1" id="btnAtt"
								accept="image/jpg, image/jpeg, image/png" style="display: none">

							<div id='image_preview'>
								<div id='att_zone'
									data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
							</div>
							<input type="file" name="c_img2" id="btnAtt2"
								accept="image/jpg, image/jpeg, image/png" value="상세사진">
							<input type="file" name="c_img3" id="btnAtt3"
								accept="image/jpg, image/jpeg, image/png" value="상세사진">

							<script>
( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
  imageView = function imageView(att_zone, btn){

    var attZone = document.getElementById(att_zone);
    var btnAtt = document.getElementById(btn)
    var sel_files = [];
    
    // 이미지와 체크 박스를 감싸고 있는 div 속성
    var div_style = 'display:inline-block;position:relative;'
                  + 'width:150px;height:120px;margin:5px;z-index:1';
    // 미리보기 이미지 속성
    var img_style = 'width:100%;height:100%;z-index:none';
    // 이미지안에 표시되는 체크박스의 속성
    var chk_style = 'width:30px;height:30px;position:absolute;font-size:24px;'
                  + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:green';
  
    btnAtt.onchange = function(e){
      var files = e.target.files;
      var fileArr = Array.prototype.slice.call(files)
      for(f of fileArr){
        imageLoader(f);
      }
    }  
    
  
    // 탐색기에서 드래그앤 드롭 사용
    attZone.addEventListener('dragenter', function(e){
      e.preventDefault();
      e.stopPropagation();
    }, false)
    
    attZone.addEventListener('dragover', function(e){
      e.preventDefault();
      e.stopPropagation();
      
    }, false)
  
    attZone.addEventListener('drop', function(e){
      var files = {};
      e.preventDefault();
      e.stopPropagation();
      var dt = e.dataTransfer;
      files = dt.files;
      for(f of files){
        imageLoader(f);
      }
      
    }, false)
    
    
    /*첨부된 이미리즐을 배열에 넣고 미리보기 */
    imageLoader = function(file){
      sel_files.push(file);
      var reader = new FileReader();
      reader.onload = function(ee){
        let img = document.createElement('img')
        img.setAttribute('style', img_style)
        img.src = ee.target.result;
        attZone.appendChild(makeDiv(img, file));
      }
      
      reader.readAsDataURL(file);
    }
    
    /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
    makeDiv = function(img, file){
      var div = document.createElement('div')
      div.setAttribute('style', div_style)
      
      var btn = document.createElement('input')
      btn.setAttribute('type', 'button')
      btn.setAttribute('value', 'x')
      btn.setAttribute('delFile', file.name);
      btn.setAttribute('style', chk_style);
      btn.onclick = function(ev){
        var ele = ev.srcElement;
        var delFile = ele.getAttribute('delFile');
        for(var i=0 ;i<sel_files.length; i++){
          if(delFile== sel_files[i].name){
            sel_files.splice(i, 1);      
          }
        }
        
        dt = new DataTransfer();
        for(f in sel_files) {
          var file = sel_files[f];
          dt.items.add(file);
        }
        btnAtt.files = dt.files;
        var p = ele.parentNode;
        attZone.removeChild(p)
      }
      div.appendChild(img)
      div.appendChild(btn)
      return div
    }
  }
)('att_zone', 'btnAtt')

</script>

						</div>
						<hr>
					</div>

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">* 상품설명</h4>
						<br>
						<div class="form-item">
							<textarea name="c_content" rows="6" cols="80"
								style="border-radius: 5px" placeholder="상품 가격 및 거래방법 등 작성"></textarea>
						</div>
						<hr>

					</div>

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">* 펀딩 종료 날짜</h4>
						<br>
						<div class="form-item">
							<input type="date" name="c_f_date" style="width: 600px"
								class="border-0 border-bottom rounded me-5 py-3 mb-4">
						</div>
					</div>


					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">* 카테고리</h4>
						<br>
						<div class="form-item">
							<div class="col-sm-8">
								<select name="category" id="a4" class="form-control">
									<option value="식품">식품</option>
									<option value="과일">과일</option>
									<option value="생필품">생필품</option>
									<option value="패션/뷰티">패션/뷰티</option>
									<option value="여행/도서">여행/도서</option>
								</select>
							</div>
							<hr>
						</div>
					</div>

					<!--             <div class="col-md-12 col-lg-6 col-xl-7" align="left">
                  <h4 class="form-label my-3">* 상품 가격</h4>
                  <br>
                  <div class="form-item">

                     <input type="text" name="price" placeholder="숫자만 입력해주세요"
                     class="border-0 border-bottom rounded me-5 py-3 mb-4"
                        />
                        <span>원</span>
                        <hr>
                  </div>
                  
               </div> -->

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">옵션</h4>
						<br>
						<textarea class="notes" name="c_opt1" rows="6" cols="45"
							style="border-radius: 5px" placeholder="양배추 1/2개&#13;양배추 1/4개"></textarea>
						<textarea class="notes" name="price" rows="6" cols="10"
							style="border-radius: 5px" placeholder="1000&#13;500"></textarea>

						<!-- <input type="text" id="opTitle" name="c_opt1" style="width: 300px"
                       class="border-0 border-bottom rounded me-5 py-3 mb-4"
                       placeholder="ex)제주 감귤 10 kg"> -->

						<hr>
					</div>

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">* 재고 수량</h4>
						<br>
						<div class="form-item">

							<input type="number" name="c_ea" placeholder="숫자만 입력해주세요"
								class="border-0 border-bottom rounded me-5 py-3 mb-4" /> <span>개</span>
							<hr>

						</div>

					</div>



					<div class="col-md-12 col-lg-6 col-xl-7" align="right"
						style="margin-right: 370px">
						<input class="border-0 border-bottom rounded me-5 py-3 mb-4"
							style="width: 100px" type="reset" value="초기화"> <input
							class="border-0 border-bottom rounded me-5 py-3 mb-4"
							style="width: 100px" type="submit" value="등록하기">
					</div>


				</div>
			</form>
		</div>

	</div>




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
						<!-- <img src="img/payment.png" class="img-fluid" alt=""> -->
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