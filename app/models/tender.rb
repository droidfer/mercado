class Tender < ApplicationRecord
  has_many :offers
  has_and_belongs_to_many :employees
  
  enum status: { started: 0, ongoing: 1, won: 2, loss: 3, canceled: 4, discarded: 5 }

  scope :status, -> (type) { where("status = ?", type) if type.present? }
end
