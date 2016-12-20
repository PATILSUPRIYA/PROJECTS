<!DOCTYPE html >

<html lang="en">

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="<c:url value="/resources/css/index.css"/>">
<title>home page</title>

</head>

<body>

	<div class="lightening">LIGHTENING</div>


	<div class="container imageclass">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<!-- Wrapper for slides -->
			<div class="carousel-inner" role="listbox">

				<div class="item active">
					<img class="img-responsive"
						src="<c:url value="/resources/IMAGE/lamp.jpg"/>" />
					<div class="carousel-caption">
						<h1>Table lamps</h1>
						<br>
						<p>
							Cast a mellow glow on your tables with interesting table lamps.<br>
						</p>
					</div>
				</div>

				<div class="item">
					<img class="img-responsive"
						src="<c:url value="/resources/IMAGE/wallimgn.jpg"/>" />
					<div class="carousel-caption">
						<h1>Wall Lights</h1>
						<p>Cast a mellow glow on your walls with interesting wall
							lights.</p>
					</div>
				</div>

				<div class="item">
					<img class="img-responsive"
						src="<c:url value="/resources/IMAGE/ceiling.jpg"/>" alt="" />
					<div class="carousel-caption">
						<h1>Ceiling lights</h1>
						<br>
						<p>Cast a mellow glow on your walls with interesting ceiling
							lights.</p>
					</div>
				</div>


			</div>


		</div>
	</div>

	<script>
		$('.carousel').carousel({
			interval : 3000
		//changes the speed
		})
	</script>
</body>
</html>
