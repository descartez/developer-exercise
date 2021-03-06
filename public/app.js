$(document).ready(function() {
  bindEventListeners();
  console.log("Hey, how'd you get here?");
  console.log("If you want to say hey back, execute the 'hello' function");

});


var bindEventListeners = function(){
  $('#marklar-button').click(function(e){
    e.preventDefault();
    marklarSignal();
    console.log("marklar button pressed");
  })
  $('#fib-button').click(function(e){
    e.preventDefault();
    fibSignal();
    console.log("fib button has been pressed")
  })
}

var marklarSignal = function() {
  string = $('#marklar-input').val()
  $.ajax({
    url: "/marklar",
    type: 'put',
    data: {string: string}
  }).fail(function(reponse){
    console.log("MARKLAR FAIL")
    $("#marklar-output").text(response.str)
  }).success(function(response){
    console.log("MARKLAR SUCCESS")
    $("#marklar-output").text(response.str)
  })
}

var fibSignal = function(){
    fibNum = $('#fib-input').val()
    $.ajax({
      url: "/evenfib",
      type: 'put',
      data: {fib: fibNum}
    }).fail(function(reponse){
    console.log("FIB FAIL")
    $("#fib-output").text(response.fib)
    console.log(response.fib)

  }).success(function(response){
    console.log("FIB SUCCESS")
    console.log(response.fib)
    $("#fib-output").text(response.fib)
  })
}

var hello = function(){
  console.log("Well ain't that just the friendliest!")
  console.log("I'm glad you checked here.")
  console.log("If you'd like to talk a bit more in person, feel free to call my cell at (714) 330-3199.")
}