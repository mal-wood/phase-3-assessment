$(document).on("turbolinks:load", function(){

  $('#pet_link').on('ajax:success', function(event, response) {
    $('#new_stuff_path').toggle();
    $('#results-div').append(response);i
  })
  // $.ajax({
  //   url: '/stuffs',
  //   method: 'post',
  //   data: $(this).serialize()
  // }).done(function(response)) {
  //    console.log(response)
  //   }
  // })
});