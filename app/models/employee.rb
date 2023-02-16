class Employee < ApplicationRecord
  has_many :addresses
  accepts_nested_attributes_for :addresses,
                                allow_destroy: true,
                                reject_if: proc { |att| att['house_number'].blank? || ['society_name'].blank? || ['city'].blank? || ['area'].blank? }
end