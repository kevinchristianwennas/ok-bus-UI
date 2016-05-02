<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/css/materialize.min.css">

         <!-- for ios 7 style, multi-resolution icon of 152x152 --> 
         <meta name="apple-mobile-web-app-capable" content="yes"> <meta name="apple-mobile-web-app-status-barstyle" content="black-translucent"> <link rel="apple-touch-icon" href='<c:url value="/resources/img/okbus-icon.png" />'> 
         <!-- for Chrome on Android, multi-resolution icon of 196x196 --> 
         <meta name="mobile-web-app-capable" content="yes"> <link rel="shortcut icon" sizes="196x196" href='<c:url value="img/okbus-icon.png" />'>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="minimal-ui, width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

        <link rel="stylesheet" type="text/css" href='<c:url value="/resources/css/okbus.css"/>'>

        <title>Ok-Bus | Sign Up</title>
    </head>

    <body>
      <div class="blueline"></div>

        <div class="container">
          <div class="row">
            <div class="signin-wrapper col m6 offset-m3 s12">
              <!-- main section -->
                <div class="signinform">
                    <div class="row logo-signin">
                      <img src='<c:url value="/resources/img/logo.png"/>' class="responsive-img">
                    </div>
                    <form:form class="col s12" action="signup" method="POST">
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">perm_identity</i>
                          <form:input id="last_name" type="text" class="validate" path="name"></form:input>
                          <form:label for="last_name" path="name">Full Name</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">email</i>
                          <form:input id="last_name" type="email" class="validate" path="email"></form:input>
                          <form:label for="last_name" path="email">Email</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">vpn_key</i>
                          <form:input id="last_name" type="password" class="validate" autocomplete="off" path="password"></form:input>
                          <form:label for="last_name" path="password">Password</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">vpn_key</i>
                          <form:input id="last_name" type="password" class="validate" autocomplete="off" path="confirmPassword"></form:input>
                          <form:label for="last_name" path="confirmPassword">Confirm Password</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">phone</i>
                          <form:input id="last_name" type="number" class="validate" path="phoneNumber"></form:input>
                          <form:label for="last_name" path="phoneNumber">Phone Number</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12 submit-form">
                          <button class="btn waves-effect waves-light blueok" type="submit" name="action">Daftar
                            <i class="material-icons right">send</i>
                          </button>
                          <p>Sudah punya akun? <a href="signin">Masuk!</a></p>
                        </div>
                      </div>
                    </form:form>
                </div>
            </div>
          </div>
        </div>

        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.6/js/materialize.min.js"></script>

        <script type="text/javascript" src='<c:url value="/resources/js/okbus.js"/>'></script>
    </body>
  </html>