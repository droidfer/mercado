class Tender < ApplicationRecord
  enum status: {started: 0 , ongoing: 1, won:2, loss: 3, canceled: 4, discarded: 5}
  
end
