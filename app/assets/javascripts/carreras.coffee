# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_carrera').validate
		rules:
			'carrera[clave]':
				required: true
				digits: true
			'carrera[nombre]':
				required: true
				minlength: 3
				maxlength: 30
			'carrera[descripcion]':
				required: true
				minlength: 3
				maxlength: 30
			'carrera[campus]':
				required: true
				minlength: 3
				maxlength: 30
			'carrera[municipio]':
				required: true
				minlength: 3
				maxlength: 30
			'carrera[estado]':
				required: true
				minlength: 3
				maxlength: 30
			'carrera[pais]':
				required: true
				minlength: 3
				maxlength: 30
			'carrera[coordinador_id]':
				required: true
		messages:
			'carrera[clave]':
				required: 'Campo requerido'
				digits: 'Solo números'
			'carrera[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'carrera[descripcion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'carrera[campus]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'carrera[municipio]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'carrera[estado]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'carrera[pais]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'carrera[coordinador_id]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
