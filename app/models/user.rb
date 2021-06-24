class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  include Devise::JWT::RevocationStrategies::JTIMatcher
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self

  has_one :dashboard

  validates :role, :first_name, :last_name, :url, presence: true
  validates :url, format: { with: URI::DEFAULT_PARSER.make_regexp }
  
  enum role: %i(rma bank)
end
