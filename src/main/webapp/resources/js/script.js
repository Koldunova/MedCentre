/*Menu*/
$(function () {
    $(window).on('scroll', function () {
        if ( $(window).scrollTop() > 10 ) {
            $('.navbar').addClass('active');
        } else {
            $('.navbar').removeClass('active');
        }
    });
});

const navbar = document.querySelector(".navbar-toggler");
const collapse = document.querySelector(".navbar-collapse");
navbar.addEventListener("click", () => {
    collapse.classList.toggle("show");
});

$(function(){
    $(".fold-table tr.view").on("click", function(){
      $(this).toggleClass("open").next(".fold").toggleClass("open");
    });
  });