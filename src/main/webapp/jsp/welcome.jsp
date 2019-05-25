<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Create an account</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    </head>
    <body>
        <c:if test="${pageContext.request.userPrincipal.name != null}">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <form id="logoutForm" method="POST" action="${contextPath}/logout">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
            <a class="navbar-brand" href="#"> #</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarText">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        Welcome ${pageContext.request.userPrincipal.name}
                    </li>
                </ul>
                <span class="navbar-text">
                    <button class="btn" onclick="document.forms['logoutForm'].submit()">Logout</button>
                </span>
            </div>
        </nav>
        <div class="container-fluid">
            <div class="row">
                <div class="col-6">
                    <div class="row" style="border: 1px solid black;">
                        <div class="col-6 pt-3">
                            Nickname: ${pageContext.request.userPrincipal.name}<br/>
                            Created on: ${userCreatedOn}
                        </div>
                        <div class="col-6 pt-3"><i class="fas fa-user fa-10x"></i></div>
                    </div>
                    <div class="row" style="height: 70vh;">
                        <div class="col-12" style="padding: 0 !important; border: 1px solid black;">
                            <table class="table">
                                <thead class="thead-dark">
                                <tr>
                                    <th scope="col">#</th>
                                    <th scope="col">Recently added</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Time</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Group1</td>
                                    <td>Date1</td>
                                    <td>Time1</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Group2</td>
                                    <td>Date2</td>
                                    <td>Time2</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Group3</td>
                                    <td>Date3</td>
                                    <td>Time3</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-6" style="border: 1px solid black;">
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
        </div>
        </c:if>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script src="${contextPath}/resources/js/common.js"></script>
    </body>
</html>
