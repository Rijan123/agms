<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="zxx">
   <head>
      <title>Kathmandu Canvas</title>
      
      <script>
         addEventListener("load", function () {
         	setTimeout(hideURLbar, 0);
         }, false);
         
         function hideURLbar() {
         	window.scrollTo(0, 1);
         }
      </script>
      <!--//meta tags ends here-->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.min.css" rel="stylesheet" type="text/css" media="all">
      <!-- //font-awesome icons -->
      <!-- For Clients slider -->
      <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
      <!--flexs slider-->
      <link href="css/JiSlider.css" rel="stylesheet">
      <!--Shoping cart-->
      <link rel="stylesheet" href="css/shop.css" type="text/css" />
      <!--//Shoping cart-->
      <!--stylesheets-->
      <link href="css/style.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
      <link href="//fonts.googleapis.com/css?family=Sunflower:500,700" rel="stylesheet">
      <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
   </head>
   <body>
      <?php include_once('includes/header.php');?>

      <div class="slider text-center">
            <div class="callbacks_container">
               <ul class="rslides" id="slider4">
                  <li>
                     <div class="slider-img one-img">
                        <div class="container">
                           <div class="-info ">
                              <h5>Pick The Best Art For <br>Your Choice</h5>
                              <div class="bottom-info">
                                 <p>Find the finest art pieces tailored to your preferences. We handpick and present a curated selection of exceptional artworks, ensuring that you discover the very best that resonates with your unique taste and style.</p>
                              </div>
                              <div class="outs_more-buttn">
                                 <a href="about.php">Read More</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img two-img">
                        <div class="container">
                           <div class="slider-info ">
                              <h5>Sort Art And Painting<br>For Your Choice</h5>
                              <div class="bottom-info">
                                 <p>Custom-curated art for your preference.</p>
                              </div>
                              <div class="outs_more-buttn">
                                 <a href="about.php">Read More</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
                  <li>
                     <div class="slider-img three-img">
                        <div class="container">
                           <div class="slider-info">
                              <h5>Best Art And Painting<br> For Your Choice</h5>
                              <div class="bottom-info">
                                 <p>Discover the best art and paintings that are sure to captivate your senses. With a wide selection to choose from, explore a world of artistic excellence and find the perfect masterpiece that speaks to your unique taste and style.</p>
                              </div>
                              <div class="outs_more-buttn">
                                 <a href="about.php">Read More</a>
                              </div>
                           </div>
                        </div>
                     </div>
                  </li>
               </ul>
            </div>
            <!-- This is here just to demonstrate the callbacks -->
            <!-- <ul class="events">
               <li>Example 4 callback events</li>
               </ul>-->
            <div class="clearfix"></div>
         </div>
      <!-- about -->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3" id="about">
         <!-- Display success/error messages -->
      <?php if(isset($_SESSION['success'])) { ?>
      <div class="container mt-3">
         <div class="alert alert-success alert-dismissible fade show" role="alert">
            <?php 
               echo $_SESSION['success'];
               unset($_SESSION['success']); // Clear the success message after displaying
            ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
      </div>
      <?php } ?>

      <?php if(isset($_SESSION['error'])) { ?>
      <div class="container mt-3">
         <div class="alert alert-danger alert-dismissible fade show" role="alert">
            <?php 
               echo $_SESSION['error'];
               unset($_SESSION['error']); // Clear the error message after displaying
            ?>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
               <span aria-hidden="true">&times;</span>
            </button>
         </div>
      </div>
      <?php } ?>
         <div class="container py-lg-5 py-md-5 py-sm-4 py-4">
            <h3 class="title text-center mb-lg-5 mb-md-4  mb-sm-4 mb-3">Best Products</h3>
            <div class="row banner-below-w3l">
               <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                  <img src="images/ktm14.jpg" width="200" height="200" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                     <h4 class="pt-3">Sculptures</h4>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                  <img src="images/ktm5.jpg" width="300" height="200" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                     <h4 class="pt-3">Serigraphs</h4>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 text-center banner-agile-flowers">
                  <img src="images/ktm3.jpg" width="500" height="500" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                     <h4 class="pt-3">Prints</h4>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 mt-3 text-center banner-agile-flowers">
                  <img src="images/ktm2.jpg" width="200" height="200" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                     <h4 class="pt-3">Painting</h4>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 mt-3 text-center banner-agile-flowers">
                  <img src="images/ktm17.jpg" width="500" height="200" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                     <h4 class="pt-3">Street Art</h4>
                  </div>
               </div>
               <div class="col-lg-4 col-md-6 col-sm-6 mt-3 text-center banner-agile-flowers">
                  <img src="images/ktm7.jpg" width="500" height="200" class="img-thumbnail" alt="">
                  <div class="banner-right-icon">
                     <h4 class="pt-3">Visuals Arts</h4>
                  </div>
               </div>
               <div class="toys-grids-upper">
                  <div class="about-toys-off">
                     <h2>Get Up to <span>70% Off </span>On Selected Art</h2>
                  </div>
               </div>
            </div>
         </div>
      </section>
      <!-- //about -->
      <!--new Arrivals -->
      <section class="blog py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-4 py-sm-4 py-3">
            <h3 class="title clr text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3">New Arrivals</h3>
            <div class="slid-img">
               <!-- slider123 -->
               <ul id="flexiselDemo1">
                  <?php
