$(document).ready(function() {
  $('#guess').click(function(){
    guess = prompt("Guess the secret code to reveal a json object in the javascript console.");
    $.ajax({
      url: "/.json",
      type: "get",
      data: {code: guess},
      success: function(callback){
        callback =  jQuery.parseJSON(callback);
        $('.container').append('<div>You revealed a secret user: '+callback.secret_user+' </div>');

      },
      error: function(callback){
        $('.container').append('<div>You guessed wrong. </div>');

      }
    })


  });

  $('#loginbutton').click(function(e){
    e.preventDefault();
    data = $(this).closest('form').serialize();
    $.ajax({
      url: "/login.json",
      type: "post",
      data: data,
      success: function(callback){
        $('.container').replaceWith('<div>You\'re in '+callback.username+' </div>');
      },
      error: function(callback){
      }
    })

  });


  $('#ajaxButton').click(function(e){
    e.preventDefault();
    $.ajax({
      url: "/users2.json",
      type: "get",
      success: function(callback){

        $.each(callback, function( i, item ) {
          $('#ajaxPlace').append('<div>'+ item.user +'</div>')
        });


      },
      error: function(callback){
      }
    })

  });

  $('#ajaxUsers').click(function(e){
    e.preventDefault();
    $.ajax({
      url: "/users.json",
      type: "get",
      success: function(response){
        var userArray = [];
        $.each(response, function( i, user ) {
          // $('#ajaxPlace').append('<img class="avatar" src="'+user.avatar+'" alt=""><div>'+ user.username +'</div>')
          var newUser = new userObject(user);
          userArray.push(newUser)
        });

        $.each(userArray, function( i, user ) {
          $('#ajaxPlace').append('<img class="avatar" src="'+user.avatar+'" alt=""><div>'+ user.name +'</div>')

        });


      },
      error: function(response){
      }
    })

  });

  $('#moduleTest').click(function(){
    console.log(moduleTest.privateArray)
    console.log(moduleTest.privateFunction)
    console.log(moduleTest.someArray)
    console.log(moduleTest.someFunction())



  });
});

var moduleTest = function(){
  var privateArray = ["Hello", "there", "person"]
  var privateFunction = function(){
    console.log("You do not have access to private methods")
    return "que posso (return from function)"
  };
  return {
    someArray: privateArray,
    someFunction: privateFunction
  }

}();


var userObject = function(user){
  this.name = user.username;
  this.avatar = user.avatar;
}


