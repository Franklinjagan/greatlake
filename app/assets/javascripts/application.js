// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap
//= require_tree .

 WebFontConfig = {
    google: { families: [ 'Source+Sans+Pro:200,300,400,600,700,900,200italic,300italic,400italic,600italic,700italic,900italic:latin' ] }
  };
  (function() {
    var wf = document.createElement('script');
    wf.src = ('https:' == document.location.protocol ? 'https' : 'http') +
      '://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js';
    wf.type = 'text/javascript';
    wf.async = 'true';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(wf, s);
  })();



      jQuery(document).ready(function($) {

                $('#myCarousel').carousel({
                    interval: 7000
                });

                $('#carousel-text').html($('#slide-content-0').html());

                //Handles the carousel thumbnails
                $('[id^=carousel-selector-]').click( function(){
                    var id_selector = $(this).attr("id");
                    var id = id_selector.substr(id_selector.length -1);
                    var id = parseInt(id);
                    $('#myCarousel').carousel(id);
                });


                // When the carousel slides, auto update the text
                $('#myCarousel').on('slid', function (e) {
                    var id = $('.item.active').data('slide-number');
                    $('#carousel-text').html($('#slide-content-'+id).html());
                });


            });

         $(window).load(function() {
             $('#myCarousel').carousel();

             $(".carousel-nav a").click(function(e){
                 e.preventDefault();
                 var index = parseInt($(this).attr('data-to'));
                 $('#myCarousel').carousel(index);
                 var nav = $('.carousel-nav');
                 var item = nav.find('a').get(index);
                 nav.find('a.active').removeClass('active');
                 $(item).addClass('active');
             });

             $("#myCarousel").bind('slide', function(e) {
                 var elements = 3; // change to the number of elements in your nav
                 var nav = $('.carousel-nav');
                 var index = $('#myCarousel').find('.item.active').index();
                 index = (index == elements - 1) ? 0 : index + 1;
                 var item = nav.find('a').get(index);
                 nav.find('a.active').removeClass('active');
                 $(item).addClass('active');
             });
         });


 $('#myTab a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  })
  $('#myTab1 a').click(function (e) {
    e.preventDefault();
    $(this).tab('show');
  })
