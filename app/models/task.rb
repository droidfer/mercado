class Task < ApplicationRecord
  belongs_to :tender

  enum status: { open: 0, complete: 1}

  scope :open, -> { where(status: :open) }
end
