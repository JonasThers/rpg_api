class Enemy < ApplicationRecord
    validates :name, presence: true
    validates :strength, presence: true
    validates :dexterity, presence: true
    validates :wisdom, presence: true
    validates :intelligence, presence: true
    validates :charisma, presence: true
    validates :hit_points, presence: true
end
