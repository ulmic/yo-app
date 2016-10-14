$ ->
  $submit_button = $('.new_conversion input[type=submit]')
  $('#we_dont_save_texts').hide()
  $submit_button.click ->
    $('#we_dont_save_texts').show()
  $submit_button.prop 'disabled', 'disabled'
  $('.new_conversion textarea').on 'input', ->
    $submit_button.prop 'disabled', $(this).val().length == 0


  process_demostrate_script = ->
    $('.h4.fa-spin').hide()
    $original = $('#original')
    $original.typed({
      strings: [ 'В лесу родилась елочка' ],
      typed: 0
    })
    setTimeout ( ->
      $('#magic').addClass 'bounce'
      $('#magic').addClass 'animated'
    ), 1500
    setTimeout ( ->
      $('#magic').removeClass 'bounce'
      $('#magic').removeClass 'animated'
    ), 3000
    setTimeout ( ->
      $('.h4.fa-spin').show()
    ), 2500
    setTimeout ( ->
      $('.h4.fa-spin').hide()
    ), 5500


  process_demostrate_script()
  setInterval process_demostrate_script, 6000
