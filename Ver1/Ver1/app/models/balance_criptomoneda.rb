class BalanceCriptomoneda < ApplicationRecord
  belongs_to :usuario
  belongs_to :criptomoneda
end
