class Carrera < ApplicationRecord
	belongs_to :cordinador
	has_many :especialidades
end
