<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Welcome</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link href="${contextPath}/resources/css/common.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Bad Script' rel='stylesheet'>
    </head>
    <body>
        <c:if test="${pageContext.request.userPrincipal.name != null}">

            <!-----------------------NAVBAR------------------------>
            <nav class="navbar navbar-expand-lg navbar-light navbar-custom fixed-top">
                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
                <div class="container">
                    <a class="navbar-brand js-scroll-trigger" href="#page_top"><i class="far fa-calendar-alt"></i></a>
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

            <!-----------------------GRID------------------------>
            <section class="grid">
                <div class="container">
                    <div class="row">

                        <div class="col-sm-6 col-md-5 offset-md-1">
                            <figure>
                                <a href="#" data-toggle="modal" data-target="#join_group"><img src="resources/img/join_group.png" alt="JOIN GROUP"></a>
                                <figcaption>JOIN GROUP</figcaption>
                            </figure>
                        </div>

                        <div class="col-sm-6 col-md-5">
                            <figure>
                                <a href="#" data-toggle="modal" data-target="#create_group"><img src="resources/img/create_group.png" alt="CREATE GROUP"></a>
                                <figcaption>CREATE GROUP</figcaption>
                            </figure>
                        </div>

                        <div class="col-sm-6 col-md-5 offset-md-1">
                            <figure>
                                <a href="${contextPath}/lists"><img src="resources/img/my_groups.png" alt="MY LISTS"></a>
                                <figcaption>MY LISTS</figcaption>
                            </figure>
                        </div>

                        <div class="col-sm-6 col-md-5">
                            <figure>
                                <a href="${contextPath}/settings"><img src="resources/img/settings_account.png" alt="ACCOUNT SETTINGS"></a>
                                <figcaption>ACCOUNT SETTINGS</figcaption>
                            </figure>
                        </div>

                    </div>
                </div>
            </section>

            <!-----------------------JOIN GROUP MODAL------------------------>
            <div class="modal" tabindex="-1" role="dialog" id="join_group">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Join Group</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form:form method="POST" action="/join_group" modelAttribute="joinGroupForm">
                            <div class="modal-body">
                                <spring:bind path="name">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-users"></i></span>
                                        </div>
                                        <form:input type="text" class="form-control" path="name" placeholder="group name"></form:input>
                                    </div>
                                    <form:errors path="name"></form:errors>
                                </spring:bind>
                                <spring:bind path="password">
                                <div class="input-group form-group">
                                    <div class="input-group-prepend">
                                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                                    </div>
                                    <form:input type="password" class="form-control" path="password" placeholder="password"></form:input>
                                </div>
                                    <form:errors path="password"></form:errors>
                                </spring:bind>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" value="Join" class="btn float-right login_btn">
                                <button type="button" class="btn btn-secondary modal_btn" data-dismiss="modal">Close</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>

            <!-----------------------CREATE GROUP MODAL------------------------>
            <div class="modal" tabindex="-1" role="dialog" id="create_group">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Create Group</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form:form method="POST" action="/create_group" modelAttribute="createGroupForm">
                            <div class="modal-body">
                                <spring:bind path="name">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-users"></i></span>
                                        </div>
                                        <form:input type="text" class="form-control" path="name" placeholder="group name"></form:input>
                                    </div>
                                    <form:errors path="name"></form:errors>
                                </spring:bind>
                                <spring:bind path="password">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <form:input type="password" class="form-control" path="password" placeholder="password"></form:input>
                                    </div>
                                    <form:errors path="password"></form:errors>
                                </spring:bind>
                                <spring:bind path="passwordConfirm">
                                    <div class="input-group form-group">
                                        <div class="input-group-prepend">
                                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                                        </div>
                                        <form:input type="password" class="form-control" path="passwordConfirm" placeholder="confirm password"></form:input>
                                    </div>
                                    <form:errors path="passwordConfirm"></form:errors>
                                </spring:bind>
                            </div>
                            <div class="modal-footer">
                                <input type="submit" value="Create" class="btn float-right login_btn">
                                <button type="button" class="btn btn-secondary modal_btn" data-dismiss="modal">Close</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>

            <!-- <div class="col-6" style="border: 1px solid black;">
                    <div class="row">
                        <div class="col-12 pt-3">
                            <h3>Your groups: </h3>
                            <ul class="list-group list-group-flush">
                                <c:forEach items="${groups}" var="group">
                                    <li class="list-group-item">
                                        <a href="#">${group.getGroup().getName()}</a><br/>
                                    </li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>-->
        </c:if>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="${contextPath}/resources/js/common.js"></script>
    </body>
</html>
