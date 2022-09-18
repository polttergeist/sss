require 'active_model'
require 'active_record'

class Subscription < ApplicationRecord
	belongs_to :user
	belongs_to :subscribable, polymorphic: true
	enum status: {active: 1, disabled: 0}, _default: :active

	def disabled!
		self.status = "disabled"
	end
end