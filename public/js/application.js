$(document).ready(function() {
  $('form').keyup(function(event){
    event.preventDefault();
    var input = $('input[name]').serialize();
    console.log(input);
    $.ajax({
      type: "Post",
      url: "/",
      data: input
    }).success(function(response){
      $('#response').html(response);
    });
  });
});

