<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import ="java.sql.*" %>
	<%@ page import ="com.hrtools.*" %>

    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="#" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-user-edit me-2"></i>HR Tool</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    
                    
                        <div class="ms-3">
                            <h6 class="mb-0"></h6>
                            <span>Candidate</span>
                        </div>
                    
                </div>
                <div class="navbar-nav w-100">
                     <a href="dashcan.html" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                   
                    
                    <a href="candidatejob.jsp" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>View Jobs</a>

                    <a href="applyjob.jsp" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Apply For Job</a>
                    <a href="filldetails.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Fill Personal Details</a>
                    
                    <a href="fail.html" class="nav-item nav-link"><i class="fa fa-table me-2"></i>Log Out</a>
                </div>
            </nav>
        </div>
       
        <!-- Sidebar End -->


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="index.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                <a href="#" class="sidebar-toggler flex-shrink-0">
                    <i class="fa fa-bars"></i>
                </a>
                <form class="d-none d-md-flex ms-4">
                    <input class="form-control bg-dark border-0" type="search" placeholder="Search">
                </form>
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all message</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notificatin</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all notifications</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="#" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->
  			
<%	int ha=0,a=0,hd=0,d=0;
	//int qid=Integer.parseInt(request.getParameter("qid"));
	String ab=request.getParameter("q0");
	String q1=request.getParameter("q1");
	String q2=request.getParameter("q2");
	String q3=request.getParameter("q3");
	String q4=request.getParameter("q4");
	if(ab.equals("ha")) { 
		ha+=5;
	}else if(ab.equals("a")){
		a+=3;
	}else if(ab.equals("hd")){
		hd+=1;
	}else{
		d+=0;
	}
	 
	 if(q1.equals("ha")) { 
			ha+=5;
		}else if(q1.equals("a")){
			a+=3;
		}else if(q1.equals("hd")){
			hd+=1;
		}else{
			d+=0;
		}
	 if(q2.equals("ha")) { 
			ha+=5;
		}else if(q2.equals("a")){
			a+=3;
		}else if(q2.equals("hd")){
			hd+=1;
		}else{
			d+=0;
		}
	 if(q3.equals("ha")) { 
			ha+=5;
		}else if(q3.equals("a")){
			a+=3;
		}else if(q3.equals("hd")){
			hd+=1;
		}else{
			d+=0;
		}
	 
	 if(q4.equals("ha")) { 
			ha+=5;
		}else if(q4.equals("a")){
			a+=3;
		}else if(q4.equals("hd")){
			hd+=1;
		}else{
			d+=0;
		}

%> 	
	
         

</body>
</html>