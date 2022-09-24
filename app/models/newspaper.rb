# frozen_string_literal: true

class Newspaper < ApplicationRecord
  has_many :subscriptions, as: :subscribable
  enum kind: {"politics" => 0, "music" => 1, "science" => 2, "lifestyle" => 3}

  validates :name, presence: true, uniqueness: true
  validates :kind, presence: true
end
