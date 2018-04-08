
$(document).ready(function(){
    "use strict";
    

    $('#pool-button').click(function(){
        $('.show-the-daters-backers').toggleClass('show-the-daters-backersAdd')
    })

    $('#invite-backer-button').click(function(){
        $('.find-new-backer').toggleClass('backer-search-form')
    })

    $('#show-match-preferences').click(function(){
        $('.match-preferences').toggleClass('match-preferences-show')
    })
    $('#card-button').click(function(){
        $('.find-new-backer').toggleClass('backer-search-form')
    })
    $('#edit-about-button').click(function(){
        event.preventDefault()
        $('.about-you').toggleClass('edit-profile-show')
    })

    $('#answer-questions').click(function(){
        event.preventDefault()
        $('.layer').css('display',"block")
        $('.q_1_modal').css('display',"block")
    })

    $('#edit-profile-button').click(function(){
        event.preventDefault()
        $('.edit-traits').css('display','none')
        $('.edit-mate-preference-show').css('display','none')

        $('.edit-profile').removeClass('edit-mate-preference-show')
        $('.edit-profile').toggleClass('edit-profile-show')
    })

    $('#edit-mate-button').click(function(){
        event.preventDefault()
        $('.edit-traits').css('display','none')
        $('.edit-profile').removeClass('edit-profile-show')
        $('.edit-mate-preference').toggleClass('edit-mate-preference-show')
    })

    $('#exampleModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('New message to ' + recipient)
        modal.find('.modal-body input').val(recipient)
      })
    


	var window_width 	 = $(window).width(),
	window_height 		 = window.innerHeight,
	header_height 		 = $(".default-header").height(),
	header_height_static = $(".site-header.static").outerHeight(),
	fitscreen 			 = window_height - header_height;


	$(".fullscreen").css("height", window_height)
	$(".fitscreen").css("height", fitscreen);

     
     // -------   Active Mobile Menu-----//

    $(".menu-bar").on('click', function(e){
        e.preventDefault();
        $("nav").toggleClass('hide');
        $("span", this).toggleClass("lnr-menu lnr-cross");
        $(".main-menu").addClass('mobile-menu');
    });
     
    $('select').niceSelect();
    $('.img-pop-up').magnificPopup({
        type: 'image',
        gallery:{
        enabled:true
        }
    });


    $('.active-exprience-carousel').owlCarousel({
        center: true,
        items:1,
        loop:true
    })
    $('.next-trigger').click(function() {
        $(".active-exprience-carousel").trigger('next.owl.carousel');
    })
        // Go to the previous item
    $('.prev-trigger').click(function() {
        $(".active-exprience-carousel").trigger('prev.owl.carousel');
    });
    $('.play-btn').magnificPopup({
        type: 'iframe',
        mainClass: 'mfp-fade',
        removalDelay: 160,
        preloader: false,
        fixedContentPos: false
    });
    $(document).ready(function() {
        $('#mc_embed_signup').find('form').ajaxChimp();
    });      
    // -------   Mail Send ajax

     $(document).ready(function() {
        var form = $('#myForm'); // contact form
        var submit = $('.submit-btn'); // submit button
        var alert = $('.alert-msg'); // alert div for show alert message

        // form submit event
        form.on('submit', function(e) {
            e.preventDefault(); // prevent default form submit

            $.ajax({
                url: 'mail.php', // form action url
                type: 'POST', // form submit method get/post
                dataType: 'html', // request type html/json/xml
                data: form.serialize(), // serialize form data
                beforeSend: function() {
                    alert.fadeOut();
                    submit.html('Sending....'); // change submit button text
                },
                success: function(data) {
                    alert.html(data).fadeIn(); // fade in response data
                    form.trigger('reset'); // reset form
                    submit.attr("style", "display: none !important");; // reset submit button text
                },
                error: function(e) {
                    console.log(e)
                }
            });
        });
    });




 });

