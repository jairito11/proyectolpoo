# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_presidente').validate
		rules:
			'presidente[predecesor]':
				required: true
				minlength: 5
				maxlength: 50
			'presidente[nacimiento]':
				required: true
				date: true
			'presidente[residencia]':
				required: true
				minlength: 5
				maxlength: 50
			'presidente[nacionalidad]':
				required: true
				minlength: 5
				maxlength: 50
			'presidente[religion]':
				required: true
				minlength: 5
				maxlength: 50
			'presidente[educadoEn]':
				required: true
				minlength: 5
				maxlength: 60
			'presidente[ocupacion]':
				required: true
				minlength: 5
				maxlength: 50
			'presidente[distinciones]':
				required: true
				minlength: 5
				maxlength: 50
		messages:
			'presidente[predecesor]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'presidente[nacimiento]':
				required: 'Campo requerido'
				date: 'Error en formato de fecha'
			'presidente[residencia]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'presidente[nacionalidad]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'presidente[religion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'presidente[educadoEn]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 60'
			'presidente[ocupacion]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
			'presidente[distinciones]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 5'
				maxlength: 'Tamaño máximo 50'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)