<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Gestion des Ressources Humaines | </title>

    <!-- Bootstrap -->
    <link href="vendors/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
   <link href="vendors/vendors/iCheck/skins/flat/green.css" rel="stylesheet">

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
                <h2>${admin }</h2>
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
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Afficher un employé</h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5   form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row" style="display: block;">
              


             <div class="col-md-6 col-sm-6  ">
                <div class="x_panel">
                  <div class="x_title">
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="#">Settings 1</a>
                            <a class="dropdown-item" href="#">Settings 2</a>
                          </div>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">

                    <table class="table table-bordered">
                      
                      <tbody>
                        <tr>
                          <th scope="row">Nom Employe</th>
                          <td>${ idEmploye.nomEmploye}</td>
                          
                        </tr>
                        <tr>
                          <th scope="row">Email Employe</th>
                          <td>${ idEmploye.emailEmploye}</td>
                         
                        </tr>
                        <tr>
                          <th scope="row">Date Naissance Employe</th>
                          <td>${ idEmploye.dateNaissanceEmploye} </td>
                          
                        </tr>
                        <tr>
                          <th scope="row">Salaire Employe</th>
                          <td>${ idEmploye.salaireEmploye} DHS</td>
                          
                        </tr>
                        
                        <tr>
                          <th scope="row">Mot de passe Employe</th>
                          <td>${ idEmploye.mdpEmploye}</td>
                          
                        </tr>
                        
                        
                        
                        <tr>
                          <th scope="row">CNI Employe</th>
                          <td>${ idEmploye.cniEmploye}</td>
                          
                        </tr>
                        
                        
                        
                      </tbody>
                    </table>

                  </div>
                </div>
              </div>
              

              <div class="clearfix"></div>
                  <div class="item form-group">
                        <div class="col-md-6 col-sm-6 offset-md-3">
                          <a href="listeEmploye"><button class="btn btn-primary" type="button">Cancel</button></a>
						  
                        </div>
                      </div>
              
            </div>
          </div>
        </div>
        <!-- /page content -->

        
      </div>
    </div>

    <!-- jQuery -->
    <script src="vendors/vendors/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap -->
   <script src="vendors/vendors/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- FastClick -->
    <script src="vendors/vendors/fastclick/lib/fastclick.js"></script>
    <!-- NProgress -->
    <script src="vendors/vendors/nprogress/nprogress.js"></script>
    <!-- iCheck -->
    <script src="vendors/vendors/iCheck/icheck.min.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/build1/js/custom.min.js"></script>
  </body>
</html>
