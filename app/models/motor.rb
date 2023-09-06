class Motor < ApplicationRecord
  enum equipment_type: { "REAC": 0, "TURBO": 1 }

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  # Considerando que estás usando ActiveStorage para las imágenes
  has_one_attached :photo
end
