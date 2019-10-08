class Team < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :team_universities
  has_many :universities, through: :team_universities 
  has_many :events

  validates :name, presence: true 
  validates :date, presence: true
  validates :prace, presence: true 
  validates :volume, presence: true
  validates :content, length: { maximum: 500 },presence: true 
  validates :free, length: {maximum: 500}

end
