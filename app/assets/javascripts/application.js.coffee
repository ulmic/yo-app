#= require jquery
#= require jquery_ujs
#= require foundation
#= require turbolinks
#= require_tree .

$ ->
  $(document).foundation()
  $('textarea').each ->
    $(this).on 'focus', ->
      $(this).height 500
    $(this).on 'focusout', ->
      $(this).height 100
