// scrolable = true

$(document).ready(function(){
  favourite();
});

function favourite() {
  $('body').on("submit", ".heart-buttons #heart", function(event){
    event.preventDefault();

    var heartInfo = $(this).serialize()
    var perkID = $(this).closest('.perk').attr('id')

    $('#'+perkID+' #unheart').removeClass('hidden');
    $('#'+perkID+' #heart').addClass('hidden');
    // $('input[type=text]').val('');

    $.ajax({
      method:"post",
      url: "/favourites",
      data: heartInfo,
      datatype: "json"
    })

    .done(function(response) {
      console.log(response);
      // response = JSON.parse(response);
      // $('.heart-buttons').append(response.html);
      // $('.perk'+response.perk).text(response.favourite_count)
    })

    .fail(function(response){
      $('#'+perkID+' #heart').removeClass('hidden');
      $('#'+perkID+' #unheart').addClass('hidden');
    });


  });
};

