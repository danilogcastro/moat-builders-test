class Album < ApplicationRecord
  belongs_to :artist

  validates :year, format: { with: /\d{4}/, message: "year must be four-digits long" }
end
