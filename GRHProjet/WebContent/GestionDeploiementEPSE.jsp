<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  
    <link rel="stylesheet" href="CSSs/css7/open-iconic-bootstrap.min.css">
    <link rel="stylesheet" href="CSSs/css7/animate.css">
    
    <link rel="stylesheet" href="CSSs/css7/owl.carousel.min.css">
    <link rel="stylesheet" href="CSSs/css7/owl.theme.default.min.css">
    <link rel="stylesheet" href="CSSs/css7/magnific-popup.css">
    <link rel="stylesheet" href="CSSs/css7/aos.css">

    <link rel="stylesheet" href="CSSs/css7/ionicons.min.css">

    <link rel="stylesheet" href="CSSs/css7/bootstrap-datepicker.css">
    <link rel="stylesheet" href="CSSs/css7/jquery.timepicker.css">

    <link href="vendors/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">
    
    <link rel="stylesheet" href="CSSs/css7/flaticon.css">
    <link rel="stylesheet" href="CSSs/css7/icomoon.css">
    <link rel="stylesheet" href="CSSs/css7/style.css">
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
<style>
a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}

a:hover {
    background-color: #ddd;
    color: black;
}

.previous {
    background-color: #f1f1f1;
    color: black;
}

.next {
    background-color: #097FB4;
    color: white;
}

.round {
    border-radius: 50%;
}
</style>
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
          <div class="container">
        <div align="center">
        
				</div>

          <div class="row">
            
        <table  id="datatable-buttons" class="table table-striped table-bordered" style="width:100%"  >
		<tbody>
		
		<tr>
				
				<td width="83" align="left"><font face="Calibri" size="2"
					color="#000000"><b>&nbsp;</b></font></td>
				<th width="136" colspan="2" align="center"><font face="Calibri"
					size="2" ><b>Lundi</b></font></th>
				<th width="153" colspan="2" align="center"><font face="Calibri"
					size="2" ><b>Mardi</b></font></th>
				<th width="143" colspan="2" align="center"><font face="Calibri"
					size="2" ><b>Mercredi</b></font></th>
				<th width="145" colspan="2" align="center"><font face="Calibri"
					size="2" ><b>Jeudi</b></font></th>
				<th width="150" colspan="2" align="center"><font face="Calibri"
					size="2" ><b>Vendredi</b></font></th>
			</tr>
		
			
			<tr>
				
				<td width="83" align="left"><font face="Calibri" size="2"
					color="#000000"><b>&nbsp;</b></font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="67" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="78" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="75" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="65" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="78" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="78" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="67" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="86" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="67" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
			</tr>
			<tr>
				<td width="83"   align="center"><font
					face="Calibri" size="2" color="#000000"><b>EP</b></font></td>
				<td width="100" align="center" style="background-color: #F76308;"><font face="Calibri" size="2"
					color="#000000"><b>${l[8]}</b></font></td>
				<td width="100" align="center" style="background-color: #CA7826;"><font face="Calibri" size="2"
					color="#000000"><b>${l[5]}</b></font></td>
				<td width="100" align="center" style="background-color: #F76308;"><font face="Calibri" size="2"
					color="#000000"><b>${l[8]}</b></font></td>
				<td width="100" align="center" style="background-color: #32C319;"><font face="Calibri" size="2"
					color="#000000"><b> ${l[0]} </b></font></td>
				<td width="100" align="center" style="background-color: #E5FB05;"><font face="Calibri" size="2"
					color="#000000"><b>${l[3]}</b></font></td>
				<td width="100" align="center" style="background-color: #F76308;"><font face="Calibri" size="2"
					color="#000000"><b>${l[8]}</b></font></td>
				<td width="100" align="center" style="background-color: #A2FB05;"><font face="Calibri" size="2"
					color="#000000"><b>${l[2]}</b></font></td>
				<td width="100" align="center" style="background-color: #32C319;"><font face="Calibri" size="2"
					color="#000000"><b>${l[0]}</b></font></td>
				<td width="100" align="center" style="background-color: #FFCA8A;"><font face="Calibri" size="2"
					color="#000000"><b>${l[6]}</b></font></td>
				<td width="100"  align="center"><font
					face="Calibri" size="1" color="#000000"></font></td>
			</tr>
			<tr>
			    <td width="83"   align="center"><font
					face="Calibri" size="2" color="#000000"><b>SE</b></font></td>
				<td width="68" align="center" style="background-color: #24EFE9;"><font face="Calibri" size="2"
					color="#000000"><b>${l[1]}</b></font></td>
				<td width="67" align="center" style="background-color: #E5FB05;"><font face="Calibri" size="2"
					color="#000000"><b>${l[3]}</b></font></td>
				<td width="78" align="center" style="background-color: #FA0A06;"><font face="Calibri" size="2"
					color="#000000"><b>${l[7]}</b></font></td>
				<td width="75" align="center" style="background-color: #FFCA8A;"><font face="Calibri" size="2"
					color="#000000"><b>${l[6]}</b></font></td>
				<td width="65" align="center" style="background-color: #24EFE9;"><font face="Calibri" size="2"
					color="#000000"><b>${l[1]}</b></font></td>
				<td width="78" align="center" style="background-color: #7D833E;"><font face="Calibri" size="2"
					color="#000000"><b>${l[4]}</b></font></td>
				<td width="78" align="center" style="background-color: #9908F7;"><font face="Calibri" size="2"
					color="#000000"><b>${l[9]}</b></font></td>
				<td width="67" align="center" style="background-color: #CA7826;"><font face="Calibri" size="2"
					color="#000000"><b>${l[5]}</b></font></td>
				<td width="86" align="center" style="background-color: #24EFE9;"><font face="Calibri" size="2"
					color="#000000"><b>${l[1]}</b></font></td>
				<td width="68"  align="center"><font
					face="Calibri" size="1" color="#000000"></font></td>
			</tr>
			
			
			<tr>
			</tr>
		</tbody>
	</table>
          </div>
          <br />


          <button id="button" class="btn btn-primary" onclick="printEmploi()">
								<i class="fa fa-print"></i> Print
							</button>
							<script>
								function printEmploi(){
									var tabletoprint = document.getElementById('datatable-buttons');
									newWin = window.open("");
									newWin.document.write(tabletoprint.outerHTML);
									
									newWin.print();
									newWin.close();
								
									
								}
								
							</script>

