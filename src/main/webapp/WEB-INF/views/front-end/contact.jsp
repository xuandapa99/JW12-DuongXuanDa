<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Home</title>
<!-- Variables -->
<jsp:include page="/WEB-INF/views/common/variables.jsp"></jsp:include>
<meta charset="UTF-8">
<jsp:include page="/WEB-INF/views/front-end/common/css.jsp"></jsp:include>

<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

</head>
<body class="animsition">

	<jsp:include page="/WEB-INF/views/front-end/common/header.jsp"></jsp:include>

	<!-- Cart -->
	<jsp:include page="/WEB-INF/views/front-end/common/cart.jsp"></jsp:include>

	<!-- Title page -->
	<section class="bg-img1 txt-center p-lr-15 p-tb-92"
		style="background-image: url('images/bg-01.jpg');">
		<h2 class="ltext-105 cl0 txt-center">Contact</h2>
	</section>


	<!-- Content page -->
	<section class="bg0 p-t-104 p-b-116">
		<div class="container">
			<div class="flex-w flex-tr">
				<div
					class="size-210 bor10 p-lr-70 p-t-55 p-b-70 p-lr-15-lg w-full-md">

					<!-- <form method="post" action="contact1">
						<h4 class="mtext-105 cl2 txt-center p-b-30">Send Us A Message
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								type="text" name="email" placeholder="Your Email Address">

							<img class="how-pos4 pointer-none"
								src="${base}/images/icons/icon-email.png" alt="ICON">
						</div>

						<div class="bor8 m-b-30">
							<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25"
								name="msg" placeholder="How Can We Help?"></textarea>
						</div>

						<button
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							Submit</button>
					</form> -->

					<!-- Cách 2 -->
					<%-- <sf:form method="post" action="${base}/contact2" modelAttribute="contact">
						<h4 class="mtext-105 cl2 txt-center p-b-30">Send Us A Message
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
							<sf:input path="email"
								cssClass="stext-111 cl2 plh3 size-116 p-l-62 p-r-30" type="text"
								name = "email" placeholder="Your Email Address" />

							<img class="how-pos4 pointer-none"
								src="${base}/images/icons/icon-email.png" alt="ICON">
						</div>

						<div class="bor8 m-b-30">
							<sf:textarea path="msg"
								cssClass="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25" name="msg"
								placeholder="How Can We Help?" />
						</div>

						<button
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							Submit</button>
					</sf:form> --%>

					<!-- Cách 3 -->
					<form>
						<h4 class="mtext-105 cl2 txt-center p-b-30">Send Us A Message
						</h4>

						<div class="bor8 m-b-20 how-pos4-parent">
							<input class="stext-111 cl2 plh3 size-116 p-l-62 p-r-30"
								type="text" id="email" placeholder="Your Email Address">

							<img class="how-pos4 pointer-none"
								src="${base}/images/icons/icon-email.png" alt="ICON">
						</div>

						<div class="bor8 m-b-30">
							<textarea class="stext-111 cl2 plh3 size-120 p-lr-28 p-tb-25"
								id="msg" placeholder="How Can We Help?"></textarea>
						</div>

						<button type="button" onclick="SaveContact();"
							class="flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
							Submit</button>
					</form>
				</div>
				<div
					class="size-210 bor10 flex-w flex-col-m p-lr-93 p-tb-30 p-lr-15-lg w-full-md">
					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <span
							class="lnr lnr-map-marker"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Address </span>

							<p class="stext-115 cl6 size-213 p-t-18">Coza Store Center
								8th floor, 379 Hudson St, New York, NY 10018 US</p>
						</div>
					</div>

					<div class="flex-w w-full p-b-42">
						<span class="fs-18 cl5 txt-center size-211"> <span
							class="lnr lnr-phone-handset"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Lets Talk </span>

							<p class="stext-115 cl1 size-213 p-t-18">+1 800 1236879</p>
						</div>
					</div>

					<div class="flex-w w-full">
						<span class="fs-18 cl5 txt-center size-211"> <span
							class="lnr lnr-envelope"></span>
						</span>

						<div class="size-212 p-t-2">
							<span class="mtext-110 cl2"> Sale Support </span>

							<p class="stext-115 cl1 size-213 p-t-18">contact@example.com
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Map -->
	<div class="map">
		<div class="size-303" id="google_map" data-map-x="40.691446"
			data-map-y="-73.886787" data-pin="${base}/images/icons/pin.png"
			data-scrollwhell="0" data-draggable="1" data-zoom="11"></div>
	</div>



	<!-- Footer -->
	<jsp:include page="/WEB-INF/views/front-end/common/footer.jsp"></jsp:include>


	<!-- Back to top -->
	<jsp:include page="/WEB-INF/views/front-end/common/back_to_top.jsp"></jsp:include>

	<jsp:include page="/WEB-INF/views/front-end/common/js.jsp"></jsp:include>

	<!--===============================================================================================-->
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKFWBqlKAGCeS1rMVoaNlwyayu0e0YRes"></script>
	<script src="js/map-custom.js"></script>

	<script>
		function SaveContact() {
			// javascript object.
			var data = {};
			data["email"] = $("#email").val();
			data["msg"] = $("#msg").val();
			
			$.ajax({
				url : "/contact3",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				success : function(jsonResult) {
					if (jsonResult.statusCode == 200) {
						alert(jsonResult.data);
					} else {
						alert(jsonResult.data);
					}
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
		}
	</script>
</body>
</html>