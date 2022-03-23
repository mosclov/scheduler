class Technician < ApplicationRecord
  has_many :work_orders
  has_many :locations
end
