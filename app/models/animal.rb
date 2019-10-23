class Animal < ApplicationRecord
    has_many :diseases, through: :dateofinfection
end
