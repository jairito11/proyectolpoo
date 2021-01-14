# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_autores').validate
		rules:
			'autor[nombre]':
				required: true
				minlength: 3
				maxlength: 50
			'autor[paterno]':
				required: true
				minlength: 3
				maxlength: 50
			'autor[materno]':
				required: true
				minlength: 3
				maxlength: 50
			'autor[nacionalidad]':
				required: true
				minlength: 3
				maxlength: 50
			'autor[lengua]':
				required: true
				minlength: 3
				maxlength: 30
			'autor[religion]':
				required: true
				minlength: 3
				maxlength: 30
			'autor[distinciones]':
				required: true
				minlength: 3
				maxlength: 50
			'autor[fechaNacimiento]':
				required: true
		messages:
			'autor[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'autor[paterno]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'autor[materno]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'autor[nacionalidad]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'autor[lengua]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'autor[religion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'autor[distinciones]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'autor[fechaNacimiento]':
				required: true
$(document).ready(ready)
$(document).on('turbolinks:load', ready)