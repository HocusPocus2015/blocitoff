class User < ActiveRecord::Base
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable #:confirmable
         
  has_many :lists, dependent: :destroy
         
#  before_save {self.email = email.downcase}
  
#  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
#  validates :name, length: {minimum: 1, maximum:50 }, presence: true
#  validates :password, presence: true, length: {minimum: 6} #, if: "password_digest.nil?"
#  validates :password, length: {minimum: 6 }, allow_blank: true
#  validates :email,
#             presence: true,
#             uniqueness: {case_sensitive: false},
#             length: {minimum: 3, maximum: 50},
#             format: {with: EMAIL_REGEX}
             
#  has_secure_passord
end
