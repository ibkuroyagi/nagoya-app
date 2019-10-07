class TeamUniversity < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :university, optional: true
end
