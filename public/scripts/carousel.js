  $(document).ready(function(){

    alert("prueba");
    $.skdslider.config.currentSlide = 2;
    alert($.skdslider.config.currentSlide);

    $('.carousel').carousel();
 
    $('.carousel.carousel-slider').carousel({
      fullWidth: true,
      indicators: false
   });


   // move next carousel
   $('.moveNextCarousel').click(function(e){
      e.preventDefault();
      e.stopPropagation();
      $('.carousel').carousel('next');
   });

   // move prev carousel
   $('.movePrevCarousel').click(function(e){
      e.preventDefault();
      e.stopPropagation();
      $('.carousel').carousel('prev');
   });
    $('.carousel').unbind( "click" );
  });
