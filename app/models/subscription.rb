# frozen_string_literal: true

class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :subscribable, polymorphic: true
  enum status: {active: 1, disabled: 0}, _default: :active
end
