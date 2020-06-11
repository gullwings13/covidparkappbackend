class Park < ApplicationRecord
    has_many :zones, dependent: :destroy
end
