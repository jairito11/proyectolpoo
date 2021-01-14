# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_carrera').validate
		rules:
			'carrera[nombre]':
				required: true
				minlength: 13
		messages:
			'carrera[nombre]':
				required: 'carrera requerido'
				minlength: 'Minimo 13 Caracteres'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
