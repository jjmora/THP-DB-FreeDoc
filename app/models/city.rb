class City < ApplicationRecord
  has_many :cities
  has_many :doctors
  has_many :appointments
end
