$(document).ready(function() {
  bindEventListeners();
  console.log("app.js loaded!");
});


var bindEventListeners = function(){
  $('#marklar-button').click(function(e){
    e.preventDefault();
    marklarSignal();
    console.log("marklar button pressed");
  })
}

var marklarSignal = function() {
  string = $('#marklar-input').val()
  $.ajax({
    url: "/marklar",
    type: 'put',
    data: {string: string}
  }).failure(function(reponse){
    console.log("MARKLAR FAIL")
    $("#marklar-output").text(response)
  }).success(function(response){
    console.log("MARKLAR SUCCESS")
    $("#marklar-output").text(response)
  })
}
