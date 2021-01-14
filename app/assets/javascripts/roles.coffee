# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_rol').validate
		rules:
			'rol[descripcion]':
				required: true
				minlength: 13
		messages:
			'rol[descripcion]':
				required: 'descripción requerida'
				minlength: 'Minimo 13 Caracteres'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
