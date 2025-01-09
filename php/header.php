<style>
    ul li ul {
        visibility: hidden;
        opacity: 0;
        position: absolute;
        padding-left: 0;
        left: 0;
        display: none;
        background: white;
        z-index: 999; /* Add a higher z-index to ensure the dropdown is displayed above other elements */
    }

    ul li:hover > ul,
    ul li ul:hover {
        visibility: visible;
        opacity: 1;
        display: block;
        min-width: 150px;
        text-align: center;
        padding-top: 10px;
        margin-top: 0;
        margin-left: 0;
        box-shadow: 0px 3px 5px -1px #ccc;
    }

    ul li ul li {
        clear: both;
        width: 100%;
        text-align: center;
        margin-bottom: 20px;
        margin-top: 0;
        border-bottom: 3px solid green;
    }

    ul li ul li a:hover {
        padding-left: 10px;
        border-left: 2px solid #3ca0e7;
        transition: all 0.3s ease;
    }

    a {
        text-decoration: none;
    }

    a:hover {
        color: #3CA0E7;
    }

    ul li ul li a {
        transition: all 0.5s ease;
    }

    .nav-item:hover > ul.dropdown {
        display: block;
    }

    /* Additional style for dropdown positioning */
    .nav-item {
        position: relative;
    }
     /* Adjust the height of the header */
     .header {
        height: 100px; /* Adjust this value as needed */
    }
</style>

<header>
    <!-- header inner -->
    <div class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                    <div class="full">
                        <div class="center-desk">
                            <div class="logo">
                                <a href="index.php"><img src="./images/logo.jpg" alt="#" height="50"
                                        width="50" /></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                    <nav class="navigation navbar navbar-expand-md navbar-dark ">
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarsExample04" aria-controls="navbarsExample04" aria-expanded="false"
                            aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="collapse navbar-collapse" id="navbarsExample04">
                            <ul class="navbar-nav mr-auto">
                                <li class="nav-item active">
                                    <a class="nav-link" href="index.php"> Home </a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#about">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Login &dtrif;</a>
                                    <ul class="dropdown">
                                        <li><a href="User/login.php">User</a></li>
                                        <li><a href="Admin/index.php">Admin</a></li>
                                        <!-- <li><a href="Employee/index.php">Employee</a></li> -->
                                    </ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#testimonial">Testimonial</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header>
