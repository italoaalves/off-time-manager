class OffTime < ApplicationRecord
  belongs_to :vacation
  has_one :user, through: :vacation

  broadcasts_to :vacation
end
