class Meeting < ApplicationRecord
  validates :title, :agenda, :time, :location , presence:true
  validates :agenda, length: {minimum: 15}
end
