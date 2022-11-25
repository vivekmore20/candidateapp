<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>DarkPan - Bootstrap 5 Admin Template</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


       

        


        <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
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
                    <a href="index1.html" class="nav-item nav-link active"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                   
                    <a href="addhr.html" class="nav-item nav-link"><i class="fa fa-th me-2"></i>Add HR Details</a>
                    <a href="showhr.jsp" class="nav-item nav-link"><i class="fa fa-keyboard me-2"></i>View HR Details</a>

                    <a href="deletehr.jsp" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Delete HR Details</a>
                     <a href="questionadd.jsp" class="nav-item nav-link"><i class="fa fa-question"></i>Add Question</a>
                  	<a href="dashboard1.html" class="nav-item nav-link"><i class="fa fa-chart-bar me-2"></i>Log Out</a>
                  
                </div>
            </nav>
        </div>
        <!-- Sidebar End -->



            <!-- Form Start -->
           <form action = "questionadd" method="post">
            <div class="container-fluid pt-4 px-4">
                <div class="row g-4">
                    <div class="col-sm-12 col-xl-6">
                        <div class="bg-secondary rounded h-100 p-4">
                            <h6 class="mb-4">Add Question</h6>
                                   <form action = "details" method="post">
                                <div class="mb-3">
                                    <label for="question" class="form-label">Question</label>
                                    <input type="text" class="form-control" id="question" name="question" placeholder="Enter Question"
                                        aria-describedby="emailHelp">
                                        <br>
                                    	 <label for="q1" class="form-label">Please Enter Marks In This Format(o5,o3,o1,o0 same for all qualities)</label>
                                </div>
                                <div class="mb-3">
                                    <label for="q1" class="form-label">Marks For Highly Agree</label>
                                    <input type="text" class="form-control" id="q1" name="q1" placeholder=""
                                        aria-describedby="emailHelp">
                                    
                                </div>
                                <div class="mb-3">
                                    <label for="q2" class="form-label">Marks For Agree</label>
                                    <input type="text" class="form-control" id="q2" name="q2" placeholder=""
                                        aria-describedby="emailHelp">
                                    </div>
                                    <div class="mb-3">
                                        <label for="q3" class="form-label">Marks For Disagree</label>
                                        <input type="text" class="form-control" id="q3" name="q3" placeholder=""
                                            aria-describedby="emailHelp">
                                        </div>
                                        <div class="mb-3">
                                            <label for="q4" class="form-label">Marks For Disagree</label>
                                            <input type="text" class="form-control" id="q4" name="q4" placeholder=""
                                                aria-describedby="emailHelp">
                                    
                                
                                <button type="submit" class="btn btn-primary">Add Question</button>
                           		</form>
                        </div>
                    </div>
                   
                    
                    
            <!-- Form End -->


           
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>