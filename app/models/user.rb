class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  before_save :downcase_email

  # Include default devise modules. Others available are:
  # :confirmable, :recoverable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, 
         :validatable

  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # validates :username, presence: true, length: { in: 3..20 },
  #                     uniqueness: { case_sensitive: false }

  has_many :stories, dependent: :destroy
  has_many :notes, dependent: :destroy

  private

    def downcase_email
      email.downcase!
    end
  
end
