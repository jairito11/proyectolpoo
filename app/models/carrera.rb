class Carrera < ApplicationRecord
	belongs_to :coordinador
	has_many :especialidades, dependent: :restrict_with_error
end
