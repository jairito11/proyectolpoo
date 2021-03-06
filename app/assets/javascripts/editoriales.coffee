# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
ready = ->	
	validator = $('#formulario_editorial').validate
		rules:
			'editorial[nombre]':
				required: true
				minlength: 3
				maxlength: 30
			'editorial[tipo]':
				required: true
				minlength: 3
				maxlength: 50
			'editorial[isin]':
				required: true
				minlength: 12
				maxlength: 12
			'editorial[industria]':
				required: true
				minlength: 3
				maxlength: 30
			'editorial[formaLegal]':
				required: true
				minlength: 3
				maxlength: 30
			'editorial[fundador]':
				required: true
				minlength: 3
				maxlength: 30
			'editorial[sede]':
				required: true
				minlength: 3
				maxlength: 30
			'editorial[fundacion]':
				required: true
		messages:
			'editorial[nombre]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'editorial[tipo]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 50'
			'editorial[isin]':
				required: 'Campo requerido'
				minlength: 'Tamaño máximo 12'
				maxlength: 'Tamaño máximo 12'
			'editorial[industria]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'editorial[formaLegal]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'editorial[fundador]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'editorial[sede]':
				required: 'Campo requerido'
				minlength: 'Tamaño mínimo 3'
				maxlength: 'Tamaño máximo 30'
			'editorial[fundacion]':
				required: 'Campo requerido'
$(document).ready(ready)
$(document).on('turbolinks:load', ready)