</div>
                
                
              </div>
            </div>
          </div>
        <!-- /page content -->

        

    <script src="JSs/js7/jquery-migrate-3.0.1.min.js"></script>
  <script src="JSs/js7/popper.min.js"></script>
  <script src="JSs/js7/bootstrap.min.js"></script>
  <script src="JSs/js7/jquery.easing.1.3.js"></script>
  <script src="JSs/js7/jquery.waypoints.min.js"></script>
  <script src="JSs/js7/jquery.stellar.min.js"></script>
  <script src="JSs/js7/owl.carousel.min.js"></script>
  <script src="JSs/js7/jquery.magnific-popup.min.js"></script>
  <script src="JSs/js7/aos.js"></script>
  <script src="JSs/js7/jquery.animateNumber.min.js"></script>
  <script src="JSs/js7/bootstrap-datepicker.js"></script>
  <script src="JSs/js7/jquery.timepicker.min.js"></script>
  <script src="JSs/js7/scrollax.min.js"></script>
  <script src="JSs/https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
  <script src="JSs/js7/google-map.js"></script>
  <script src="JSs/js7/main.js"></script>
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

    <script src="../vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="../vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="../vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="../vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="../vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="../vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="../vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="../vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="../vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="../vendors/jszip/dist/jszip.min.js"></script>
    <script src="../vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="../vendors/pdfmake/build/vfs_fonts.js"></script>
    <!-- Custom Theme Scripts -->
    <script src="build/build1/js/custom.min.js"></script>
	
  </body>
</html>
