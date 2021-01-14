# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_coordinador').validate
		rules:
			'coordinador[correo]':
				required: true
		messages:
			'coordinador[correo]':
				required: 'Correo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)