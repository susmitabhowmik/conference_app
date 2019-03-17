class Meeting < ApplicationRecord
  belongs_to :speaker
  
  validates :title, :agenda, :time, :location , presence:true
  validates :agenda, length: {minimum: 15}
end
