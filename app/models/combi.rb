class Combi < ApplicationRecord
	has_many :cloth, through: :cloth_model
    has_many :cloth_model
    accepts_nested_attributes_for :cloth_model
end
