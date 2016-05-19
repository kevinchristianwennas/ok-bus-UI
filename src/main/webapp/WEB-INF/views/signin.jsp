<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			KOOOONJOOON WAS HERE 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
  <html>
    <%@include file="head.jsp" %>

    <body>
      <div class="blueline"></div>

        <div class="container">
          <div class="row">
            <div class="signin-wrapper col m6 offset-m3 s12">
              <!-- main section -->
                <div class="signinform">
                    <div class="row logo-signin">
                      <img src='<c:url value="/resources/img/logo.png" />' class="responsive-img">
                    </div>
                    <form:form class="col s12" action="login" method="POST">
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">perm_identity</i>
                          <form:input id="last_name" type="text" class="validate" path="email"></form:input>
                          <form:label for="last_name" path="email">email</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12">
                          <i class="material-icons prefix">vpn_key</i>
                          <form:input id="last_name" type="password" class="validate" autocomplete="off" path="password"></form:input>
                          <form:label for="last_name" path="password">password</form:label>
                        </div>
                      </div>
                      <div class="row">
                        <div class="input-field col s12 submit-form">
                          <button class="btn waves-effect waves-light blueok" type="submit" name="action">Submit
                            <i class="material-icons right">send</i>
                          </button>
                          <p>Tidak punya akun? <a href="signup">Daftar!</a></p>
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

        <script type="text/javascript" src='<c:url value="/resources/js/okbus.js" />'></script>
    </body>
  </html>