class Autor < ApplicationRecord
	has_many :libros, dependent: :restrict_with_error
end
