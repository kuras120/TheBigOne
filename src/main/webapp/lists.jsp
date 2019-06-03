<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Manage Your Lists</title>
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


<!-----------------------TABLE------------------------>
<section id="Data">
    <div class="container">
        <div class="table-responsive">
            <h4 class="box-header"><i class="far fa-calendar-check"></i>
                <span>My Lists</span>
            </h4>
            <table id="myLists" class="table table-hover table-striped">
                <thead>
                <tr>
                    <th>#</th>
                    <th>Group Name</th>
                    <th>Manager</th>
                    <th>Last Modified</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>1</td>
                    <td>My Group</td>
                    <td>PAPAJ </td>
                    <td>27-05-2019</td>
                    <td>
                        <div>
                            <a href="${contextPath}/lists/name"><img src="resources/img/edit.png" title="Edit List"  alt="Edit List"></a>
                            <a href="${contextPath}/lists/name/manage" ><img src="resources/img/manage_lists.png"  title="Manage" alt="Manage"></a>
                            <a href="#" data-toggle="modal" data-target="#delete_group"><img src="resources/img/delete_group.png"  title ="Delete Group" alt="Delete_Group"></a>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Somebody's Group</td>
                    <td>ManagerOfGroup</td>
                    <td>11-04-2019</td>
                    <td>
                        <div>
                            <a href="${contextPath}/lists/name"><img src="resources/img/edit.png"  title="Edit Group" alt="Edit Group"></a>
                            <a href="#" data-toggle="modal" data-target="#leave_group" title="Leave Group"><img src="resources/img/leave_group.png" alt="Leave_Group"></a>
                        </div>
                    </td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</section>


<!-----------------------DELETE GROUP MODAL------------------------>
<div class="modal" tabindex="-1" role="dialog" id="delete_group">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Delete Group</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <h7>Do You really want to delete Your group?</h7>
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

<!-----------------------LEAVE GROUP MODAL------------------------>
<div class="modal" tabindex="-1" role="dialog" id="leave_group">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Leave Group</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <h7>Do You really want to leave group?</h7>
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
