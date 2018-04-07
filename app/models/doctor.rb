class Doctor < ApplicationRecord
    validates :name, presence: true
    validates :crm, presence: true
end
