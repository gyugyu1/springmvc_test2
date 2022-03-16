<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="rb" uri="http://www.springframework.org/tags" %>


<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<title>login page</title>
<style>
select {
	border: 3px solid black;
	width: 90px;
	border-radius: 20px;
}

.form-control {
	border: 3px solid black;
	border-radius: 20px;
}

.form-check-input {
	margin-left: 10px;
}

@font-face {
	font-family: 'MinSans-Medium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/MinSans-Medium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

body {
	font-family: MinSans-Medium;
}

table {
	border: solid 3px #000066;
}

tr {
	padding: 3px;
}

th {
	width: 20px;
	padding:3px;
}
td {
	padding:3px;
}

.icon {
	width: 50px;
	height: 50px;
	border-radius: 100%;
	overflow: hidden;
}
nav>div>ul>li>a:link {
  color : white;
  text-decoration: none;
}
nav>div>ul>li>a:visited {
  color : white;
  text-decoration: none;
}
nav>div>ul>li>a:hover {
  color : white;
  text-decoration: underline;
}
nav>div>ul>li>a:active {
  color : white;
  text-decoration: none;
}
p {
	color:black;
}
a {
	color:#000056;
}

</style>
</head>
<body>
		
		
			
				<nav class="navbar navbar-expand-lg">
		<div class="container">
			<div class="col-7">
				<div class="d-inline-flex"
					style="justify-content: left; align-items: center;">
					<a class="navbar-brand" href="#"> <img src="../images/G.png"
						width="100" class="d-inline-block align-text-top">
					</a>
					<h1>GYU-MARKET</h1>
				</div>
			</div>


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#admin">
				<img src="../images/dropdown.png" width="35">
			</button>
			<div class="collapse navbar-collapse justify-content-end" id="admin">
				<div class="col-12 col-lg-5">
					<div class="d-flex flex-column align-items-end">
						<div
							class="text-white p-1 align-items-center"
							style="--bs-bg-opacity: .1;">
							<a href="#"><img src="../images/human.png"
								class="mx-auto d-block" width="60">
								<p class="text-center mb-0">ê´ë¦¬ì</p></a>
							<div class="d-flex">
								<a class="nav-link p-1" href="#">ë¡ê·¸ìì</a>
								<p class="text-black">|</p>
								<a class="nav-link p-1" href="#">ê³ì ê´ë¦¬</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
			
				
				
				
		
		<nav class="mb-2 ">
			<div class="container" style="background-color:#000057" >
			<ul class="nav justify-content-center" >
				<li class="navbar-item"><a class="nav-link" href="#">í</a></li>
				<li class="navbar-item"><a class="nav-link" href="#">íìì ë³´</a></li>
				<li class="navbar-item"><a class="nav-link" href="#">íìê´ë¦¬</a></li>
				<li class="navbar-item"><a class="nav-link" href="#">ë¡ê·¸ì¸</a></li>
			</ul>
			</div>
		</nav>


	<form>
		<div class="container-sm">
			<div class="row g-1 justify-content-center">
				<div class="input-group mb-3 mt-4">
					<select>
						<option selected>íìë²í¸</option>
						<option>ì´ë¦</option>
						<option>ìì´ë</option>
						<option>êµ­ì </option>
					</select> <input type="text" class="form-control">
				</div>
				<div class="accordion" id="forsearch">
					<div class="accordion-item">
						<h2 class="accordion-header">
							<button class="accordion-button" type="button"
								data-bs-toggle="collapse" data-bs-target="#google">ê³ ê¸
								ê²ì</button>

						</h2>
						<div id="google" class="accordion-collapse collapse"
							data-bs-parent="#forsearch">
							<div class="accordion-body">
								<div class="table-responsive">
									<table class="table">
										<tr>
											<th style="width: 150px;"class="table-active">ë±ë¡ê¸°ê°</th>
											<td colspan="3"><div style="display: flex; align-items: center;">
													<input type="date" class="form-control"
														style="width: 150px">
													<p>ìì</p>
													<input type="date" class="form-control"
														style="width: 150px; margin-right: 10px;">
													<p>ê¹ì§</p>
													<input class="form-check-input" type="radio" id="today"
														name="period"> <label class="form-check-label"
														for="today">ì¤ë</label> <input class="form-check-input"
														type="radio" id="week" name="period"> <label
														class="form-check-label" for="week">ì¼ì£¼ì¼</label> <input
														class="form-check-input" type="radio" id="month"
														name="period"> <label class="form-check-label"
														for="month">1ê°ì</label> <input class="form-check-input"
														type="radio" id="threemonth" name="period"> <label
														class="form-check-label" for="threemonth">3ê°ì</label> <input
														class="form-check-input" type="radio" id="sixmonth"
														name="period"> <label class="form-check-label"
														for="sixmonth">6ê°ì</label>
												</div></td>
										</tr>

										<tr>
											<th class="table-active">ì±ë³</th>
											<td>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="male">
													<label class="form-check-label" for="male">ë¨</label>
												</div>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="female">
													<label class="form-check-label" for="female">ì¬</label>
												</div>

												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="others">
													<label class="form-check-label" for="others">ê¸°í</label>
												</div>
											</td>
											<th class="table-active" style="width: 150px;">ê¶íì¬ë¶</th>
											<td>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="admin"
														name="authority"> <label class="form-check-label"
														for="admin">ê´ë¦¬ì</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="normal"
														name="authority"> <label class="form-check-label"
														for="normal">ì¼ë° íì</label>
												</div>
											</td>
										</tr>

										<tr>
											<th class="table-active">ê°ì¸ì ë³´ ì í¨ê¸°ê°</th>
											<td>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="one"
														name="validity"> <label class="form-check-label"
														for="one">1ë</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="two"
														name="validity"> <label class="form-check-label"
														for="two">3ë</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="three"
														name="validity"> <label class="form-check-label"
														for="three">5ë</label>
												</div>
												<div class="form-check form-check-inline">
													<input class="form-check-input" type="radio" id="leave"
														name="validity"> <label class="form-check-label"
														for="four">íí´ì</label>
												</div>
											</td>


										</tr>

										<tr>
											<th class="table-active">ì íë²í¸</th>
											<td><input type="tel" class="form-countrol" name="phone"></td>
											<th class="table-active">íµì ì¬</th>
											<td><input type="radio" class="form-check-input"
												name="carrier" id="kt"> <label
												class="form-check-label" for="kt">KT</label> <input
												type="radio" class="form-check-input" name="carrier"
												id="skt"> <label class="form-check-label" for="skt">SKT</label>
												<input type="radio" class="form-check-input" name="carrier"
												id="lg"> <label class="form-check-label" for="lg">LG</label>
												<input type="radio" class="form-check-input" name="carrier"
												id="cheap"> <label class="form-check-label"
												for="cheap">ìë°í°</label> <input type="radio"
												class="form-check-input" name="carrier" id="carrierall">
												<label class="form-check-label" for="carrierall">ì íìí¨</label>
										<tr>
											<th class="table-active">ì´ë©ì¼ì£¼ì</th>
											<td><input type="email" class="form-countrol">
											<th class="table-active">ì´ë©ì¼ì©ë</th>
											<td><input type="radio" class="form-check-input"
												name="emailpurpose" id="own"> <label
												class="form-check-label" for="own">ê°ì¸</label> <input
												type="radio" class="form-check-input" name="emailpurpose"
												id="company"> <label class="form-check-label"
												for="company">íì¬</label></td>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>


				<div class="col-1 mr-4 ">
					<button class="btn" type="submit" style="border-radius: 8px;">
						<img src="../images/find.png" style="width: 40px;">
					</button>
				</div>
				<div class="col-1">
					<button class="btn" type="submit" style="border-radius: 8px;">
						<img src="../images/refresh.png" style="width: 30px;">
					</button>
				</div>




			</div>

		</div>
	</form>

<div class="container">
	<div class="col justify-content-center;">
		<table class="table">
			<thead>
				<tr>
					<th scope="col" style="width:1%">#</th>
					<th scope="col" style="width:1%"></th>
					<th scope="col">ì´ë¦</th>
					<th scope="col">ëì´</th>
					<th scope="col">ì±ë³</th>
					<th scope="col">ë§ì¼í</th>
					<th scope="col">ê°ì¸ì ë³´</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th scope="row">1</th>
					<td style="width: 10px"><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault">
						</div></td>
					<td>ë°ê·ì</td>
					<td>27</td>
					<td>ë¨</td>
					
					<td>ì</td>
					<td>3ë</td>
				</tr>
				<tr>
					<th scope="row">2</th>
					<td style="width: 10px"><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault">
						</div></td>
					<td>ìë¹</td>
					<td>40</td>
					<td>ë¨</td>
					
					<td>ì</td>
					<td>3ë</td>
				</tr>
				<tr>
					<th scope="row">3</th>
					<td style="width: 10px"><div class="form-check">
							<input class="form-check-input" type="checkbox" value=""
								id="flexCheckDefault">
						</div></td>
					<td>ì§ì</td>
					<td>25</td>
					<td>ë¨</td>
					
					<td>ì</td>
					<td>3ë</td>
				</tr>
			</tbody>
		</table>
	</div>
	</div>
	<hr>

	<nav>
		<ul class="pagination justify-content-center">
			<li class="page-item"><a class="page-link" href="#">Previous</a></li>
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">Next</a></li>
		</ul>
	</nav>
	<div style="text-align: center;">
		<a class="btn btn-dark" href="#" role="button" >ì íì­ì </a> <a
			class="btn btn-danger" href="#" role="button">ì ì²´ì­ì </a>
	</div>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>