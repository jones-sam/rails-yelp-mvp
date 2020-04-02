# frozen_string_literal: true

class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true

  validates_inclusion_of :category, in: %w[chinese italian japanese french belgian], message: 'extension %s is not included in the list'
end
