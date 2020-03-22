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

    <title>DataTables | Gentelella</title>

    <!-- Bootstrap -->
    <link href="cdn.datatables.net/1.10.20/css/jquery.dataTables.min.css">
    <link href="vendors/vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- iCheck -->
    <link href="vendors/vendors/iCheck/skins/flat/green.css" rel="stylesheet">
    <!-- Datatables -->
    
    <link href="vendors/vendors/datatables.net-bs/css/dataTables.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-buttons-bs/css/buttons.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-fixedheader-bs/css/fixedHeader.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-responsive-bs/css/responsive.bootstrap.min.css" rel="stylesheet">
    <link href="vendors/vendors/datatables.net-scroller-bs/css/scroller.bootstrap.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/build1/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentelella Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile clearfix">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
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
                      <li><a href="index.html">Dashboard</a></li>
                      <li><a href="index2.html">Dashboard2</a></li>
                      <li><a href="index3.html">Dashboard3</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="form.html">General Form</a></li>
                      <li><a href="form_advanced.html">Advanced Components</a></li>
                      <li><a href="form_validation.html">Form Validation</a></li>
                      <li><a href="form_wizards.html">Form Wizard</a></li>
                      <li><a href="form_upload.html">Form Upload</a></li>
                      <li><a href="form_buttons.html">Form Buttons</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> UI Elements <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="general_elements.html">General Elements</a></li>
                      <li><a href="media_gallery.html">Media Gallery</a></li>
                      <li><a href="typography.html">Typography</a></li>
                      <li><a href="icons.html">Icons</a></li>
                      <li><a href="glyphicons.html">Glyphicons</a></li>
                      <li><a href="widgets.html">Widgets</a></li>
                      <li><a href="invoice.html">Invoice</a></li>
                      <li><a href="inbox.html">Inbox</a></li>
                      <li><a href="calendar.html">Calendar</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> Tables <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">Tables</a></li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> Data Presentation <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a></li>
                      <li><a href="chartjs2.html">Chart JS2</a></li>
                      <li><a href="morisjs.html">Moris JS</a></li>
                      <li><a href="echarts.html">ECharts</a></li>
                      <li><a href="other_charts.html">Other Charts</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-clone"></i>Layouts <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="fixed_sidebar.html">Fixed Sidebar</a></li>
                      <li><a href="fixed_footer.html">Fixed Footer</a></li>
                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> Additional Pages <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a></li>
                      <li><a href="projects.html">Projects</a></li>
                      <li><a href="project_detail.html">Project Detail</a></li>
                      <li><a href="contacts.html">Contacts</a></li>
                      <li><a href="profile.html">Profile</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_403.html">403 Error</a></li>
                      <li><a href="page_404.html">404 Error</a></li>
                      <li><a href="page_500.html">500 Error</a></li>
                      <li><a href="plain_page.html">Plain Page</a></li>
                      <li><a href="login.html">Login Page</a></li>
                      <li><a href="pricing_tables.html">Pricing Tables</a></li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-sitemap"></i> Multilevel Menu <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                        <li><a href="#level1_1">Level One</a>
                        <li><a>Level One<span class="fa fa-chevron-down"></span></a>
                          <ul class="nav child_menu">
                            <li class="sub_menu"><a href="level2.html">Level Two</a>
                            </li>
                            <li><a href="#level2_1">Level Two</a>
                            </li>
                            <li><a href="#level2_2">Level Two</a>
                            </li>
                          </ul>
                        </li>
                        <li><a href="#level1_2">Level One</a>
                        </li>
                    </ul>
                  </li>                  
                  <li><a href="javascript:void(0)"><i class="fa fa-laptop"></i> Landing Page <span class="label label-success pull-right">Coming Soon</span></a></li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout" href="login.html">
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
                      <img src="images/img.jpg" alt="">John Doe
                    </a>
                    <div class="dropdown-menu dropdown-usermenu pull-right" aria-labelledby="navbarDropdown">
                      <a class="dropdown-item"  href="javascript:;"> Profile</a>
                        <a class="dropdown-item"  href="javascript:;">
                          <span class="badge bg-red pull-right">50%</span>
                          <span>Settings</span>
                        </a>
                    <a class="dropdown-item"  href="javascript:;">Help</a>
                      <a class="dropdown-item"  href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </div>
                  </li>
  
                  <li role="presentation" class="nav-item dropdown open">
                    <a href="javascript:;" class="dropdown-toggle info-number" id="navbarDropdown1" data-toggle="dropdown" aria-expanded="false">
                      <i class="fa fa-envelope-o"></i>
                      <span class="badge bg-green">6</span>
                    </a>
                    <ul class="dropdown-menu list-unstyled msg_list" role="menu" aria-labelledby="navbarDropdown1">
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <a class="dropdown-item">
                          <span class="image"><img src="images/img.jpg" alt="Profile Image" /></span>
                          <span>
                            <span>John Smith</span>
                            <span class="time">3 mins ago</span>
                          </span>
                          <span class="message">
                            Film festivals used to be do-or-die moments for movie makers. They were where...
                          </span>
                        </a>
                      </li>
                      <li class="nav-item">
                        <div class="text-center">
                          <a class="dropdown-item">
                            <strong>See All Alerts</strong>
                            <i class="fa fa-angle-right"></i>
                          </a>
                        </div>
                      </li>
                    </ul>
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
                <h3>Users <small>Some examples to get you started</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                      <button class="btn btn-secondary" type="button">Go!</button>
                    </span>
                  </div>
                </div>
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              

             

              <div class="col-md-12 col-sm-12 ">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Button Example <small>Users</small></h2>
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
                      <div class="row">
                          <div class="col-sm-12">
                            <div class="card-box table-responsive">
                    <p class="text-muted font-13 m-b-30">
                      The Buttons extension for DataTables provides a common set of options, API methods and styling to display buttons on a page that will interact with a DataTable. The core library provides the based framework upon which plug-ins can built.
                    </p>
                    <table id="datatable-buttons" class="table table-striped table-bordered" style="width:100%">
                      <thead>
                        <tr>
				<td width="63" align="left"><font face="Calibri" size="2"
					color="#000000">&nbsp;</font></td>
				<td width="83" align="left"><font face="Calibri" size="2"
					color="#000000">&nbsp;</font></td>
				<td width="68" align="left"><font face="Calibri" size="2"
					color="#000000">&nbsp;</font></td>
				<td width="67" align="left"><font face="Calibri" size="2"
					color="#1F497D"><b>&nbsp;</b></font></td>
				<td width="78" align="left"><font face="Calibri" size="2"
					color="#1F497D" ><b>&nbsp;</b></font></td>
				<td width="296" colspan="4" align="center" style="background-color: #A6DFF9;"><font face="Calibri"
					size="2" color="#FFFFFF"  ><b>SEMAINE 1 </b></font></td>
				<td width="67" align="left"><font face="Calibri" size="2"
					color="#1F497D"><b>&nbsp;</b></font></td>
				<td width="86" align="left"><font face="Calibri" size="2"
					color="#1F497D"><b>&nbsp;</b></font></td>
				<td width="64" align="left"><font face="Calibri" size="2"
					color="#000000">&nbsp;</font></td>
			</tr>
			<tr>
				<td width="63" align="left"><font face="Calibri" size="2"
					color="#000000" ><b>&nbsp;</b></font></td>
				<td width="83" align="left"><font face="Calibri" size="2"
					color="#000000" ><b>&nbsp;</b></font></td>
				<th width="136" colspan="2" align="center" style="background-color: #FFFFFF;"><font face="Calibri"
					size="2" color="#000000"><b>Lundi</b></font></th>
				<th width="153" colspan="2" align="center" style="background-color: #FFFFFF;"><font face="Calibri"
					size="2" color="#000000"><b>Mardi</b></font></th>
				<th width="143" colspan="2" align="center" style="background-color: #FFFFFF;"><font face="Calibri"
					size="2" color="#000000"><b>Mercredi</b></font></th>
				<th width="145" colspan="2" align="center" style="background-color: #FFFFFF;"><font face="Calibri"
					size="2" color="#000000"><b>Jeudi</b></font></th>
				<th width="145" colspan="2" align="center" style="background-color: #FFFFFF;"><font face="Calibri"
					size="2" color="#000000"><b>Vendredi</b></font></th>
			</tr>
			<tr>
				<td width="63" rowspan="3" align="center"><font face="Calibri"
					size="2" color="#000000"><b>ACCEUIL</b></font></td>
				<td width="83" align="center"><font face="Calibri" size="1"
					color="#000000">09h00 A 11h20</font></td>
				<td width="136" colspan="2" align="center" style="background-color: #32C319;"><font face="Calibri"
					size="2" color="#000000"><b>${l[0]}</b></font></td>
				<td width="153" colspan="2" align="center" style="background-color: #24EFE9;"><font face="Calibri"
					size="2" color="#000000"><b>${l[1]}</b></font></td>
				<td width="143" colspan="2" align="center" style="background-color: #A2FB05;"><font face="Calibri"
					size="2" color="#000000"><b>${l[2]}</b></font></td>
				<td width="145" colspan="2" align="center" style="background-color: #E5FB05;"><font face="Calibri"
					size="2" color="#000000"><b>${l[3]}</b></font></td>
				<td width="145" colspan="2" align="center" style="background-color: #7D833E;"><font face="Calibri" size="2"
					color="#000000"><b>${l[4]}</b></font></td>
				
			</tr>
			<tr>
				<td width="83" align="center"><font face="Calibri" size="1"
					color="#000000">11h20 A 13h40</font></td>
				<td width="136" colspan="2" align="center" style="background-color: #A2FB05;"><font face="Calibri"
					size="2" color="#000000"><b>${l[2]}</b></font></td>
				<td width="153" colspan="2" align="center" style="background-color: #CA7826;"><font face="Calibri"
					size="2" color="#000000"><b>${l[5]}</b></font></td>
				<td width="143" colspan="2" align="center" style="background-color: #32C319;"><font face="Calibri"
					size="2" color="#000000"><b>${l[0]}</b></font></td>
				<td width="145" colspan="2" align="center" style="background-color: #24EFE9;"><font face="Calibri"
					size="2" color="#000000"><b>${l[1]}</b></font></td>
				<td width="145" colspan="2" align="center" style="background-color: #CA7826;"><font face="Calibri" size="2"
					color="#000000"><b>${l[5]}</b></font></td>
			</tr>
			<tr>
				<td width="83" align="center"><font face="Calibri" size="1"
					color="#000000">13h40 A 16h00</font></td>
				<td width="136" colspan="2" align="center" style="background-color: #FFCA8A;"><font face="Calibri"
					size="2" color="#000000"><b>${l[6]}</b></font></td>
				<td width="153" colspan="2" align="center" style="background-color: #E5FB05;"><font face="Calibri"
					size="2" color="#000000"><b>${l[3]}</b></font></td>
				<td width="143" colspan="2" align="center" style="background-color: #FA0A06;"><font face="Calibri"
					size="2" color="#000000"><b>${l[7]}</b></font></td>
				<td width="145" colspan="2" align="center" style="background-color: #7D833E;"><font face="Calibri"
					size="2" color="#000000"><b>${l[4]}</b></font></td>
				<td width="145" colspan="2" align="center" ><font face="Calibri" size="2"
					color="#000000"><b>&nbsp;</b></font></td>
			</tr>
			<tr>
				<td width="63" align="left"><font face="Calibri" size="2"
					color="#000000"><b>&nbsp;</b></font></td>
				<td width="83" align="left"><font face="Calibri" size="2"
					color="#000000"><b>&nbsp;</b></font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">AM</font></td>
				<td width="68" bgcolor="#D9D9D9" align="center"><font
					face="Calibri" size="1" color="#000000">PM</font></td>
			</tr>
			<tr>
				<td width="146" rowspan="2" colspan="2" align="center"><font
					face="Calibri" size="2" color="#000000"><b>E P/ SE</b></font></td>
				<td width="68" align="center" style="background-color: #F76308;"><font face="Calibri" size="2"
					color="#000000"><b>${l[8]}</b></font></td>
				<td width="67" align="center" style="background-color: #CA7826;"><font face="Calibri" size="2"
					color="#000000"><b>${l[5]}</b></font></td>
				<td width="78" align="center" style="background-color: #F76308;"><font face="Calibri" size="2"
					color="#000000"><b>${l[8]}</b></font></td>
				<td width="75" align="center" style="background-color: #32C319;"><font face="Calibri" size="2"
					color="#000000"><b> ${l[0]} </b></font></td>
				<td width="65" align="center" style="background-color: #E5FB05;"><font face="Calibri" size="2"
					color="#000000"><b>${l[3]}</b></font></td>
				<td width="78" align="center" style="background-color: #F76308;"><font face="Calibri" size="2"
					color="#000000"><b>${l[8]}</b></font></td>
				<td width="78" align="center" style="background-color: #A2FB05;"><font face="Calibri" size="2"
					color="#000000"><b>${l[2]}</b></font></td>
				<td width="67" align="center" style="background-color: #32C319;"><font face="Calibri" size="2"
					color="#000000"><b>${l[0]}</b></font></td>
				<td width="86" align="center" style="background-color: #FFCA8A;"><font face="Calibri" size="2"
					color="#000000"><b>${l[6]}</b></font></td>
				<td width="68"  align="center"><font
					face="Calibri" size="1" color="#000000"></font></td>
			</tr>
			<tr>
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
				<td width="146" colspan="2" align="center"><font face="Calibri"
					size="1" color="#000000"><b>AUTO-EMPLOI</b></font></td>
				<td width="136" colspan="2" align="center" style="background-color: #9908F7;"><font face="Calibri"
					size="2" color="#000000"><b>${l[9]}</b></font></td>
				<td width="153" colspan="2" align="center" style="background-color: #9908F7;"><font face="Calibri"
					size="2" color="#000000"><b>${l[9]}</b></font></td>
				<td width="143" colspan="2" align="center" style="background-color: #9908F7;"><font face="Calibri"
					size="2" color="#000000"><b>${l[9]}</b></font></td>
				<td width="78" align="center"><font face="Calibri" size="2"
					color="#000000"><b>&nbsp;</b></font></td>
				<td width="67" align="center" style="background-color: #9908F7;"><font face="Calibri" size="2"
					color="#000000"><b>${l[9]}</b></font></td>
				<td width="86" align="center" style="background-color: #9908F7;"><font face="Calibri" size="2"
					color="#000000"><b>${l[9]}</b></font></td>
				<td width="68"  align="center"><font
					face="Calibri" size="1" color="#000000"></font></td>
			</tr>
			<tr>
				<td width="146" colspan="2" align="center"><font face="Calibri"
					size="2" color="#000000"><b>ARE</b></font></td>
				<td width="136" colspan="2" align="center" style="background-color: #7D833E;"><font face="Calibri"
					size="2" color="#000000"><b>${l[4]}</b></font></td>
				<td width="153" colspan="2" align="center" style="background-color: #A2FB05;"><font face="Calibri"
					size="2" color="#000000"><b>${l[2]}</b></font></td>
				<td width="143" colspan="2" align="center" style="background-color: #CA7826;"><font face="Calibri"
					size="2" color="#000000"><b>${l[5]}</b></font></td>
				<td width="145" colspan="2" align="center" style="background-color: #FFCA8A;"><font face="Calibri"
					size="2" color="#000000"><b>${l[6]}</b></font></td>
				<td width="86" align="center" style="background-color: #A2FB05;"><font face="Calibri" size="2"
					color="#000000"><b>${l[2]}</b></font></td>
				<td width="68"  align="center"><font
					face="Calibri" size="1" color="#000000"></font></td>
			</tr>
                      </thead>


                    </table>
                  </div>
                </div>
              </div>
            </div>
                </div>
              </div>

              

              
              
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Gentelella - Bootstrap Admin Template by <a href="https://colorlib.com">Colorlib</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
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
    <!-- Datatables -->
    <script src="vendors/vendors/datatables.net/js/jquery.dataTables.min.js"></script>
    <script src="vendors/vendors/datatables.net-bs/js/dataTables.bootstrap.min.js"></script>
    <script src="vendors/vendors/datatables.net-buttons/js/dataTables.buttons.min.js"></script>
    <script src="vendors/vendors/datatables.net-buttons-bs/js/buttons.bootstrap.min.js"></script>
    <script src="vendors/vendors/datatables.net-buttons/js/buttons.flash.min.js"></script>
    <script src="vendors/vendors/datatables.net-buttons/js/buttons.html5.min.js"></script>
    <script src="vendors/vendors/datatables.net-buttons/js/buttons.print.min.js"></script>
    <script src="vendors/vendors/datatables.net-fixedheader/js/dataTables.fixedHeader.min.js"></script>
    <script src="vendors/vendors/datatables.net-keytable/js/dataTables.keyTable.min.js"></script>
    <script src="vendors/vendors/datatables.net-responsive/js/dataTables.responsive.min.js"></script>
    <script src="vendors/vendors/datatables.net-responsive-bs/js/responsive.bootstrap.js"></script>
    <script src="vendors/vendors/datatables.net-scroller/js/dataTables.scroller.min.js"></script>
    <script src="vendors/vendors/jszip/dist/jszip.min.js"></script>
    <script src="vendors/vendors/pdfmake/build/pdfmake.min.js"></script>
    <script src="vendors/vendors/pdfmake/build/vfs_fonts.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="build/build1/js/custom.min.js"></script>

  </body>
</html>