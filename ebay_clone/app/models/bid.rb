class Bid < ActiveRecord::Base
	belongs_to :product
	belongs_to :user
	validates :amount, presence: true, numericality: true
end
