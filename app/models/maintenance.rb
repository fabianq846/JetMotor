class Maintenance < ApplicationRecord
  enum maintenance_type: { "Preventivo": 0, "Correctivo": 1 }

  belongs_to :motor

  validates :motor_type, presence: true
  validates :maintenance_type, presence: true
  validates :motor_name, presence: true
  validates :city, presence: true
  validates :materials, presence: true
  validates :technician_email, presence: true
  validates :maintenance_date, presence: true
end
