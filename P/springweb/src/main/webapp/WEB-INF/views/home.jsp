<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- insert the content of header.jsp page -->
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>home page</title>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<div id="carousel-example-generic" class="carousel slide">
                        <!-- Indicators -->
                        <ol class="carousel-indicators hidden-xs">
                            <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                            <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                        </ol>

                        <!-- Wrapper for slides -->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img class="img-responsive img-full" src="<c:url value="/resources/IMAGE/lanterns-lamps-hd-wallpaper.jpg"/>" alt="">
                                <div class="carousel-caption">
                                <h3>Wall Lights </h3>
                                <p>Cast a mellow glow on your walls with interesting wall lights</p>
                                </div>
                                
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="<c:url value="/resources/IMAGE/dSC_OtdrLghtng_160614_ORVXS15.jpg"/>" alt="">
                                <div class="carousel-caption">
                                <h3>Table lamps</h3><br>
                                <p>Time to celebrate (for Parsifal collections)<br>
                                 
                                   </p></div>
                            </div>
                            <div class="item">
                                <img class="img-responsive img-full" src="<c:url value="/resources/IMAGE/halloween-lantern-city-night-holidays-lights-bokeh-hd-wallpaper.jpg"/>" alt="">
                                <div class="carousel-caption">
                                <h3>Ceiling lights</h3><br>
                                <p>The atmosphere in Chania has a touch of Florence and Venice.</p></div>
                            </div>
                        </div>

                        <!-- Controls -->
                        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                            <span class="icon-prev"></span>
                        </a>
                        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
              
                </div>
<%-- <%@ include file="footer.jsp"%> --%>

</body>
</html>