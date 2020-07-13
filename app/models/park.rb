class Park < ApplicationRecord
    # has_many :zones, dependent: :destroy
    has_many :zones, -> { order('name ASC') } , dependent: :destroy
end
