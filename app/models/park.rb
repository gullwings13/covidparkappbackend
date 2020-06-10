class Park < ApplicationRecord
    has_many :posts, dependent: :destroy
end
