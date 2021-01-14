# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_coordinador').validate
		rules:
			'coordinador[correo]':
				required: true
				minlength: 8
				maxlength: 50
			'coordinador[nombre]':
				required: true
				minlength: 5
				maxlength: 50
			'coordinador[paterno]':
				required: true
				minlength: 5
				maxlength: 50
			'coordinador[materno]':
				required: true
				minlength: 5
				maxlength: 50
			'coordinador[direccion]':
				required: true
				minlength: 5
				maxlength: 50
			'coordinador[telefonoCelular]':
				required: true
				minlength: 10
				maxlength: 10
				number: true
			'coordinador[telefonoCasa]':
				required: true
				minlength: 10
				maxlength: 10
				number: true
			'coordinador[especialidad]':
				required: true
				minlength: 5
				maxlength: 50
		messages:
			'coordinador[correo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 8'
				maxlength: 'Tamaño máximo 50'
			'coordinador[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'coordinador[paterno]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'coordinador[materno]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'coordinador[direccion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'coordinador[telefonoCelular]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 10'
				maxlength: 'Tamaño máximo 10'
				number: 'Ingresa un número de telefono'
			'coordinador[telefonoCasa]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 10'
				maxlength: 'Tamaño máximo 10'
				number: 'Ingresa un número de telefono'
			'coordinador[especialidad]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)