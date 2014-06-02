$(function() {
  $('.nav-scroll').click(function(e){
    e.preventDefault();
    e.stopPropagation();
    scrollToElement(this, $(this).find('a').attr('href'));
  });

  function scrollToElement(li, elementSelector) {
    $element = $(elementSelector);
    $('html, body').animate({
        scrollTop: $element.offset().top - 50
    }, 1000);

    $('.navbar li').removeClass('active');
    $(li).addClass('active');
  }
});