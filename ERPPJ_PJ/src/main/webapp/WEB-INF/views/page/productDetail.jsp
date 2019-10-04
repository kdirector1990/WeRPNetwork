<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
    
<!-- taglib 추가 -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>    
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>  
<html lang="en"><head>

<script type="text/javascript">

     
</script>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Agency - Start Bootstrap Theme</title>

  <!-- Bootstrap core CSS -->
  <link href="/erp/resources/shop/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="/erp/resources/shop/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Kaushan+Script" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link href="/erp/resources/shop/css/agency.min.css" rel="stylesheet">

</head>

<body id="page-top" class="" style="">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark fixed-top navbar-shrink" id="mainNav" style="">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="shop">WerpShop</a>
      <button class="navbar-toggler navbar-toggler-right collapsed" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav text-uppercase ml-auto">
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#services">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#portfolio">Product</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#about">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger active" href="#team">Team</a>
          </li>
          <li class="nav-item">
            <a class="nav-link js-scroll-trigger" href="#contact">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead">
    <div class="container">
      <div class="intro-text">
        <div class="intro-lead-in">Welcome To Our Studio!</div>
        <div class="intro-heading text-uppercase">It's Nice To Meet You</div>
        <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#services">Tell Me More</a>
      </div>
    </div>
  </header>

  <!-- Services -->
  <section class="page-section" id="services">
    <div class="container">
      <div class="row">
      <div class="container">
					<div class="row">
						<div class="col-lg-8 mx-auto">
							<div class="modal-body">
							
							<form action="CM_EproductBuy">
							<input type="hidden" name="${_csrf.parameterName }"
											value="${_csrf.token }">
							<input type="hidden" name="product_name" value="${shop.product_name }">
							<input type="hidden" name="product_price" value="${shop.price }">
							<input type="hidden" name="product_code" value="${shop.product_code }">
								<!-- Project Details Go Here -->
								<h2 class="text-uppercase">${shop.product_name}</h2>
								<p class="item-intro text-muted">${shop.price}</p>
								<img class="img-fluid d-block mx-auto"
									src="/erp/resources/shop/img/portfolio/ref.png" alt="">
								<p>Use this area to describe your project. Lorem ipsum dolor
									sit amet, consectetur adipisicing elit. Est blanditiis dolorem
									culpa incidunt minus dignissimos deserunt repellat aperiam
									quasi sunt officia expedita beatae cupiditate, maiores
									repudiandae, nostrum, reiciendis facere nemo!</p>
								<ul class="list-inline">
									<li>product_name : ${shop.product_name}</li>
									<li>price : ${shop.price}</li>
									<li>product_code : ${shop.product_code}</li>
									<li><input type="date" name="release_o_date"></li>
								</ul>
								<button class="btn btn-primary" data-dismiss="modal"
									type="submit">
									Buy
								</button>
								<button class="btn btn-primary"
									type="button" onclick="window.history.back();">
									<i class="fas fa-times"></i> Close
								</button>
								</form>
							</div>
						</div>
					</div>
				</div>
      </div>
    </div>
  </section>

	<!-- Footer -->
	<footer class="footer">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-4">
					<span class="copyright">Copyright © Your Website 2019</span>
				</div>
				<div class="col-md-4">
					<ul class="list-inline social-buttons">
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-twitter"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-facebook-f"></i>
						</a></li>
						<li class="list-inline-item"><a href="#"> <i
								class="fab fa-linkedin-in"></i>
						</a></li>
					</ul>
				</div>
				<div class="col-md-4">
					<ul class="list-inline quicklinks">
						<li class="list-inline-item"><a href="#">Privacy Policy</a></li>
						<li class="list-inline-item"><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript -->
  <script src="/erp/resources/shop/vendor/jquery/jquery.min.js"></script>
  <script src="/erp/resources/shop/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="/erp/resources/shop/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Contact form JavaScript -->
  <script src="/erp/resources/shop/js/jqBootstrapValidation.js"></script>
  <script src="/erp/resources/shop/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="/erp/resources/shop/js/agency.min.js"></script>


</body></html>