$(document).on("turbolinks:load", function(){

  $('#pets-list').on("click", "a", function(event){
    event.preventDefault();

    $.ajax({
    method: 'get',
    url: $(this).attr('href')
    }).done(function(response){
      console.log(response)
    })
  })
});