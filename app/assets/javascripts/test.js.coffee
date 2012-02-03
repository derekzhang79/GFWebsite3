# GFI Test bubble page (Are you happy with your website)

$ ->
   $('#test .bubble').click ->
     call = '#test .' + $(this).attr('id')
     $(call).fadeIn()
