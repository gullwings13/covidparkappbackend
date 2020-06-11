class Zone < ApplicationRecord
  belongs_to :park
  has_many :posts, dependent: :destroy
end
