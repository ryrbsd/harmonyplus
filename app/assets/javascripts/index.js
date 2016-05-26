
  $(function(){       
   var scroll_start = 0;
   $(document).scroll(function() { 
      scroll_start = $(this).scrollTop();
      if(scroll_start > 700) {
          $('#transparent-nav').css('background-color', 'white');
          $('nav.transparent-nav .links a').css('color', 'black');
          $('#home').css('color', '#53AA8E');
       } else {
          $('#transparent-nav').css('background-color', 'transparent');
          $('nav.transparent-nav .links a').css('color', 'white');
          $('#home').css('color', '#53AA8E');
          
       }
   });
});
