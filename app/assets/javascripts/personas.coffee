# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_persona').validate
		rules:
			'persona[curp]':
				required: true
				minlength: 18
				maxlength: 18
			'persona[nombre]':
				required: true
				minlength: 3
				maxlength: 50
			'persona[paterno]':
				required: true
				minlength: 3
				maxlength: 50
			'persona[materno]':
				required: true
				minlength: 3
				maxlength: 50
			'persona[sexo]':
				required: true
				minlength: 1
				maxlength: 1
			'persona[telefono]':
				required: true
				minlength: 10
				maxlength: 10
				number: true
			'persona[direccion]':
				required: true
				minlength: 10
				maxlength: 50
			'persona[password_digest]':
				required: true
				minlength: 5
				maxlength: 50
			'persona[rol_id]':
				required: true
			'persona[especialidad_id]':
				required: true
		messages:
			'persona[curp]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 18'
				maxlength: 'Tamaño máximo 18'				
			'persona[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 3'
				maxlength: 'Tamaño máximo 50'
			'persona[paterno]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 3'
				maxlength: 'Tamaño máximo 50'
			'persona[materno]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 3'
				maxlength: 'Tamaño máximo 50'
			'persona[sexo]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 1'
				maxlength: 'Tamaño máximo 1'
			'persona[telefono]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 10'
				maxlength: 'Tamaño máximo 10'
				number: true
			'persona[direccion]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 10'
				maxlength: 'Tamaño máximo 50'
			'persona[password_digest]':
				required: 'Campo requerido'
				minlength: 'Tamaño minimo 5'
				maxlength: 'Tamaño máximo 50'
			'persona[rol_id]':
				required: 'Campo requerido'
			'persona[especialidad_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
