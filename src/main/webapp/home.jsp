<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Log in with your account</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

</head>

<body id="page_top">
<!-----------------------NAVBAR------------------------>
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom fixed-top">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page_top"><i class="far fa-calendar-alt"></i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#About">About</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#Functions">Functions</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link" href="login">Log in</a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link rounded-pill" href="registration"> Sign Up</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

<!-----------------------BODY------------------------>

<!-----------------------INTRO------------------------>
    <section id="Intro">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6 order-lg-2">
                    <div class="p-5">
                        <img class="img-fluid" src="resources/img/edit-list-view.png" alt="">
                    </div>
                </div>
                <div class="col-lg-6 order-lg-1">
                    <div class="p-5">
                        <h3 class="display-4">Simplify Company<br>Managment</h3>
                        <p>Our Project is advanced tool to improve managing work time and creating schedules in Your Firm   </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

<!-----------------------ABOUT------------------------>

    <section id="About">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <div class="p-6">
                        <img class="img-fluid" src="resources/img/graph_arrow.png" alt="">
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="p-5">
                        <h2 class="display-4">About</h2>
                        <p>
                            Transfer Your business to a higher level thanks to the electronic
                            management of your employees' work time. Our application allows You
                            to record working time, manage your employees' salary and control
                            the hours worked. Save time by generating monthly and annual summaries
                            for each employee along with the payment.
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </section>

<!-----------------------FUNCTIONS------------------------>

<section class="Functions" id="Functions">
    <div class="container">
        <h2 style="text-align: left" class="display-4">Functions</h2>
        <div class="row">

            <div class="col">
                <figure>
                    <a href="#"><img src="resources/img/edit.png" alt="EDIT"></a>
                    <figcaption>Edit Online</figcaption>More possibilities thanks to the preview of the online work schedule
                </figure>
            </div>

            <div class="col">
                <figure>
                    <a href="#"><img src="resources/img/pdf_icon.png" alt="EXPORT"></a>
                    <figcaption>Save&Export</figcaption>You can save the schedule to PDF files for importing to other software
                </figure>
            </div>

            <div class="col">
                <figure>
                    <a href="#"><img src="resources/img/print.png" alt="PRINT"></a>
                    <figcaption>Print</figcaption> Dedicated printouts adapted to the A4 page
                </figure>
            </div>
        </div>
    </div>
</section>


<!-----------------------FOOTER------------------------>
    <footer class="py-3 bg-black">
        <div class="container">
            <p class="m-0 text-center text-white small">Copyright &copy; Wojciech Kur, Blazej Motyka 2019. All Rights Reserved.</p>
        </div>
    </footer>
</body>
