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
<link href="resources/asset/css/style.css" rel="stylesheet">
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
					<small class="me-3"><i
						class="fas fa-map-marker-alt me-2 text-secondary"></i> <a href="#"
						class="text-white">123 Street, New York</a></small> <small class="me-3"><i
						class="fas fa-envelope me-2 text-secondary"></i><a href="#"
						class="text-white">Email@Example.com</a></small>
				</div>
				<div class="top-link pe-2">
					<a href="#" class="text-white"><small class="text-white mx-2">Privacy
							Policy</small>/</a> <a href="#" class="text-white"><small
						class="text-white mx-2">Terms of Use</small>/</a> <a href="#"
						class="text-white"><small class="text-white ms-2">Sales
							and Refunds</small></a>
				</div>
			</div>
		</div>
		<div class="container px-0">
			<nav class="navbar navbar-light bg-white navbar-expand-xl">
				<a href="index.html" class="navbar-brand"><h1
						class="text-primary display-6">Fruitables</h1></a>
				<button class="navbar-toggler py-2 px-3" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="fa fa-bars text-primary"></span>
				</button>
				<div class="collapse navbar-collapse bg-white" id="navbarCollapse">
					<div class="navbar-nav mx-auto">
						<a href="index.html" class="nav-item nav-link">Home</a> <a
							href="shop.html" class="nav-item nav-link">Shop</a> <a
							href="shop-detail.html" class="nav-item nav-link active">Shop
							Detail</a>
						<div class="nav-item dropdown">
							<a href="#" class="nav-link dropdown-toggle"
								data-bs-toggle="dropdown">Pages</a>
							<div class="dropdown-menu m-0 bg-secondary rounded-0">
								<a href="cart.html" class="dropdown-item">Cart</a> <a
									href="chackout.html" class="dropdown-item">Chackout</a> <a
									href="testimonial.html" class="dropdown-item">Testimonial</a> <a
									href="404.html" class="dropdown-item">404 Page</a>
							</div>
						</div>
						<a href="contact.html" class="nav-item nav-link">Contact</a>
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
		<h1 class="text-center text-white display-6"
			style="margin-bottom: 20px" >게시물 작성</h1>
		<ol class="breadcrumb justify-content-center mb-0">
			<span class="breadcrumb-item" style="color: brown">* 필수항목</span>
		</ol>
	</div>
	<!-- Single Page Header End -->



	<div class="container-fluid py-5">
		<div class="container py-5">
			<form action="BoardInsert" method="post" enctype="multipart/form-data">
				<div class="row g-5 justify-content-center" id="loginDiv">
					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">상품 사진</h4>
						<div class="form-item">

							<label class="input-file-button" for="btnAtt"> 업로드 </label> 
							
							<input name = "b_file"
								type="file" onchange="readURL(this);" id="btnAtt"
								style="display: none" accept="image/jpg, image/jpeg, image/png"
								multiple="multiple"> <!-- 이미피자일 name = filename -->

							<div id='image_preview'>
								<div id='att_zone'
									data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
							</div>

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
						<h4 class="form-label my-3">상품 명</h4>
						<div class="form-item">
							<input type="text" name="b_title" style="width: 600px"
								class="border-0 border-bottom rounded me-5 py-3 mb-4"
								placeholder="상품 명을 입력해주세요">
						</div>
					</div>

					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">카테고리</h4>
						<div class="form-item">
							<div class="col-sm-8">
								<select name="b_category" id="a4" class="form-control">
									<option value="1">포션</option>
									<option value="2">너클</option>
									<option value="3">둔기</option>
									<option value="3">검</option>
									<option value="3">지팡이</option>
								</select>
							</div>
							<hr>
						</div>
					</div>


					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">참여인원</h4>
						<div class="form-item">
							<div class="col-sm-8">
								<div class="form-check-inline"></div>
								<div class="form-check-inline">
									<label class="form-check-label"> 2 <input type="radio"
										class="form-check-input" name="join" value="2">
									</label>
								</div>
								<div class="form-check-inline">
									<label class="form-check-label"> 3 <input type="radio"
										class="form-check-input" name="join" value="3">
									</label>
								</div>
								<div class="form-check-inline">
									<label class="form-check-label"> 4 <input type="radio"
										class="form-check-input" name="join" value="3">
									</label>
								</div>
							</div>
						</div>
						<hr>

					</div>
					<div class="col-md-12 col-lg-6 col-xl-7" align="left">
						<h4 class="form-label my-3">상품설명</h4>
						<div class="form-item">
							<textarea name="b_content" rows="6" cols="80" style="border-radius: 5px"
								placeholder="상품 가격 및 거래방법 등 작성"></textarea>
						</div>
						<hr>

						<div class="col-md-12 col-lg-6 col-xl-7" align="right"
							style="margin-left: 100px">
							<input class="border-0 border-bottom rounded me-5 py-3 mb-4"
								style="width: 100px" type="reset" value="초기화"> <input
								class="border-0 border-bottom rounded me-5 py-3 mb-4"
								style="width: 100px" type="submit" value="등록하기">
						</div>

					</div>
				</div>
		</div>
	</div>
	</form>
	</div>
	</div>

	<!-- Footer Start -->
	<div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5">
		<div class="container py-5">
			<div class="pb-4 mb-4"
				style="border-bottom: 1px solid rgba(100, 175, 24, 0.5);">
				<div class="row g-4">
					<div class="col-lg-3">
						<a href="#">
							<h1 class="text-primary mb-0">Fruitables</h1>
							<p class="text-secondary mb-0">Fresh products</p>
						</a>
					</div>
					<div class="col-lg-6">
						<div class="position-relative mx-auto">
							<input class="form-control border-0 w-100 py-3 px-4 rounded-pill"
								type="number" placeholder="Your Email">
							<button type="submit"
								class="btn btn-primary border-0 border-secondary py-3 px-4 position-absolute rounded-pill text-white"
								style="top: 0; right: 0;">Subscribe Now</button>
						</div>
					</div>
					<div class="col-lg-3">
						<div class="d-flex justify-content-end pt-3">
							<a
								class="btn  btn-outline-secondary me-2 btn-md-square rounded-circle"
								href=""><i class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-secondary me-2 btn-md-square rounded-circle"
								href=""><i class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-secondary me-2 btn-md-square rounded-circle"
								href=""><i class="fab fa-youtube"></i></a> <a
								class="btn btn-outline-secondary btn-md-square rounded-circle"
								href=""><i class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div class="row g-5">
				<div class="col-lg-3 col-md-6">
					<div class="footer-item">
						<h4 class="text-light mb-3">Why People Like us!</h4>
						<p class="mb-4">typesetting, remaining essentially unchanged.
							It was popularised in the 1960s with the like Aldus PageMaker
							including of Lorem Ipsum.</p>
						<a href=""
							class="btn border-secondary py-2 px-4 rounded-pill text-primary">Read
							More</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="d-flex flex-column text-start footer-item">
						<h4 class="text-light mb-3">Shop Info</h4>
						<a class="btn-link" href="">About Us</a> <a class="btn-link"
							href="">Contact Us</a> <a class="btn-link" href="">Privacy
							Policy</a> <a class="btn-link" href="">Terms & Condition</a> <a
							class="btn-link" href="">Return Policy</a> <a class="btn-link"
							href="">FAQs & Help</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="d-flex flex-column text-start footer-item">
						<h4 class="text-light mb-3">Account</h4>
						<a class="btn-link" href="">My Account</a> <a class="btn-link"
							href="">Shop details</a> <a class="btn-link" href="">Shopping
							Cart</a> <a class="btn-link" href="">Wishlist</a> <a class="btn-link"
							href="">Order History</a> <a class="btn-link" href="">International
							Orders</a>
					</div>
				</div>
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
	<!-- Footer End -->

	<!-- Copyright Start -->
	<div class="container-fluid copyright bg-dark py-4">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
					<span class="text-light"><a href="#"><i
							class="fas fa-copyright text-light me-2"></i>Your Site Name</a>, All
						right reserved.</span>
				</div>
				<div class="col-md-6 my-auto text-center text-md-end text-white">
					<!--/*** This template is free as long as you keep the below author’s credit link/attribution link/backlink. ***/-->
					<!--/*** If you'd like to use the template without the below author’s credit link/attribution link/backlink, ***/-->
					<!--/*** you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". ***/-->
					Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML
						Codex</a> Distributed By <a class="border-bottom"
						href="https://themewagon.com">ThemeWagon</a>
				</div>
			</div>
		</div>
	</div>
	<!-- Copyright End -->



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