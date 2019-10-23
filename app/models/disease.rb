class Disease < ApplicationRecord
    has_many :animals, through: :dateofinfection
end
