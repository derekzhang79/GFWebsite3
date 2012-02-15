$ ->
    $('#iPad #lock').hover ->
        $(this).animate(left: "495px", {duration: 1300, complete: ->
            $('#lockScreen').hide()
            $('#locationScreen').fadeIn()
        })

    $('.pin').click ->
        $(this).children('.popup').fadeIn()
