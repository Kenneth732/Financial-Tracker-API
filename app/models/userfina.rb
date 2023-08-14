class Userfina < ApplicationRecord
    validates :name, presence: true
    validates :income, presence: true, numericality: { greater_than: 0 }
    validates :year, presence: true, numericality: { only_integer: true, greater_than: 0 }
end