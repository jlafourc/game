# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  adversaires = $('#rencontre_adversaire_id').html()
  $('#rencontre_equipe_id').change -> update_adversaires(adversaires)

update_adversaires = (adversaires) ->
    equipe = $('#rencontre_equipe_id :selected').text()
    escaped_equipe = equipe.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(adversaires).filter("optgroup[label='#{escaped_equipe}']").html()
    if options
      $('#rencontre_adversaire_id').html(options)
    else
      $('#rencontre_adversaire_id').empty()


jQuery(window).load ->
	adversaires = $('#rencontre_adversaire_id').html()
	update_adversaires(adversaires)
