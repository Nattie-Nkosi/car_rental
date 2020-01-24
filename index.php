<?php

session_start();

include("includes/db.php");

include("functions/functions.php");

$select_general_settings = "select * from general_settings";

$run_general_settings = mysqli_query($con, $select_general_settings);

$row_general_settings = mysqli_fetch_array($run_general_settings);

$site_title = $row_general_settings["site_title"];

$meta_author = $row_general_settings["meta_author"];

$meta_description = $row_general_settings["meta_description"];

$meta_keywords = $row_general_settings["meta_keywords"];

?>
<!DOCTYPE html>
<html>

<head>

  <title> <?php echo $site_title; ?> </title>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <meta name="description" content="<?php echo $meta_description; ?>">

  <meta name="keywords" content="<?php echo $meta_keywords; ?>">

  <meta name="author" content="<?php echo $meta_author; ?>">

  <link href="http://fonts.googleapis.com/css?family=Roboto:400,500,700,300,100" rel="stylesheet">

  <link href="styles/bootstrap.min.css" rel="stylesheet">

  <link href="styles/style.css" rel="stylesheet">

  <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet">

</head>

<body>

  <div id="top">
    <!-- top Starts -->

    <div class="container">
      <!-- container Starts -->

      <div class="col-md-6 offer">
        <!-- col-md-6 offer Starts -->

        <a href="#" class="btn btn-primary btn-sm">
          <?php

          if (!isset($_SESSION['customer_email'])) {

            echo "Welcome :Guest";
          } else {

            echo "Welcome : " . $_SESSION['customer_email'] . "";
          }


          ?>
        </a>

        <!-- <a href="#">
          Rental Total Price: <?php total_price(); ?>, Total Vehicles <?php items(); ?>
        </a> -->

      </div><!-- col-md-6 offer Ends -->

      <div class="col-md-6">
        <!-- col-md-6 Starts -->

        <ul class="menu">
          <!-- menu Starts -->

          <?php if (!isset($_SESSION['customer_email'])) { ?>

            <li>

              <a href="customer_register.php"> Register </a>

            </li>

            <?php

            } else {

              $customer_email = $_SESSION['customer_email'];

              $select_customer = "select * from customers where customer_email='$customer_email'";

              $run_customer = mysqli_query($con, $select_customer);

              $row_customer = mysqli_fetch_array($run_customer);

              $customer_role = $row_customer['customer_role'];

              if ($customer_role == "customer") {

                ?>

              <li>

                <a href="shop.php"> Bookings </a>

              </li>

            <?php } elseif ($customer_role == "vendor") { ?>

              <!-- <li>

<a href="vendor_dashboard/index.php"> Vendor Dashboard </a>

</li> -->

          <?php }
          } ?>

          <li>

            <?php

            if (!isset($_SESSION['customer_email'])) {

              echo "<a href='checkout.php'> My Account </a>";
            } else {

              echo "<a href='customer/my_account.php?my_orders'> My Account </a>";
            }

            ?>

          </li>

          <li>

            <a href="cart.php"> Go to Bookings </a>

          </li>

          <li>
            <?php

            if (!isset($_SESSION['customer_email'])) {

              echo "<a href='checkout.php'> Login </a>";
            } else {

              echo "<a href='logout.php'> Logout </a>";
            }

            ?>
          </li>

        </ul><!-- menu Ends -->

      </div><!-- col-md-6 Ends -->

    </div><!-- container Ends -->
  </div><!-- top Ends -->

  <div class="navbar navbar-default" id="navbar">
    <!-- navbar navbar-default Starts -->
    <div class="container">
      <!-- container Starts -->

      <div class="navbar-header">
        <!-- navbar-header Starts -->

        <a class="navbar-brand home" href="index.php">
          <!--- navbar navbar-brand home Starts -->

          <!-- <img src="images/logo.png" alt="computerfever logo" class="hidden-xs" >
