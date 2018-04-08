
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

    $('#find-backer-by-email').click(function(event) {
      event.preventDefault()
      let email = event.target.offsetParent.childNodes[1].value
      let currentUser = document.location.pathname.substr(11)

      fetch(`http://localhost:3000/api/v1/users?email=${email}`)
      .then((response) => response.json())
      .then((parsed) => {
        if (parsed === null) {
          $(".find-new-backer").append(
            `<div class="alert alert-warning" role="alert" id="backer-not-found-alert">
              <h4 class="alert-heading">Oh Snap!</h4>
                <p>That person isn't signed up. Send them an invite!</p>
                <a class ="primary-btn card-button" id="invite-backer-button"> Invite "${email}"! </a>
             </div>`)
          $("#backer-not-found-alert").delay( 3000 ).fadeOut( 300 )
        }
        else {
          let backerId = parsed.id
          let currentUser = document.location.pathname.substr(11)
          fetch(`http://localhost:3000/api/v1/daters/${currentUser}/backers/${backerId}`)
          .catch(error => console.error(error))

          $(".find-new-backer").append(
             `<div class="alert alert-success" role="alert" id="backer-invited-alert">
                <h4 class="alert-heading">${parsed.f_name} ${parsed.l_name} was added as a backer!</h4>
              </div>`)
          $("#backer-invited-alert").delay( 1500 ).fadeOut( 300 )
        }
      })
      .catch(error => console.error(error) )
      }
    )


    $("#invite-backer-button").click()
    //send invite, hide or destroy th appended thingy.


    $('#find-backer-by-name').click(function(event) {
      event.preventDefault()
      let first = event.target.offsetParent.childNodes[1].value
      let last =  event.target.offsetParent.childNodes[3].value
      let currentUser = document.location.pathname.substr(11)

            fetch(`http://localhost:3000/api/v1/users?f_name=${first}&l_name=${last}`)
            .then((response) => response.json())
            .then((parsedBackers) => {
              console.log(parsedBackers)
              if (parsedBackers.length === 0) {
                // CAN'T FIND BY FIRST AND LAST NAME
                $(".find-new-backer").append(
                  `<div class="alert alert-warning" role="alert" id="backer-not-found-alert">
                    <h4 class="alert-heading">Oh Snap!</h4>
                      <p>That person isn't signed up. Send them an invite!</p>
                      <a class ="primary-btn card-button" id="invite-backer-button"> Invite "${first}"! </a>
                   </div>`)
                $("#backer-not-found-alert").delay( 3000 ).fadeOut( 300 )
                $(".find-new-backer").append("line 80 -- append an invite form here")
              }

              else {
                //FOUND AT LEAST ONE PERSON BY THAT NAME. PRESENT NAME AND IMAGES FOR USER TO SELECT.
                $(".find-new-backer").append(
                   `<div class="alert alert-success" role="alert" id="backer-invited-alert">
                      <h4 class="alert-heading"> Which ${first.toUpperCase()} ${last.toUpperCase()} is your Framily Member?</h4>
                    </div>`)
                $("#backer-invited-alert").delay( 2000 ).fadeOut( 300 )
                parsedBackers.forEach(function(backer) {

                $(".find-new-backer").append(`
                  <div class="card" style="width: 18rem;">
                    <img class="card-img-top" src="..." alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">${backer.f_name} ${backer.l_name}</h5>
                      <p class="card-text">...</p>
                      <a class ="primary-btn card-button" id="connect-user-as-backer" data-text="${backer.id}" >Connect with Me!</a>
                    </div>
                  </div>
                `)
                })
              }
            })
            .catch(error => console.error(error))
    })


    $('.find-new-backer').on("click", '#connect-user-as-backer', function(event) {
      event.preventDefault()
      let backerId = event.currentTarget.attributes[2].nodeValue
      let currentUser = document.location.pathname.substr(11)
      fetch(`http://localhost:3000/api/v1/daters/${currentUser}/backers/${backerId}`)
      .catch(error => console.error(error))

        $(".find-new-backer").append(`
          <div class="alert alert-success" role="alert" id="backer-invited-alert">
            <h4 class="alert-heading"> Backer Added!</h4>
          </div>`).delay( 1500 ).fadeOut( 300 )
      })
    $('#edit-profile-button').click(function(){
        event.preventDefault()
        $('.edit-profile').removeClass('edit-mate-preference-show')
        $('.edit-profile').toggleClass('edit-profile-show')
    })
    $('#edit-mate-button').click(function(){
        event.preventDefault()
        $('.edit-profile').removeClass('edit-profile-show')
        $('.edit-mate-preference').toggleClass('edit-mate-preference-show')
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

    // $('select').niceSelect();
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
