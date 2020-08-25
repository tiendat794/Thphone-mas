<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="UTF-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <title>THphone</title>

      <link rel="stylesheet" href="admin/layout/assets/vendors/core/core.css">
      <!-- endinject -->
      <!-- plugin css for this page -->
      <link rel="stylesheet" href="admin/layout/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
      <!-- end plugin css for this page -->
      <!-- inject:css -->
      <link rel="stylesheet" href="admin/layout/assets/fonts/feather-font/css/iconfont.css">
      <!-- endinject -->
      <!-- Layout styles -->  
      <link rel="stylesheet" href="admin/layout/assets/css/demo_1/style.css">
      <!-- End layout styles -->
      <link rel="shortcut icon" href="../assets/images/favicon.png" />
      <script type="text/javascript" src="admin/ckeditor/ckeditor.js"></script>
      <script async src="https://www.googletagmanager.com/gtag/js?id=UA-146586338-1"></script>
      <!-- datatable -->
      <link href="admin/layout/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css" rel="stylesheet" type="text/css"/>
      <script>
       window.dataLayer = window.dataLayer || [];
       function gtag() {
         dataLayer.push(arguments);
       }
       gtag('js', new Date());

       gtag('config', 'UA-146586338-1');
      </script>
   </head>
   <body>
      <div class="main-wrapper">
         <nav class="sidebar">
            <div class="sidebar-header">
               <a href="index.php" class="sidebar-brand">
                  <img src="upload/logo/4.jpg" width="80%">
               </a>
               <div class="sidebar-toggler not-active">
                  <span></span>
                  <span></span>
                  <span></span>
               </div>
            </div>
            <div class="sidebar-body">
               <ul class="nav">
                  <li class="nav-item nav-category">Main</li>
                  <li class="nav-item">
                     <a href="admin.php?act=homepage" class="nav-link">
                        <i class="link-icon" data-feather="home"></i>
                        <span class="link-title">Dashboard</span>
                     </a>
                  </li>
                  <li class="nav-item nav-category">Quản lí</li>                
                  <li class="nav-item">
                     <a href="admin.php?act=qldmsp" class="nav-link">
                        <i class="link-icon" data-feather="layers"></i>
                        <span class="link-title">Danh mục</span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?act=qlsp" class="nav-link">
                        <i class="link-icon" data-feather="smartphone"></i>
                        <span class="link-title">Sản phẩm</span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?act=qlbl" class="nav-link">
                        <i class="link-icon" data-feather="message-circle"></i>
                        <span class="link-title">Bình luận</span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?act=qlnd" class="nav-link">
                        <i class="link-icon" data-feather="user"></i>
                        <span class="link-title">Tài khoản</span>
                     </a>
                  </li>
                  
                  <li class="nav-item">
                     <a href="admin.php?act=qlhd" class="nav-link">
                        <i class="link-icon" data-feather="shopping-cart"></i>
                        <span class="link-title">Hóa đơn</span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?act=qlht" class="nav-link">
                        <i class="link-icon" data-feather="phone"></i>
                        <span class="link-title">Hỗ trợ</span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?act=qlbn" class="nav-link">
                        <i class="link-icon" data-feather="image"></i>
                        <span class="link-title">Banner</span>
                     </a>
                  </li>
                  <li class="nav-item">
                     <a href="admin.php?act=qltt" class="nav-link">
                        <i class="link-icon" data-feather="edit-2"></i>
                        <span class="link-title">Tin tức</span>
                     </a>
                  </li>

               </ul>
            </div>
         </nav>

         <div class="page-wrapper">
            <!-- partial:partials/_navbar.html -->
            <nav class="navbar">
               <a href="#" class="sidebar-toggler">
                  <i data-feather="menu"></i>
               </a>
               <div class="navbar-content">
                  <form class="search-form">
                     <div class="input-group">
                        <div class="input-group-prepend">
                           <div class="input-group-text">
                              <i data-feather="search"></i>
                           </div>
                        </div>
                        <input type="text" class="form-control" id="navbarForm" placeholder="Search here...">
                     </div>
                  </form>
                  <ul class="navbar-nav">
                     <li class="nav-item dropdown nav-apps">
                        <a class="nav-link dropdown-toggle" href="#" id="appsDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i data-feather="grid"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="appsDropdown">
                           <div class="dropdown-header d-flex align-items-center justify-content-between">
                              <p class="mb-0 font-weight-medium">Web Apps</p>
                              <a href="javascript:;" class="text-muted">Edit</a>
                           </div>
                           <div class="dropdown-body">
                              <div class="d-flex align-items-center apps">
                                 <a href="pages/apps/chat.html"><i data-feather="message-square" class="icon-lg"></i><p>Chat</p></a>
                                 <a href="pages/apps/calendar.html"><i data-feather="calendar" class="icon-lg"></i><p>Calendar</p></a>
                                 <a href="pages/email/inbox.html"><i data-feather="mail" class="icon-lg"></i><p>Email</p></a>
                                 <a href="pages/general/profile.html"><i data-feather="instagram" class="icon-lg"></i><p>Profile</p></a>
                              </div>
                           </div>
                           <div class="dropdown-footer d-flex align-items-center justify-content-center">
                              <a href="javascript:;">View all</a>
                           </div>
                        </div>
                     </li>
                     <li class="nav-item dropdown nav-messages">
                        <a class="nav-link dropdown-toggle" href="#" id="messageDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i data-feather="mail"></i>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="messageDropdown">
                           <div class="dropdown-header d-flex align-items-center justify-content-between">
                              <p class="mb-0 font-weight-medium">9 New Messages</p>
                              <a href="javascript:;" class="text-muted">Clear all</a>
                           </div>
                           <div class="dropdown-body">
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="figure">
                                    <img src="admin/layout/assets/images/faces/face2.jpg" alt="userr">
                                 </div>
                                 <div class="content">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <p>Leonardo Payne</p>
                                       <p class="sub-text text-muted">2 min ago</p>
                                    </div>	
                                    <p class="sub-text text-muted">Project status</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="figure">
                                    <img src="admin/layout/assets/images/faces/face3.jpg" alt="userr">
                                 </div>
                                 <div class="content">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <p>Carl Henson</p>
                                       <p class="sub-text text-muted">30 min ago</p>
                                    </div>	
                                    <p class="sub-text text-muted">Client meeting</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="figure">
                                    <img src="admin/layout/assets/images/faces/face4.jpg" alt="userr">
                                 </div>
                                 <div class="content">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <p>Jensen Combs</p>												
                                       <p class="sub-text text-muted">1 hrs ago</p>
                                    </div>	
                                    <p class="sub-text text-muted">Project updates</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="figure">
                                    <img src="admin/layout/assets/images/faces/face5.jpg" alt="userr">
                                 </div>
                                 <div class="content">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <p>Amiah Burton</p>
                                       <p class="sub-text text-muted">2 hrs ago</p>
                                    </div>
                                    <p class="sub-text text-muted">Project deadline</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="figure">
                                    <img src="admin/layout/assets/images/faces/face6.jpg" alt="userr">
                                 </div>
                                 <div class="content">
                                    <div class="d-flex justify-content-between align-items-center">
                                       <p>Yaretzi Mayo</p>
                                       <p class="sub-text text-muted">5 hr ago</p>
                                    </div>
                                    <p class="sub-text text-muted">New record</p>
                                 </div>
                              </a>
                           </div>
                           <div class="dropdown-footer d-flex align-items-center justify-content-center">
                              <a href="javascript:;">View all</a>
                           </div>
                        </div>
                     </li>
                     <li class="nav-item dropdown nav-notifications">
                        <a class="nav-link dropdown-toggle" href="#" id="notificationDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <i data-feather="bell"></i>
                           <div class="indicator">
                              <div class="circle"></div>
                           </div>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="notificationDropdown">
                           <div class="dropdown-header d-flex align-items-center justify-content-between">
                              <p class="mb-0 font-weight-medium">6 New Notifications</p>
                              <a href="javascript:;" class="text-muted">Clear all</a>
                           </div>
                           <div class="dropdown-body">
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="icon">
                                    <i data-feather="user-plus"></i>
                                 </div>
                                 <div class="content">
                                    <p>New customer registered</p>
                                    <p class="sub-text text-muted">2 sec ago</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="icon">
                                    <i data-feather="gift"></i>
                                 </div>
                                 <div class="content">
                                    <p>New Order Recieved</p>
                                    <p class="sub-text text-muted">30 min ago</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="icon">
                                    <i data-feather="alert-circle"></i>
                                 </div>
                                 <div class="content">
                                    <p>Server Limit Reached!</p>
                                    <p class="sub-text text-muted">1 hrs ago</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="icon">
                                    <i data-feather="layers"></i>
                                 </div>
                                 <div class="content">
                                    <p>Apps are ready for update</p>
                                    <p class="sub-text text-muted">5 hrs ago</p>
                                 </div>
                              </a>
                              <a href="javascript:;" class="dropdown-item">
                                 <div class="icon">
                                    <i data-feather="download"></i>
                                 </div>
                                 <div class="content">
                                    <p>Download completed</p>
                                    <p class="sub-text text-muted">6 hrs ago</p>
                                 </div>
                              </a>
                           </div>
                           <div class="dropdown-footer d-flex align-items-center justify-content-center">
                              <a href="javascript:;">View all</a>
                           </div>
                        </div>
                     </li>
                     <li class="nav-item dropdown nav-profile">
                        <a class="nav-link dropdown-toggle" href="#" id="profileDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                           <img src="admin/layout/assets/images/faces/face1.jpg" alt="profile">
                        </a>
                        <div class="dropdown-menu" aria-labelledby="profileDropdown">
                           <div class="dropdown-header d-flex flex-column align-items-center">
                              <div class="figure mb-3">
                                 <img src="admin/layout/assets/images/faces/face1.jpg" alt="">
                              </div>
                              <div class="info text-center">
                                 <p class="name font-weight-bold mb-0">Amiah Burton</p>
                                 <p class="email text-muted mb-3">amiahburton@gmail.com</p>
                              </div>
                           </div>
                           <div class="dropdown-body">
                              <ul class="profile-nav p-0 pt-3">
                                 <li class="nav-item">
                                    <a href="pages/general/profile.html" class="nav-link">
                                       <i data-feather="user"></i>
                                       <span>Profile</span>
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="javascript:;" class="nav-link">
                                       <i data-feather="edit"></i>
                                       <span>Edit Profile</span>
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="javascript:;" class="nav-link">
                                       <i data-feather="repeat"></i>
                                       <span>Switch User</span>
                                    </a>
                                 </li>
                                 <li class="nav-item">
                                    <a href="javascript:;" class="nav-link">
                                       <i data-feather="log-out"></i>
                                       <span>Log Out</span>
                                    </a>
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </li>
                  </ul>
               </div>
            </nav>