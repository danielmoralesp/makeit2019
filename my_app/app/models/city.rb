class City < ApplicationRecord
	validates :name, length: {minimum: 3}, presence: true
	validates :country, presence: true

	has_many :houses
end