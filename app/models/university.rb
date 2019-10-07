class University < ApplicationRecord
    
    has_many :team_universities 
    has_many :teams, through: :team_universities
    accepts_nested_attributes_for :team_universities
end
