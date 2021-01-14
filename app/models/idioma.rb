class Idioma < ApplicationRecord
	has_many :libros, dependent: :restrict_with_error
	belongs_to :asociacion
end
