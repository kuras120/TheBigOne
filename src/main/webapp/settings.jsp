<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Account Settings</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
</head>
<body>

    <!-----------------------NAVBAR------------------------>
    <nav class="navbar navbar-expand-lg navbar-light navbar-custom fixed-top">
        <form id="logoutForm" method="POST" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="/welcome"><i class="far fa-calendar-alt"></i></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Welcome, ${pageContext.request.userPrincipal.name}</a>
                    </li>

                    <li class="nav-item">
                        <button class="btn logout_btn" onclick="document.forms['logoutForm'].submit()">LOGOUT</button>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!-----------------------BODY------------------------>
    <section id="Data">
    <div class="container">
        <h4 class="box-header"><i class="fas fa-user-circle"></i>
            <span>Personal Data</span>
        </h4>
    <table class="table nie_xx">
        <tbody>
        <tr>
            <td>Name:</td>
            <span></span>
        </tr>
        <tr>
            <td>Surname:</td>
            <span></span>
        </tr>
        </tbody>
    </table>
        <input type="submit" value="Change" class="btn float-left login_btn">

        <div class="settings_buton">
        <h4 class="box-bottom"><i class="fas fa-user-cog"></i>
            <span>Settings</span>
        </h4>
            <div class="col-sm-1 col-md-1 offset-md-1">
                <figure>
                    <a href="#" data-toggle="modal" data-target="#change_password"><img src="resources/img/change_password.png" alt="CHANGE PASSWORD"></a>
                    <figcaption>CHANGE PASSWORD</figcaption>
                </figure>
            </div>

            <div class="col-sm-1 col-md-1 offset-md-1">
                <figure>
                    <a href="#" data-toggle="modal" data-target="#delete_account"><img src="resources/img/delete_account.png" alt="DELETE ACCOUNT"></a>
                    <figcaption>DELETE ACCOUNT</figcaption>
                </figure>
            </div>

        </div>
    </div>
    </section>



    <!-----------------------CHANGE PASSWORD MODAL------------------------>
    <div class="modal" tabindex="-1" role="dialog" id="change_password">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Change Password</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" placeholder=" old password">
                        </div>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" placeholder="new password">
                        </div>

                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" placeholder=" confirm password">
                        </div>


                    </form>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Change" class="btn float-right login_btn">
                    <button type="button" class="btn btn-secondary modal_btn" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>

    <!-----------------------DELETE ACCOUNT MODAL------------------------>
    <div class="modal" tabindex="-1" role="dialog" id="delete_account">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Delete Account</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <h7>Do You really want to delete Your account?</h7>
                        <div class="input-group form-group delete_account">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" class="form-control" placeholder="password">
                        </div>

                    </form>
                </div>
                <div class="modal-footer">
                    <input type="submit" value="Submit" class="btn float-right login_btn">
                    <button type="button" class="btn btn-secondary modal_btn" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="${contextPath}/resources/js/common.js"></script>
</body>
</html>
