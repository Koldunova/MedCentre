<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Medical Center</title>

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@200;300;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Herr+Von+Muellerhoff&family=Montserrat:wght@200;700&display=swap" rel="stylesheet">
 
 
    <!--Icons -->
    <script src="https://code.iconify.design/iconify-icon/1.0.0/iconify-icon.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/iconify-icon@1.0.0/dist/iconify-icon.min.js"></script>

    <!-- CSS -->
	<link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="${contextPath}/resources/css/style.css">

</head>

<body>

    <div class="authorization">
		<div class="container">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-2 text-center">
						<h6 class="mb-0 pb-3 title-h6 title-color-white"><span>Авторизация / </span><span>Регистрация</span></h6>
						<label style="color: red">${userExists==true ? "Пользоваель уже существует" : ""}</label>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3 title-h4 title-color-white">Авторизация</h4>
											<form action="/login" method="post" name="formLogin" id="formLogin">
												<div class="form-group">
													<input type="text" name="email_address" class="form-style" placeholder="Логин" id="username" autocomplete="off">
													<iconify-icon icon="uil-at" class="input-icon" ></iconify-icon>
												</div>
												<div class="form-group mt-1">
													<input type="password" name="password" class="form-style" placeholder="Пароль" id="password" autocomplete="off">
													<iconify-icon icon="uil-lock-alt" class="input-icon" ></iconify-icon>
												</div>
												<button type="submit" class="btn mt-3">Войти</button>
											</form>

				      					</div>
			      					</div>
			      				</div>
								<div class="card-back">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3 title-h4 title-color-white">Регистрация</h4>
											<form action="/registration" method="post" name="formRegistration" id="formRegistration">
												<div class="form-group">
													<input type="text" name="fio" class="form-style" placeholder="ФИО" id="logname" autocomplete="off">
													<iconify-icon icon="uil-user" class="input-icon" ></iconify-icon>
												</div>
												<div class="form-group">
													<input type="text" name="address" class="form-style" placeholder="Адрес" id="address" autocomplete="off">
													<iconify-icon icon="bx:home" class="input-icon" ></iconify-icon>
												</div>
												<div class="flex flex-wrap">
													<div class="form-group w-full sm:w-half contact-form-px-3">
														<input type="date" name="date_birth" class="contact-form-form-input" placeholder="Номер паспорта" id="date_birth" autocomplete="off">
<%--														<form:input--%>
<%--																type="date"--%>
<%--																name="date_birth"--%>
<%--																id="date_birth"--%>
<%--																class="contact-form-form-input"--%>
<%--																path="date_birth"--%>
<%--														/>--%>
														<iconify-icon icon="ant-design:calendar-outlined" class="input-icon" ></iconify-icon>
													</div>
													<div class="form-group w-full sm:w-half contact-form-px-3">
														<select id="standard-select" class="contact-form-form-input" name="sex">
															<option value="">Ваш пол</option>
															<option value="Man">М</option>
															<option value="Woman">Ж</option>
														</select>
														<iconify-icon icon="fontisto:intersex" class="input-icon" ></iconify-icon>
													</div>
												</div>
												<div class="form-group">
													<input type="text" name="number_pasport" class="form-style" placeholder="Номер паспорта" id="number-pasport" autocomplete="off">
													<iconify-icon icon="bi:pass" class="input-icon" ></iconify-icon>
												</div>
												<div class="form-group">
													<input type="text" name="indef_number" class="form-style" placeholder="Идентификационный номер" id="indef-number" autocomplete="off">
													<iconify-icon icon="ic:baseline-switch-account" class="input-icon" ></iconify-icon>
												</div>
												<div class="form-group">
													<input type="email" name="email" class="form-style" placeholder="Логин" id="logemail" autocomplete="off">
													<iconify-icon icon="uil-at" class="input-icon" ></iconify-icon>
												</div>
												<div class="form-group">
													<input type="password" name="password" class="form-style" placeholder="Пароль" id="logpass" autocomplete="off">
													<iconify-icon icon="uil-lock-alt" class="input-icon" ></iconify-icon>
												</div>
												<button type="submit" class="btn mt-3">Зарегистрироваться</button>
											</form>
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>


     <!-- Scripts -->
     <script src="${contextPath}/resources/js/jquery-3.6.1.min.js"></script>
     <script src="${contextPath}/resources/js/script.js"></script>
 
	 
</body>
</html>