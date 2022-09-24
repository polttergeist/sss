# frozen_string_literal: true

class User < ApplicationRecord
  has_many :subscriptions

  validates :username, :active, presence: true
  validates :username, uniqueness: true

  after_update :check_active

  def initialize(attributes = nil)
    super
    self.active = true
  end

  private

  def active?
    active == 1
  end

  def check_active
    subscriptions.each(&:disabled!) unless active?
  end
end
