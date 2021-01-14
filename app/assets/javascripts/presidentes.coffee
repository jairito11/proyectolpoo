# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_presidente').validate
		rules:
			'presidente[predecesor]':
				required: true
		messages:
			'presidente[predecesor]':
				required: 'Nombre requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)