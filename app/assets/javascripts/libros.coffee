# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_libro').validate
		rules:
			'libro[isbn]':
				required: true
				minlength: 13
				maxlength: 13
			'libro[titulo]':
				required: true
				minlength: 3
				maxlength: 30
			'libro[autor_id]':
				required: true
			'libro[editorial_id]':
				required: true
			'libro[genero_id]':
				required: true
			'libro[idioma_id]':
				required: true
		messages:
			'libro[isbn]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 13'
				maxlength: 'Tamaño máximo 13'
			'libro[titulo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'libro[autor_id]':
				required: 'Campo requerido'
			'libro[editorial_id]':
				required: 'Campo requerido'
			'libro[genero_id]':
				required: 'Campo requerido'
			'libro[idioma_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
