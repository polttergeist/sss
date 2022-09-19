require 'active_model'
require 'active_record'

class Podcast < ApplicationRecord
	has_many :subscriptions, as: :subscribable
	enum typee: ['politics', 'music', 'science', 'lifestyle']

	validates :name, presence: true, uniqueness: true
	validates :typee, presence: true
end