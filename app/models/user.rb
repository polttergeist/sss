require 'active_model'
require 'active_record'
require 'newspaper'
require 'podcast'
require 'subscription'

class User < ApplicationRecord
	has_many :subscriptions

	validates :username, presence: true
	validates :active, presence: true

	after_initialize :set_active
	after_update :check_active

	private

	def set_active
		self.active = true
	end

	def check_active
		if self.active == 0
			(1..self.subscriptions.length).each do |i|
				s = self.subscriptions[i-1]
				s.disabled!
				s.save
			end
		end
	end
end