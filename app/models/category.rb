class Category < ApplicationRecord
  has_many :subcategories
  validates :name, presence: true
  
  def show_name
    return self.name if self.description.blank?
    return "#{self.name} --D: #{self.description}"
  end
end
