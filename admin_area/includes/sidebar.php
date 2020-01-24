<?php

if (!isset($_SESSION['admin_email'])) {

  echo "<script>window.open('login.php','_self')</script>";
} else {

  ?>

  <nav class="navbar navbar-inverse navbar-fixed-top">
    <!-- navbar navbar-inverse navbar-fixed-top Starts -->

    <div class="navbar-header">
      <!-- navbar-header Starts -->

      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
        <!-- navbar-ex1-collapse Starts -->


        <span class="sr-only">Toggle Navigation</span>

        <span class="icon-bar"></span>

        <span class="icon-bar"></span>

        <span class="icon-bar"></span>


      </button><!-- navbar-ex1-collapse Ends -->

      <a class="navbar-brand" href="index.php?dashboard">Admin Panel</a>


    </div><!-- navbar-header Ends -->

    <ul class="nav navbar-right top-nav">
      <!-- nav navbar-right top-nav Starts -->

      <li class="dropdown">
        <!-- dropdown Starts -->

        <a href="#" class="dropdown-toggle" data-toggle="dropdown">
          <!-- dropdown-toggle Starts -->

          <i class="fa fa-user"></i>

          <?php echo $admin_name; ?> <b class="caret"></b>


        </a><!-- dropdown-toggle Ends -->

        <ul class="dropdown-menu">
          <!-- dropdown-menu Starts -->

          <li>
            <!-- li Starts -->

            <a href="index.php?user_profile=<?php echo $admin_id; ?>">

              <i class="fa fa-fw fa-user"></i> Profile


            </a>

          </li><!-- li Ends -->

          <li>
            <!-- li Starts -->

            <a href="index.php?view_products">

              <i class="fa fa-fw fa-envelope"></i> Vehicles

              <?php if ($count_products != 0) { ?>

                <span class="badge"><?php echo $count_products; ?></span>

              <?php } ?>

            </a>

          </li><!-- li Ends -->

          <li>
            <!-- li Starts -->

            <a href="index.php?view_customers">

              <i class="fa fa-fw fa-gear"></i> Customers

              <span class="badge"><?php echo $count_customers; ?></span>


            </a>

          </li><!-- li Ends -->

          <li>
            <!-- li Starts -->

            <a href="index.php?view_p_cats">

              <i class="fa fa-fw fa-gear"></i> Vehicle Categories

              <span class="badge"><?php echo $count_p_categories; ?></span>


            </a>

          </li><!-- li Ends -->

          <li class="divider"></li>

          <li>
            <!-- li Starts -->

            <a href="logout.php">

              <i class="fa fa-fw fa-power-off"> </i> Log Out

            </a>

          </li><!-- li Ends -->

        </ul><!-- dropdown-menu Ends -->




      </li><!-- dropdown Ends -->


    </ul><!-- nav navbar-right top-nav Ends -->

    <div class="collapse navbar-collapse navbar-ex1-collapse">
      <!-- collapse navbar-collapse navbar-ex1-collapse Starts -->

      <ul class="nav navbar-nav side-nav">
        <!-- nav navbar-nav side-nav Starts -->

        <li>
          <!-- li Starts -->

          <a href="index.php?dashboard">

            <i class="fa fa-fw fa-dashboard"></i> Dashboard

          </a>

        </li><!-- li Ends -->

        <li>
          <!-- Settings li Starts -->

          <a href="#" data-toggle="collapse" data-target="#settings">

            <i class="fa fa-fw fa-cog"></i> Settings

            <i class="fa fa-fw fa-caret-down"></i>

          </a>

          <ul id="settings" class="collapse">

            <li>

              <a href="index.php?general_settings"> General Settings </a>

            </li>

            <!-- <li>

              <a href="index.php?payment_settings"> Payment Settings </a>

            </li> -->

            <!-- <li>

              <a href="index.php?store_settings"> Store Settings </a>

            </li> -->

          </ul>

        </li><!-- Settings li Ends -->



        <li>
          <!-- Products li Starts -->

          <a href="#" data-toggle="collapse" data-target="#products">

            <i class="fa fa-fw fa-table"></i> Vehicles

            <?php

              $select_pending_products = "select * from products where status='product' and product_vendor_status='pending'";

              $run_pending_products = mysqli_query($con, $select_pending_products);

              $count_pending_products = mysqli_num_rows($run_pending_products);

              if ($count_pending_products != 0) {

                ?>

              <span class="badge"><?php echo $count_pending_products; ?></span>

            <?php } ?>

            <i class="fa fa-fw fa-caret-down"></i>

          </a>

          <ul id="products" class="collapse">

            <li>
              <a href="index.php?insert_product"> Insert Vehicle </a>
            </li>

            <li>
              <a href="index.php?view_products"> View Vehicle </a>
            </li>


          </ul>

        </li><!-- Products li Ends -->


        <li>
          <!-- reviews li Starts -->

          <a href="#" data-toggle="collapse" data-target="#reviews">

            <i class="fa fa-fw fa-star"></i> Vehicle Reviews

            <i class="fa fa-fw fa-caret-down"></i>

          </a>

          <ul id="reviews" class="collapse">

            <li>
              <a href="index.php?insert_review"> Insert Review </a>
            </li>

            <li>
              <a href="index.php?view_reviews"> View Reviews </a>
            </li>

          </ul>

        </li><!-- reviews li Ends -->


        <li>
          <!-- Icons Li Starts -->

          <!-- <a href="#" data-toggle="collapse" data-target="#shipping_zones">

            <i class="fa fa-truck" aria-hidden="true"></i> Car Shipping

            <i class="fa fa-fw fa-caret-down"></i>

          </a>

          <ul id="shipping_zones" class="collapse">
            


            <li>

              <a href="index.php?shipping_settings"> Shipping Settings </a>

            </li>

            <li>
              <a href="index.php?insert_shipping_zone"> Insert Shipping Zone </a>
            </li>

            <li>
              <a href="index.php?view_shipping_zones"> View Shipping Zones </a>
            </li>

            <li>
              <a href="index.php?insert_shipping_type"> Insert Shipping Type </a>
            </li>

            <li>
              <a href="index.php?view_shipping_types"> View Shipping Types </a>
            </li>

          </ul>

        </li>

        <li> -->
          <!-- Icons Li Starts -->

          <!-- <a href="#" data-toggle="collapse" data-target="#countries">

            <i class="fa fa-globe" aria-hidden="true"></i> Countries

            <i class="fa fa-fw fa-caret-down"></i>

          </a>

          <ul id="countries" class="collapse">
            

            <li>
              <a href="index.php?insert_country"> Insert Country </a>
            </li>

            <li>
              <a href="index.php?view_countries"> View Countries </a>
            </li>

          </ul>

        </li> -->


        <li>
          <!-- Icons Li Starts -->

          <a href="#" data-toggle="collapse" data-target="#icons">

            <i class="fa fa-fw fa-retweet"> </i> Icons

            <i class="fa fa-fw fa-caret-down"></i>

          </a>

          <ul id="icons" class="collapse">
            <!-- Icons Ul Starts -->

            <li>
              <a href="index.php?insert_icon"> Insert Icon </a>
            </li>

            <li>
              <a href="index.php?view_icons"> View Icons </a>
            </li>

          </ul><!-- Icons Ul Ends -->

        </li><!-- Icons Li Ends -->


        <li>
          <!-- manufacturer li Starts -->

          <a href="#" data-toggle="collapse" data-target="#manufacturers">
            <!-- anchor Starts -->

            <i class="fa fa-fw fa-briefcase"></i> Manufacturers

            <i class="fa fa-fw fa-caret-down"></i>


          </a><!-- anchor Ends -->

          <ul id="manufacturers" class="collapse">
            <!-- ul collapse Starts -->

            <li>
              <a href="index.php?insert_manufacturer"> Insert Manufacturer </a>
            </li>

            <li>
              <a href="index.php?view_manufacturers"> View Manufacturers </a>
            </li>

          </ul><!-- ul collapse Ends -->


        </li><!-- manufacturer li Ends -->


        <li>
          <!-- li Starts -->

          <a href="#" data-toggle="collapse" data-target="#p_cat">

            <i class="fa fa-fw fa-pencil"></i> Vehicle Categories

            <i class="fa fa-fw fa-caret-down"></i>


          </a>

          <ul id="p_cat" class="collapse">

            <li>
              <a href="index.php?insert_p_cat"> Insert Vehicle Category </a>
            </li>

            <li>
              <a href="index.php?view_p_cats"> View Vehicles Categories </a>
            </li>


          </ul>

        </li><!-- li Ends -->




        <li>
          <!-- boxes section li Starts -->

          <a href="#" data-toggle="collapse" data-target="#boxes">
            <!-- anchor Starts -->

            <i class="fa fa-fw fa-arrows"></i> Boxes Section

            <i class="fa fa-fw fa-caret-down"></i>

          </a><!-- anchor Ends -->

          <ul id="boxes" class="collapse">

            <li>

              <a href="index.php?insert_box"> Insert Box </a>

            </li>


            <li>

              <a href="index.php?view_boxes"> View Boxes </a>

            </li>

          </ul>

        </li>
        <!--boxes section li Ends -->




        <li>
          <!-- contact us li Starts -->

          <a href="#" data-toggle="collapse" data-target="#contact_us">
            <!-- anchor Starts -->

            <i class="fa fa-fw fa-pencil"> </i> Contact Us Section

            <i class="fa fa-fw fa-caret-down"></i>

          </a><!-- anchor Ends -->

          <ul id="contact_us" class="collapse">

            <li>

              <a href="index.php?edit_contact_us"> Edit Contact Us </a>

            </li>

            <li>

              <a href="index.php?insert_enquiry"> Insert Enquiry Type </a>

            </li>

            <li>

              <a href="index.php?view_enquiry"> View Enquiry Types </a>

            </li>

          </ul>

        </li><!-- contact us li Ends -->

        <li>
          <!-- about us li Starts -->

          <a href="index.php?edit_about_us">

            <i class="fa fa-fw fa-edit"></i> Edit About Us Page

          </a>

        </li><!-- about us li Ends -->

        <li>
          <!-- terms li Starts -->

          <a href="#" data-toggle="collapse" data-target="#terms">
            <!-- anchor Starts -->

            <i class="fa fa-fw fa-table"></i> Terms

            <i class="fa fa-fw fa-caret-down"></i>

          </a><!-- anchor Ends -->

          <ul id="terms" class="collapse">
            <!-- ul collapse Starts -->

            <li>
              <a href="index.php?insert_term"> Insert Terms </a>
            </li>

            <li>
              <a href="index.php?view_terms"> View Terms </a>
            </li>

          </ul><!-- ul collapse Ends -->


        </li><!-- terms li Ends -->

        <li>
          <!-- Edit Css li Starts -->

          <a href="index.php?edit_css">

            <i class="fa fa-fw fa-list"></i> Edit Css File

          </a>

        </li><!-- Edit Css li Ends -->

        <li>

          <a href="index.php?view_customers">

            <i class="fa fa-fw fa-edit"></i> View Customers

          </a>

        </li>

        <li>

          <a href="index.php?view_orders">

            <i class="fa fa-fw fa-list"></i> View Orders

          </a>

        </li>

        <!-- <li>

          <a href="index.php?view_payments">

            <i class="fa fa-fw fa-pencil"></i> View Payments

          </a>

        </li> -->

        <li>
          <!-- li Starts -->

          <a href="#" data-toggle="collapse" data-target="#users">

            <i class="fa fa-fw fa-gear"></i> Admin Users

            <i class="fa fa-fw fa-caret-down"></i>


          </a>

          <ul id="users" class="collapse">

            <li>
              <a href="index.php?insert_user"> Insert User </a>
            </li>

            <li>
              <a href="index.php?view_users"> View Users </a>
            </li>

            <li>
              <a href="index.php?user_profile=<?php echo $admin_id; ?>"> Edit Profile </a>
            </li>

          </ul>

        </li><!-- li Ends -->

        <li>
          <!-- li Starts -->

          <a href="logout.php">

            <i class="fa fa-fw fa-power-off"></i> Log Out

          </a>

        </li><!-- li Ends -->

      </ul><!-- nav navbar-nav side-nav Ends -->

    </div><!-- collapse navbar-collapse navbar-ex1-collapse Ends -->

  </nav><!-- navbar navbar-inverse navbar-fixed-top Ends -->

<?php } ?>