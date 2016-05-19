<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

			KOOOONJOOON WAS HERE 

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ -->

<!DOCTYPE html>
  <html>
    <%@include file="head.jsp" %>

    <body>
    
        <%@include file="app-navbar.jsp" %>

        <div class="container containerapp">
            <div class="row app">

                <%@include file="app-profile-left.jsp" %>

                <!-- RIGHT THE ONLY PART DISPLAYED IN MOBILE -->
                <div class="rightok col m8 s12">
                    <div class="row content daftarpenawaran">
                        <div class="col s12 daftarpenawaran-header">
                            <h4>Daftar Penawaran</h4>
                        </div>

                        <div class="divider"></div>
                        
                        <div class="row list-penawaran">
                            
                            <a href="detailpenawaran">
                                <div class="row penawaran-item">

                                    <div class="col m2 s3 penawaran-img">
                                        <img src='<c:url value="/resources/img/status-paid.png"/>'class="responsive-img" alt="">
                                    </div>

                                    <div class="col m9 s9 penawaran-info">
                                        <h5 class="nama-po">PT Bus Sehat Indonesia</h5>
                                        <ul>
                                            <li>Bus 50 seats | 1 - Rp780.000</li>
                                            <li>Bus 35 seats | 2 - Rp550.000</li>
                                        </ul>
                                    </div>

                                </div>
                            </a>


                            <a href="detailpenawaran">
                                <div class="row penawaran-item">

                                    <div class="col m2 s3 penawaran-img">
                                        <img src='<c:url value="/resources/img/status-paid.png"/>'class="responsive-img" alt="">
                                    </div>

                                    <div class="col m9 s9 penawaran-info">
                                        <h5 class="nama-po">PT Bus Sehat Indonesia</h5>
                                        <ul>
                                            <li>Bus 50 seats | 1 - Rp780.000</li>
                                            <li>Bus 35 seats | 2 - Rp550.000</li>
                                        </ul>
                                    </div>

                                </div>
                            </a>

                            <a href="detailpenawaran">
                                <div class="row penawaran-item">

                                    <div class="col m2 s3 penawaran-img">
                                        <img src='<c:url value="/resources/img/status-paid.png"/>'class="responsive-img" alt="">
                                    </div>

                                    <div class="col m9 s9 penawaran-info">
                                        <h5 class="nama-po">PT Bus Sehat Indonesia</h5>
                                        <ul>
                                            <li>Bus 50 seats | 1 - Rp780.000</li>
                                            <li>Bus 35 seats | 2 - Rp550.000</li>
                                        </ul>
                                    </div>

                                </div>
                            </a>
                            
                            <a href="detailpenawaran">
                                <div class="row penawaran-item">

                                    <div class="col m2 s3 penawaran-img">
                                        <img src='<c:url value="/resources/img/status-paid.png"/>'class="responsive-img" alt="">
                                    </div>

                                    <div class="col m9 s9 penawaran-info">
                                        <h5 class="nama-po">PT Bus Sehat Indonesia</h5>
                                        <ul>
                                            <li>Bus 50 seats | 1 - Rp780.000</li>
                                            <li>Bus 35 seats | 2 - Rp550.000</li>
                                        </ul>
                                    </div>

                                </div>
                            </a>
                            
                            <a href="detailpenawaran">
                                <div class="row penawaran-item">

                                    <div class="col m2 s3 penawaran-img">
                                        <img src='<c:url value="/resources/img/status-paid.png"/>'class="responsive-img" alt="">
                                    </div>

                                    <div class="col m9 s9 penawaran-info">
                                        <h5 class="nama-po">PT Bus Sehat Indonesia</h5>
                                        <ul>
                                            <li>Bus 50 seats | 1 - Rp780.000</li>
                                            <li>Bus 35 seats | 2 - Rp550.000</li>
                                        </ul>
                                    </div>

                                </div>
                            </a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="app-footer.jsp" %>
        
    </body>
  </html>