"use strict";


function startActionCable() {

  $.post({
    url: "/start", 
    method: 'POST',
    success: function(data){
      
    }
  })
};

$(document).ready(function() {
  // add click listener here
  // it should call on fetchJSON()

  $('#load-tweets').on('click', function(e){
      e.preventDefault();
      e.stopPropagation();
      startActionCable();

  })

});



