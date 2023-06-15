class Task < ApplicationRecord
  belongs_to :tender

  enum status: { open: 0, complete: 1}

  scope :open, -> { where(status: :open) }

  def alertColor
    case self.status
    when "complete"
      return "green"
    else
      return "red"
    end
  end
  
end
