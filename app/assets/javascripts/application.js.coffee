#= require jquery
#= require jquery_ujs
#= require foundation
#= require turbolinks
#= require_tree .

$ ->
  $(document).foundation()
  $('textarea').each ->
    $(this).on 'focus', ->
      $(this).animate height: 300
    $(this).on 'focusout', ->
      $(this).animate height: 100
