# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_asociacion').validate
		rules:
			'asociacion[codigo]':
				required: true
		messages:
			'asociacion[codigo]':
				required: 'Codigo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
