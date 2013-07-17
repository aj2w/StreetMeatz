class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attr_accessible :name, :password, :is_admin

  has_many :reviews
  has_many :vendors

  validates :name, :password, :is_admin, presence: true
  validates :name, uniqueness: true
  validates :password, length: { minimum: 8 }

end
