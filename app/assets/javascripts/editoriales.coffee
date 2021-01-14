# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_editorial').validate
		rules:
			'editorial[nombre]':
				required: true
				minlength: 13
		messages:
			'editorial[nombre]':
				required: 'Nombre requerido'
				minlength: 'Minimo 13 Caracteres'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