$ret=mysqli_query($con,"select tblarttype.ID as atid,tblarttype.ArtType as typename,tblartproduct.ID as apid,tblartproduct.Title,tblartproduct.Image,tblartproduct.ArtType from tblartproduct join tblarttype on tblarttype.ID=tblartproduct.ArtType");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                  <li>
                   
                     <div class="agileinfo_port_grid">
                        <img src="admin/images/<?php echo $row['Image'];?>" width="300" height="300" alt=" " class="img-fluid" />
                        <div class="banner-right-icon">
                           <h4 class="pt-3"><?php echo $row['typename'];?></h4>
                        </div>
                        <div class="outs_more-buttn">
                           <a href="art-enquiry.php?eid=<?php echo $row['apid'];?>">Purchase</a>
                           <a href="single-product.php?pid=<?php echo $row['apid'];?>">View</a>
                        </div>
                     </div>
                  </li><?php }?>
                
               </ul>
            </div>
         </div>
      </section>
      <!--//about -->
     
   
      <!--Product-about-->
      <section class="about py-lg-4 py-md-3 py-sm-3 py-3">
         <div class="container py-lg-5 py-md-5 py-sm-4 py-3">
            <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
            <h3 class="title text-center mb-lg-5 mb-md-4 mb-sm-4 mb-3"><?php  echo $row['PageTitle'];?></h3>
            <div class="about-products-w3layouts">
               <p><?php  echo $row['PageDescription'];?> 
               </p>
              <?php } ?>
            </div>
         </div>
      </section>
      <!--//Product-about-->
     
      <!-- footer -->
      <?php include_once('includes/footer.php');?>
      <!-- //footer -->
      <!-- Modal 1-->
    
      <!--js working-->
      <script src='js/jquery-2.2.3.min.js'></script>
      <!--//js working-->
      <!-- cart-js -->
      <script src="js/minicart.js"></script>
      <script>
         toys.render();
         
         toys.cart.on('toys_checkout', function (evt) {
         	var items, len, i;
         
         	if (this.subtotal() > 0) {
         		items = this.items();
         
         		for (i = 0, len = items.length; i < len; i++) {}
         	}
         });
      </script>
      <!-- //cart-js -->
      <!--responsiveslides banner-->
      <script src="js/responsiveslides.min.js"></script>
      <script>
         // You can also use "$(window).load(function() {"
         $(function () {
         	// Slideshow 4
         	$("#slider4").responsiveSlides({
         		auto: true,
         		pager:false,
         		nav:true ,
         		speed: 900,
         		namespace: "callbacks",
         		before: function () {
         			$('.events').append("<li>before event fired.</li>");
         		},
         		after: function () {
         			$('.events').append("<li>after event fired.</li>");
         		}
         	});
         
         });
      </script>
      <!--// responsiveslides banner-->	 
      <!--slider flexisel -->
      <script src="js/jquery.flexisel.js"></script>
      <script>
         $(window).load(function() {
         	$("#flexiselDemo1").flexisel({
         		visibleItems: 3,
         		animationSpeed: 3000,
         		autoPlay:true,
         		autoPlaySpeed: 2000,    		
         		pauseOnHover: true,
         		enableResponsiveBreakpoints: true,
         		responsiveBreakpoints: { 
         			portrait: { 
         				changePoint:480,
         				visibleItems: 1
         			}, 
         			landscape: { 
         				changePoint:640,
         				visibleItems:2
         			},
         			tablet: { 
         				changePoint:768,
         				visibleItems: 2
         			}
         		}
         	});
         	
         });
      </script>
      <!-- //slider flexisel -->
      <!-- start-smoth-scrolling -->
      <script src="js/move-top.js"></script>
      <script src="js/easing.js"></script>
      <script>
         jQuery(document).ready(function ($) {
         	$(".scroll").click(function (event) {
         		event.preventDefault();
         		$('html,body').animate({
         			scrollTop: $(this.hash).offset().top
         		}, 900);
         	});
         });
      </script>
      <!-- start-smoth-scrolling -->
      <!-- here stars scrolling icon -->
      <script>
         $(document).ready(function () {
         
         	var defaults = {
         		containerID: 'toTop', // fading element id
         		containerHoverID: 'toTopHover', // fading element hover id
         		scrollSpeed: 1200,
         		easingType: 'linear'
         	};
         	$().UItoTop({
         		easingType: 'easeOutQuart'
         	});
         
         });
      </script>
      <!-- //here ends scrolling icon -->
      <!--bootstrap working-->
      <script src="js/bootstrap.min.js"></script>
      <!-- //bootstrap working-->
      <?php 
         // if(isset($_GET['purchaseStatus'])) {
         //    switch($_GET['purchaseStatus']) {
         //       case 'success':
         //          echo '<script>alert("Purchase Success");</script>';
         //          break;
         //       case 'failure':
         //          echo '<script>alert("Purchase Failed");</script>';
         //          break;
         //    }
         // };
      ?>
   </body>
</html>