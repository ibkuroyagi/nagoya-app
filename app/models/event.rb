class Event < ApplicationRecord
    belongs_to :team, optional: true
end
