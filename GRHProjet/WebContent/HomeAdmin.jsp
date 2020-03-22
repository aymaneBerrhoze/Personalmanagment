<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="icon" href="images/favicon.ico" type="image/ico" />

    <title>Gestion des Ressources Humaines | </title>

    <!-- Bootstrap -->
    <link href="vendors/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
	
    <!-- bootstrap-progressbar -->
    <link href="vendors/vendors/bootstrap-progressbar/css/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet">
    <!-- JQVMap -->
    <link href="vendors/vendors/jqvmap/dist/jqvmap.min.css" rel="stylesheet"/>
    <!-- bootstrap-daterangepicker -->
    <link href="vendors/vendors/bootstrap-daterangepicker/daterangepicker.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/build1/css/custom.min.css" rel="stylesheet">
    <link rel="icon" type="image/png"
	href="images/images4/icons/GRH.png" />
  </head>

  <body class="nav-md">
<% if(session.getAttribute("admin")==null){ 
        response.sendRedirect("Login.jsp");} 
   	 %>
  
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="HomeAdmin.jsp" class="site_title"><i class="fa fa-cogs"></i> <span>G.R.H</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/images1/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>${ admin }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>General</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="HomeAdmin.jsp">Home</a></li>
                      
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-users"></i> Employes <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="AjouterEmploye.jsp">Ajouter un Employe</a></li>
                      <li><a href="listeEmploye">Liste des Employes</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clock-o"></i> Absences <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                       <li><a href="AjouterAbsence">Ajouter une absence</a></li>
                       <li><a href="listeAbsence">Liste des absences</a></li>
                      
                    </ul>
                  </li>
                  <li><a><i class="fa fa-refresh"></i> Gestion de deploiement <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="consempAGeneral">Général</a></li>
                      <li><a href="consempAAcceuil">Acceuil</a></li>
                      <li><a href="consempAEPSE">EP/SE</a></li>
                      <li><a href="consempAAutoEmploi">Auto-Emploi</a></li>
                      <li><a href="consempAARE">ARE</a></li>
                    </ul>
                  </li>
                  
                  
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-envelope"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                    <li><a href="listeMessage">Contacts</a></li>
                      
                    </ul>
                  </li>
                  
                                   
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings" href="editAdmin?loginAdmin=${admin}">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Profil" href="ProfilAdmin?loginAdmin=${admin}">
                <span class="glyphicon glyphicon-user" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
        <div class="top_nav">
          <div class="nav_menu">
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>
              <nav class="nav navbar-nav">
              <ul class=" navbar-right">
                <li class="nav-item dropdown open" style="padding-left: 15px;">
                  <a href="javascript:;" class="user-profile dropdown-toggle" aria-haspopup="true" id="navbarDropdown" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/images1/img.jpg" alt="">${admin }
                  </a>
                  <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item"  href="ProfilAdmin?loginAdmin=${admin}"> Profile</a>
                      <a class="dropdown-item"  href="editAdmin?loginAdmin=${admin}">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                  <a class="dropdown-item"  href="javascript:;">Help</a>
                    <a class="dropdown-item"  href="logout"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </div>
                </li>

                <li role="presentation" class="nav-item dropdown open">
                  <a href="listeMessage" class="dropdown-toggle info-number" >
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <div class="row" style="display: inline-block;" >
          <div class="tile_count">
            <div class="col-md-3 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Total Employes</span>
              <div class="count">10</div>
              
            </div>
            <div class="col-md-3 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-clock-o"></i> Total Postes</span>
              <div class="count">4</div>
               </div>
            <div class="col-md-3 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Poste 1</span>
              <div class="count green"><h2>Acceuil</h2></div>
               </div>
            <div class="col-md-3 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Poste 2</span>
              <div class="count green"><h2>EP/SE</h2></div>
               </div>
            <div class="col-md-3 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Poste 2</span>
              <div class="count green"><h2>Auto-Emploi</h2></div>
               </div>
            <div class="col-md-3 col-sm-4  tile_stats_count">
              <span class="count_top"><i class="fa fa-user"></i> Poste 4</span>
              <div class="count green"><h2>ARE</h2></div>
               </div>
          </div>
        </div>
          <!-- /top tiles -->

          <div class="row">
            

          </div>
          <br />

           
           
          
              <div class="row">


                
                
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        
     

    <!-- jQuery -->
    <script src="vendors/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="vendors/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/vendors/nprogress/nprogress.js"></script>
    <!-- Chart.js -->
    <script src="vendors/vendors/Chart.js/dist/Chart.min.js"></script>
    <!-- gauge.js -->
    <script src="vendors/vendors/gauge.js/dist/gauge.min.js"></script>
    <!-- bootstrap-progressbar -->
    <script src="vendors/vendors/bootstrap-progressbar/bootstrap-progressbar.min.js"></script>
    <!-- iCheck -->
    <script src="vendors/vendors/iCheck/icheck.min.js"></script>
    <!-- Skycons -->
    <script src="vendors/vendors/skycons/skycons.js"></script>
    <!-- Flot -->
    <script src="vendors/vendors/Flot/jquery.flot.js"></script>
    <script src="vendors/vendors/Flot/jquery.flot.pie.js"></script>
    <script src="vendors/vendors/Flot/jquery.flot.time.js"></script>
    <script src="vendors/vendors/Flot/jquery.flot.stack.js"></script>
    <script src="vendors/vendors/Flot/jquery.flot.resize.js"></script>
    <!-- Flot plugins -->
    <script src="vendors/vendors/flot.orderbars/js/jquery.flot.orderBars.js"></script>
    <script src="vendors/vendors/flot-spline/js/jquery.flot.spline.min.js"></script>
    <script src="vendors/vendors/flot.curvedlines/curvedLines.js"></script>
    <!-- DateJS -->
    <script src="vendors/vendors/DateJS/build/date.js"></script>
    <!-- JQVMap -->
    <script src="vendors/vendors/jqvmap/dist/jquery.vmap.js"></script>
    <script src="vendors/vendors/jqvmap/dist/maps/jquery.vmap.world.js"></script>
    <script src="vendors/vendors/jqvmap/examples/js/jquery.vmap.sampledata.js"></script>
    <!-- bootstrap-daterangepicker -->
    <script src="vendors/vendors/moment/min/moment.min.js"></script>
    <script src="vendors/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
 <!-- jQuery -->
    <script src="vendors/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="vendors/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/vendors/nprogress/nprogress.js"></script>
    <!-- ECharts -->
    <script src="vendors/vendors/echarts/dist/echarts.min.js"></script>
    <script src="vendors/vendors/echarts/map/js/world.js"></script>

   
    <!-- Custom Theme Scripts -->
    <script src="build/build1/js/custom.min.js"></script>
	
  </body>
</html>
