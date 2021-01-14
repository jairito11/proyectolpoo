class Rol < ApplicationRecord
	has_many :personas, dependent: :restrict_with_error
	belongs_to :edificio
end
