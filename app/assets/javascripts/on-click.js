"use strict";


function fetchJSON() {

  $.ajax({
    url: "http://localhost:3000/start", 
    method: 'POST',
    success: function(data){
      
    }
  })
};

$(document).ready(function() {
  // add click listener here
  // it should call on fetchJSON()

  $('#load-cars').on('click', function(e){
    
    fetchJSON();

  })

});



