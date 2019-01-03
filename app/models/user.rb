class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, 
         :validatable

  validates :email, presence: true, uniqueness: true
  # validates :username, presence: true, uniqueness: true 

  has_many :stories, dependent: :destroy
  has_many :notes, dependent: :destroy
  
end
