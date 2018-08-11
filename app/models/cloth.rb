class Cloth < ApplicationRecord
	has_many :combi, through: :cloth_combi
  	has_many :cloth_combi
end
