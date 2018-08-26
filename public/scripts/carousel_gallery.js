// var i = 0;
//   $(document).ready(function(){
  
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

   
  // });
  function Change(i){
    //    alert(i);
       $('.carousel').carousel('set', i);
    //    alert("OK");
   }
   
