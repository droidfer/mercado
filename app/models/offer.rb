class Offer < ApplicationRecord
  belongs_to :tender
  has_many_attached :proposal

  enum status: {inactive: 0 , active: 1}

  scope :active, -> { where(status: :active) }

  scope :status, -> (type) { where("status = ?", type) if type.present? }
end
