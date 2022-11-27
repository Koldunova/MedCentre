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
                    <a href="#"><iconify-icon icon="ant-design:user-outlined" class="icon-account" ></iconify-icon></a>
                </div>
            </div>
        </nav>
    </header>


    <div class="main-content">
        
        <div class="title-area">
            <div class="title-inner container paddings-side">
                <div class="title-h1 title-color-white">${userFIO}</div>
                <div class="styled-subtitle title-color-white">Пациент</div>
            </div>
        </div>
        <div class="paddings-admin-panel-user container">
            <table class="fold-table">
                <thead>
                  <tr>
                    <th class="title-h3">Будущие визиты</th>
                  </tr>
                </thead>
                <tbody>
                  <tr class="fold-1">
                    <td colspan="7">
                      <div class="fold-content">
                        <p>Здесь будут отображаться Ваши будущие визиты.</p>
                        <table>
                          <thead>
                            <tr>
                              <th>Доктор</th><th>Кабинет</th><th>Отделение</th><th>Дата</th><th>Время</th><th>Действие</th>
                            </tr>
                          </thead>
                          <tbody>
                           <c:forEach var="element" items="${visitList}">
			                    <tr>
	                              <td>${element.doctor.person.fio}</td>
	                              <td>${element.doctor.room}</td>
	                              <td>${element.doctor.post.subdivision.subName}</td>
	                              <td>${element.visitDate}</td>
	                              <td>${element.timeVisit}</td>
	                              <td class="button-section">
	                                <a class="button button-style-flat button-size-small" href="deleteVisit?id=${element.id}">Отменить прием</a>
	                              </td>
	                            </tr>
		                  </c:forEach>
                          </tbody>
                        </table>      
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
    
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