<img src="images/logo-small.png" alt="computerfever logo" class="visible-xs" > -->
          <h4>Fast 6 Car Rental</h4>

        </a>
        <!--- navbar navbar-brand home Ends -->

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navigation">

          <span class="sr-only">Toggle Navigation </span>

          <i class="fa fa-align-justify"></i>

        </button>

        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#search">

          <span class="sr-only">Toggle Search</span>

          <i class="fa fa-search"></i>

        </button>


      </div><!-- navbar-header Ends -->

      <div class="navbar-collapse collapse" id="navigation">
        <!-- navbar-collapse collapse Starts -->

        <div class="padding-nav">
          <!-- padding-nav Starts -->

          <ul class="nav navbar-nav navbar-left">
            <!-- nav navbar-nav navbar-left Starts -->

            <li class="active">
              <a href="index.php"> Home </a>
            </li>

            <li>
              <a href="shop.php"> Car Listing </a>
            </li>

            <li>
              <?php

              if (!isset($_SESSION['customer_email'])) {

                echo "<a href='checkout.php' >My Account</a>";
              } else {

                echo "<a href='customer/my_account.php?my_orders'>My Account</a>";
              }


              ?>
            </li>

            <li>
              <a href="cart.php"> Bookings </a>
            </li>

            <li>
              <a href="about.php"> About Us </a>
            </li>

            <!-- <li>

<a href="services.php"> Services </a>

</li> -->

            <li>
              <a href="contact.php"> Contact Us </a>
            </li>

          </ul><!-- nav navbar-nav navbar-left Ends -->

        </div><!-- padding-nav Ends -->



        <div class="navbar-collapse collapse right">
          <!-- navbar-collapse collapse right Starts -->

          <button class="btn navbar-btn btn-primary" type="button" data-toggle="collapse" data-target="#search">

            <span class="sr-only">Toggle Search</span>

            <i class="fa fa-search"></i>

          </button>

        </div><!-- navbar-collapse collapse right Ends -->

        <div class="collapse clearfix" id="search">
          <!-- collapse clearfix Starts -->

          <form class="navbar-form" method="get" action="results.php">
            <!-- navbar-form Starts -->

            <div class="input-group">
              <!-- input-group Starts -->

              <input class="form-control" type="text" placeholder="Search" name="user_query" required>

              <span class="input-group-btn">
                <!-- input-group-btn Starts -->

                <button type="submit" value="Search" name="search" class="btn btn-primary">

                  <i class="fa fa-search"></i>

                </button>

              </span><!-- input-group-btn Ends -->

            </div><!-- input-group Ends -->

          </form><!-- navbar-form Ends -->

        </div><!-- collapse clearfix Ends -->

      </div><!-- navbar-collapse collapse Ends -->

    </div><!-- container Ends -->
  </div><!-- navbar navbar-default Ends -->

  <div class="banner-section">
    <div class="container">
      <h1 class="text" style="color:#fff;">Find The Right <br> Car for You</h1>
    </div>
  </div>



  <div id="advantages">
    <!-- advantages Starts -->
    <div class="container">
      <!-- container Starts -->

      <div class="same-height-row">
        <!-- same-height-row Starts -->

        <?php

        $get_boxes = "select * from boxes_section";

        $run_boxes = mysqli_query($con, $get_boxes);

        while ($run_boxes_section = mysqli_fetch_array($run_boxes)) {

          $box_id = $run_boxes_section['box_id'];

          $box_title = $run_boxes_section['box_title'];

          $box_desc = $run_boxes_section['box_desc'];


          ?>

          <div class="col-sm-4">
            <!-- col-sm-4 Starts -->

            <div class="box same-height">
              <!-- box same-height Starts -->

              <div class="icon">

                <i class="fa fa-heart"></i>

              </div>

              <h3><a href="#"> <?php echo $box_title; ?> </a></h3>

              <p>
                <?php echo $box_desc; ?>
              </p>


            </div><!-- box same-height Ends -->

          </div><!-- col-sm-4 Ends -->

        <?php } ?>

      </div><!-- same-height-row Ends -->

    </div><!-- container Ends -->
  </div><!-- advantages Ends -->

  <div id="hot">
    <!-- hot Starts -->

    <div class="box">
      <!-- box Starts -->

      <div class="container">
        <!-- container Starts -->

        <div class="col-md-12">
          <!-- col-md-12 Starts -->

          <h2>Latest this week</h2>

        </div><!-- col-md-12 Ends -->

      </div><!-- container Ends -->

    </div><!-- box Ends -->

  </div><!-- hot Ends -->

  <div id="content" class="container">
    <!-- container Starts -->

    <div class="row flex-wrap">
      <!-- row Starts -->

      <?php

      getPro();

      ?>

    </div><!-- row Ends -->

  </div><!-- container Ends -->

  <?php

  include("includes/footer.php");

  ?>

  <script src="js/jquery.min.js"> </script>

  <script src="js/bootstrap.min.js"></script>

</body>

</html>