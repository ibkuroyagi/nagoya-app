class Team < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:trackable, :confirmable
  has_many :team_universities, dependent: :destroy
  has_many :universities, through: :team_universities 
  has_many :events, dependent: :destroy
  accepts_nested_attributes_for :team_universities#親子関係にある関連モデルteam_universities（子）を作成する。（具体的には、ビューで子レコードに入力するパラメータをつくってくれる
  validates :name, presence: true 
  validates :date, presence: true
  validates :prace, presence: true 
  validates :volume, presence: true
  validates :content, length: { maximum: 500 },presence: true 
  validates :free, length: {maximum: 500}
    # override Devise::Models::Confirmable#send_on_create_confirmation_instructions
  # def send_on_create_confirmation_instructions
    # generate_confirmation_token!  unless @raw_confirmation_token
  #   send_devise_notification(:confirmation_on_create_instructions, @raw_confirmation_token, {})
  # end
end



