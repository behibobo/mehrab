class Customer < ApplicationRecord
    has_many :lands, dependent: :destroy
    def full_name
        "#{self.first_name} #{self.last_name}"
    end
end
