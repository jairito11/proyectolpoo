class Idioma < ApplicationRecord
	has_many :libros
	belongs_to :asociacion
end
