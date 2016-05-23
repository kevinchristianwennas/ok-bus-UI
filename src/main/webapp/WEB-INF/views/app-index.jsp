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

                <!-- RIGHT PART || THE ONLY PART DISPLAYED IN MOBILE -->
                <div class="rightok col m8 s12">
                    <div class="row content">
                        <div class="row content-wrapper">
                            <!-- TABS -->
                            <div class="col s12">
                                <ul class="tabs">
                                    <li class="tab col s6"><a class="active" href="#onprogress">On Progress</a></li>
                                    <li class="tab col s6"><a class href="#completed">Completed</a></li>
                                </ul>
                            </div>

                            <!-- TABS DATA FOR ON PROGRESS -->
                            <div id="onprogress" class="col s12">
								
								<c:forEach items="${listOfDemand}" var="demand">
									<c:if test="${demand.status < 3}">
										<div class="row order-item">
		                                    <a href="detailPemesanan/${demand.id}">
		                                        <!-- Direction Information -->
		                                        <div class="order-item-top row">
		                                            <div class="col m2 s3 status-img">
			                                            <c:choose>
			                                            	<c:when test="${demand.status == 0}">
			                                            		<img src='<c:url value="/resources/img/status-waiting.png"/>' class="responsive-img" alt="">
			                                            	</c:when>
			                                            	<c:when test="${demand.status == 1}">
			                                            		<img src='<c:url value="/resources/img/status-notpaid.png"/>' class="responsive-img" alt="">
			                                            	</c:when>
			                                            	<c:when test="${demand.status == 2}">
			                                            		<img src='<c:url value="/resources/img/status-paid.png"/>' class="responsive-img" alt="">
			                                            	</c:when>
			                                            </c:choose>
		                                            </div>
		                                            <div class="col m9 s9 direction-information">
		                                                <div class="row">
		                                                    <div class="s12 direction">
		                                                        <div class="">
		                                                            <img src='<c:url value="/resources/img/dari-icon.png"/>' class="direction-icon" alt="">
		                                                        </div>
		                                                        <div class="col s11 text">
		                                                            <p>${demand.pickAddress}</p>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                                <div class="row">
		                                                    <div class="s12 direction">
		                                                        <div class="">
		                                                            <img src='<c:url value="/resources/img/ke-icon.png"/>' class="direction-icon" alt="">
		                                                        </div>
		                                                        <div class="col s11 text">
		                                                            <p>${demand.destinationAddress}</p>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </a>
		
		                                    <!-- Date & Bus Information -->
		                                    <a href="daftarpemesanan">
		                                        <div class="order-item-bottom row">
		                                            <div class="col s7 date">
		                                            	<c:set var="indexBulan" value="${demand.departureDate.getMonth()}"/>
		                                                <p class="hari">${demand.departureDate.getDate()} ${arrayBulan[indexBulan]} 20${demand.departureDate.getYear().toString().substring(1,3)}</p>
		                                                <p class="jam">${demand.departureDate.getHours()} ${demand.departureDate.getMinutes()} ${demand.departureDate.getSeconds()}</p>
		                                            </div>
		                                            <div class="col s5 businfo">
		                                                <p>10</p>
		                                                <img src='<c:url value="/resources/img/bus-only.png"/>'>
		                                            </div>
		                                        </div>                      
		                                    </a>
		                                </div>
									</c:if>
								</c:forEach>
                            
                            <!-- TABS DATA FOR COMPLETED -->
                            <div id="completed" class="col s12">
								
								<c:forEach items="${listOfDemand2}" var="demand">
									<c:if test="${demand.status >= 3}">
										<div class="row order-item">
		                                    <a href="detailpemesanan">
		                                        <!-- Direction Information -->
		                                        <div class="order-item-top row">
		                                            <div class="col m2 s3 status-img">
			                                            <c:choose>
			                                            	<c:when test="${demand.status == 3}">
			                                            		<img src='<c:url value="/resources/img/status-canceled.png"/>' class="responsive-img" alt="">
			                                            	</c:when>
			                                            	<c:when test="${demand.status == 4}">
			                                            		<img src='<c:url value="/resources/img/status-completed.png"/>' class="responsive-img" alt="">
			                                            	</c:when>
			                                            </c:choose>
		                                            </div>
		                                            <div class="col m9 s9 direction-information">
		                                                <div class="row">
		                                                    <div class="s12 direction">
		                                                        <div class="">
		                                                            <img src='<c:url value="/resources/img/dari-icon.png"/>' class="direction-icon" alt="">
		                                                        </div>
		                                                        <div class="col s11 text">
		                                                            <p>${demand.pickAddress}</p>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                                <div class="row">
		                                                    <div class="s12 direction">
		                                                        <div class="">
		                                                            <img src='<c:url value="/resources/img/ke-icon.png"/>' class="direction-icon" alt="">
		                                                        </div>
		                                                        <div class="col s11 text">
		                                                            <p>${demand.destinationAddress}</p>
		                                                        </div>
		                                                    </div>
		                                                </div>
		                                            </div>
		                                        </div>
		                                    </a>
		
		                                    <!-- Date & Bus Information -->
		                                    <a href="daftarpemesanan">
		                                        <div class="order-item-bottom row">
		                                            <div class="col s7 date">
		                                                <p class="hari">${demand.departureDate.getDate()} ${demand.departureDate.getMonth()} ${demand.departureDate.getYear()}</p>
		                                                <p class="jam">${demand.departureDate.getTime()}</p>
		                                            </div>
		                                            <div class="col s5 businfo">
		                                                <p>10</p>
		                                                <img src='<c:url value="/resources/img/bus-only.png"/>'>
		                                            </div>
		                                        </div>                      
		                                    </a>
		                                </div>
									</c:if>
								</c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a class="btn-floating btn-large waves-effect waves-light blueok pesanbusFAB" href="pesan"><i class="material-icons">add</i></a>
		
		<%@include file="app-footer.jsp" %>
		
		
    </body>
  </html>