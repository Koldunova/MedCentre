<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
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
 <!-- Navbar-->
    <header class="header">
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container">
                <a href="#" class="navbar-brand ">
                    <div class="logo"></div>
                </a>
                <button class="navbar-toggler">
                    <iconify-icon icon="eva:menu-fill" class="burger"></iconify-icon>
                </button>
                
                <div id="navbarSupportedContent" class="collapse navbar-collapse">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="/" class="nav-link ">Главная <span class="sr-only">(current)</span></a></li>
                        <li class="nav-item"><a href="/subdivision" class="nav-link">Отделения</a></li>
                        <li class="nav-item"><a href="/doctor" class="nav-link">Врачи</a></li>
                        <li class="nav-item"><a href="/contacts" class="nav-link">Контакты</a></li>
                    </ul>
                    <a href="/myAccount"><iconify-icon icon="ant-design:user-outlined" class="icon-account" ></iconify-icon></a>
                    <a href="/logout"><iconify-icon icon="ic:baseline-log-out" class="icon-account" ></iconify-icon></a>
                </div>
            </div>
        </nav>
    </header>
    
    <div class="main-content">

        <div class="title-area">
            <div class="title-inner container paddings-side">
                <div class="title-x-large title-color-white">Контакты</div>
            </div>
        </div>
        
        <section class="contact-us-form">
            <div class="contact-us-form-inner container paddings">
                <div class="title-h2 divider-10"><span class="title-color-blue">Напишите</span> нам</div>
                <div class="divider-20"></div>
                <div class="title-body" style="max-width: 600px; margin: 0 auto;">Ваши пожелания и замечания помогают нам совершенствовать качество услуг и сервиса. Напишите нам, и мы станем еще лучше для Вас!</div>
                <div class="divider-50"></div>
            
                <div class="contact-form-main-wrapper">
                    <div class="contact-form-form-wrapper">
                    <form:form action="addAppeal" method="POST" modelAttribute="appealForm">
                        <div class="contact-form-mb-5">
                            <label for="name" class="contact-form-form-label"> Имя и Фамилия </label>
                            <form:input
                                type="text"
                                name="name"
                                id="name"
                                placeholder="Имя и Фамилия"
                                class="contact-form-form-input"
                                path="fio"
                            />
                        </div>
                        <div class="contact-form-mb-5">
                            <label for="phone" class="contact-form-form-label"> Телефон </label>
                            <form:input
                                type="text"
                                name="phone"
                                id="phone"
                                placeholder="+375 (29) 123-45-67"
                                class="contact-form-form-input"
                                path="tel"
                            />
                        </div>
                        <div class="contact-form-mb-5">
                            <label for="message" class="contact-form-form-label"> Сообщение </label>
                            <form:textarea
                              rows="6"
                              name="message"
                              id="message"
                              placeholder="Задайте Ваш вопрос или оставьте пожелание"
                              class="contact-form-form-input"
                              path="textAppeal"
                            ></form:textarea>
                        </div>
                        <div>
                            <button class="contact-form-btn">Отправить Сообщение</button>
                        </div>
                    </form:form>
                    </div>
                </div>
            </div>
        </section>

        <section class="book-visit">
            <div class="book-visit-img"></div>
            <div class="book-visit-info">
                <div class="title-h2 divider-10"><span class="title-color-white">Забронировать прием</span></div>
                <div class="divider-20"></div>
            
                <div class="contact-form-main-wrapper">
                    <div class="contact-form-form-wrapper">
                    <form:form action="/bookingVisit" method="POST" modelAttribute="bookingForm">
                        <div class="contact-form-mb-5">
                            <label for="name" class="contact-form-form-label"> ФИО </label>
                            <form:input
                                type="text"
                                name="name"
                                id="name"
                                placeholder="Фамилия Имя Отчество"
                                class="contact-form-form-input"
                                path="fio" 
                            />
                        </div>
                        <div class="contact-form-mb-5">
                            <label for="phone" class="contact-form-form-label"> Телефон </label>
                            <form:input
                                type="text"
                                name="phone"
                                id="phone"
                                placeholder="+375 (29) 123-45-67"
                                class="contact-form-form-input"
                                path="telephone" 
                            />
                        </div>
                        <div class="contact-form-mb-5">
                            <label for="email" class="contact-form-form-label"> Email </label>
                            <form:input
                                type="email"
                                name="email"
                                id="email"
                                placeholder="Ваш Email"
                                class="contact-form-form-input"
                                path="email" 
                            />
                        </div>
                        
                        <div class="contact-form-mb-5">
                                    <label for="select"  class="contact-form-form-label">Отделение</label>
                                    <form:select id="standard-select" class="contact-form-form-input" path="subdivision" >
                                        <form:options items="${subListForForm}"  itemLabel="subName"></form:options>
                                    </form:select>                           
                       </div>

                        <div class="flex flex-wrap contact-form--mx-3">
                            <div class="w-full sm:w-half contact-form-px-3">
                                <div class="contact-form-mb-5 w-full">
                                <label for="date" class="contact-form-form-label"> Дата </label>
                                <form:input
                                    type="date"
                                    name="date"
                                    id="date"
                                    class="contact-form-form-input"
                                    path="dateVisit" 
                                />
                                </div>
                            </div>
                            <div class="w-full sm:w-half contact-form-px-3">
                                <div class="contact-form-mb-5">
                                <label for="time" class="contact-form-form-label"> Время </label>
                                <form:input
                                    type="time"
                                    name="time"
                                    id="time"
                                    class="contact-form-form-input"
                                    path="timeVisit" 
                                />
                                </div>
                            </div>
                        </div>
                        <div>
                            <button class="contact-form-btn divider-20">Забронировать прием</button>
                        </div>
                    </form:form>
                    </div>
                </div>
            </div>
        </section>

        <section class="contact-socials">
            <div class="contact-socials-inner container paddings">
                <div class="title-h1"><span class="title-color-blue">Follow</span> Us</div>
                <div class="styled-subtitle">Мы в социальных сетях</div>
                <div class="socials-footer divider-10">
                    <a href="#"><iconify-icon icon="ant-design:twitter-circle-filled" class="icon-account" ></iconify-icon></a>
                    <a href="#"><iconify-icon icon="entypo-social:facebook-with-circle" class="icon-account" ></iconify-icon></a>
                    <a href="#"><iconify-icon icon="entypo-social:linkedin-with-circle" class="icon-account" ></iconify-icon></a>
                    <a href="#"><iconify-icon icon="entypo-social:youtube-with-circle" class="icon-account" ></iconify-icon></a>
                    <a href="#"><iconify-icon icon="entypo-social:pinterest-with-circle" class="icon-account" ></iconify-icon></a>
                    <a href="#"><iconify-icon icon="entypo-social:instagram-with-circle" class="icon-account" ></iconify-icon></a>
                </div>
            </div>
        </section>

    </div>
    
    
    <section class="footer">
        <div class="footer-info">
            <div class="footer-info-item dark-blue">
                <div class="f-logo divider-50">
                    <img src="/img/logo-1-light.png" alt="">
                </div>
                <div class="f-text divider-60">Мы - медицинский центр для всей семьи, в котором оказывается широкий спектр помощи, включая диагностическое отделение. </div>
            </div>
            <div class="footer-info-item light-blue">
                <div class="f-icon">
                    <a href="#"><iconify-icon icon="bi:geo-alt-fill" class="icon-account" ></iconify-icon></a>
                </div>
                <div class="f-info-text">
                    <div class="title-h4 title-color-white divider-140"><span class="title-thin">Наши</span> Адреса</div>
                    <div class="title-body title-color-white divider-10">г.Минск, ул. Пушкинская, 20 <br>г.Минск, ул. Усматова, 32 </div>
                </div>
            </div>
            <div class="footer-info-item blue">
                <div class="f-icon">
                    <a href="#"><iconify-icon icon="carbon:phone-filled" class="icon-account" ></iconify-icon></a>
                </div>
                <div class="f-info-text">
                    <div class="title-h4 title-color-white divider-140"><span class="title-thin">Наши</span> Телефоны</div>
                    <div class="title-body title-color-white divider-10">Городской: +1 916-875-2235 <br> Факс: +1 916-875-2235</div>
                </div>
            </div>
            <div class="footer-info-item sky-blue">
                <div class="f-icon">
                    <a href="#"><iconify-icon icon="fa6-regular:clock" class="icon-account" ></iconify-icon></a>
                </div>
                <div class="f-info-text">
                    <div class="title-h4 title-color-white divider-140"><span class="title-thin">Режим</span> Работы</div>
                    <div class="title-body title-color-white divider-10">Понедельник-Пятница: 9.00 - 20.00 <br>Суббота-Воскресенье: 10.00 - 20.00</div>
                </div>
            </div>
        </div>
        <div class="footer-bottom ">
            <div class="container">
                <div class="footer-area">
                    <div class="f-copyright title-body title-color-white">2022 @ Copyrights<span class="title-color-blue"> Medical Center</span></div>
                    <div class="socials-footer ">
                        <a href="#"><iconify-icon icon="akar-icons:twitter-fill" class="icon-account" ></iconify-icon></a>
                        <a href="#"><iconify-icon icon="brandico:facebook" class="icon-account" ></iconify-icon></a>
                        <a href="#"><iconify-icon icon="akar-icons:linkedin-fill" class="icon-account" ></iconify-icon></a>
                        <a href="#"><iconify-icon icon="akar-icons:youtube-fill" class="icon-account" ></iconify-icon></a>
                        <a href="#"><iconify-icon icon="fa-brands:pinterest-p" class="icon-account" ></iconify-icon></a>
                        <a href="#"><iconify-icon icon="akar-icons:instagram-fill" class="icon-account" ></iconify-icon></a>
                    </div>
                </div>    
            </div>
        </div>
    </section>
    <!-- Scripts -->
    <script src="${contextPath}/resources/js/jquery-3.6.1.min.js"></script>
    <script src="${contextPath}/resources/js/script.js"></script>
    
</body>
</html>