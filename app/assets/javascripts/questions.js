$(document).ready(function(){


const postComment = (bod,backer,dater) => {  
    return fetch(`http://localhost:3000/backers/${backer}/daters/${dater}/comments`, {
        body: JSON.stringify(bod), // must match 'Content-Type' header
        cache: 'no-cache', // *default, no-cache, reload, force-cache, only-if-cached
        credentials: 'same-origin', // include, same-origin, *omit
        headers: {
          'content-type': 'application/json'
        },
        method: 'POST', // *GET, POST, PUT, DELETE, etc.
        mode: 'cors', // no-cors, cors, *same-origin
        redirect: 'follow', // *manual, follow, error
        referrer: 'no-referrer', // *client, no-referrer
      })
      .then(response =>  response.json())
   } 
$('#q-button-start').click(function(){
    $('.layer').fadeIn(1000)
    $('.comment-box').fadeIn(2000)
})

$('.exit').click(function(){
  $('.layer').fadeOut(1000)
  $('.comment-box').fadeOut(1000)

})


$('#q1-comment-submit').click(function(){
  let q1= $('#q1_id_hidden').val()
  let ans1= $('#q1-comment-answer').val()
  let backer= $('#backer_id_hidden').val()
  let dater= $('#dater_id_hidden').val()
  console.log($('#q1-comment-box'))
  $('#q1-comment-box').slideUp(1000)
  let body = {
    'ans' : ans1,
    'q': q1
  }
  $('#q2-comment-box').slideDown(2000)
  postComment(body,backer,dater)
})

$('#q2-comment-submit').click(function(){
    let q2= $('#q2_id_hidden').val()
    let ans2= $('#q2-comment-answer').val()
    let backer= $('#backer_id_hidden').val()
    let dater= $('#dater_id_hidden').val()
    $('#q2-comment-box').slideUp(1000)
    let body = {
        'ans' : ans2,
        'q': q2
    }
    $('#q3-comment-box').slideDown(2000)
    postComment(body,backer,dater)
  })

  $('#q3-comment-submit').click(function(){
    let q3= $('#q3_id_hidden').val()
    let ans3= $('#q3-comment-answer').val()
    let backer= $('#backer_id_hidden').val()
    let dater= $('#dater_id_hidden').val()
    $('#q3-comment-box').slideUp(1000)
    let body = {
        'ans' : ans3,
        'q': q3
    }
    $('#q4-comment-box').slideDown(2000)
    postComment(body,backer,dater)
  })


  $('#q4-comment-submit').click(function(){
    let q4= $('#q4_id_hidden').val()
    let ans3= $('#q4-comment-answer').val()
    let backer= $('#backer_id_hidden').val()
    let dater= $('#dater_id_hidden').val()
    $('#q4-comment-box').slideUp(1000)
    let body = {
        'ans' : ans3,
        'q': q4
    }
    $('#q5-comment-box').slideDown(3000)
    postComment(body,backer,dater)
  })

  $('#q5-comment-submit').click(function(){
    let q5= $('#q5_id_hidden').val()
    let ans3= $('#q5-comment-answer').val()
    let backer= $('#backer_id_hidden').val()
    let dater= $('#dater_id_hidden').val()
    $('#q5-comment-box').slideUp(1000)
    let body = {
        'ans' : ans3,
        'q': q5
    }
    $('#question-end').slideDown(3000)
    postComment(body,backer,dater)
  })
})