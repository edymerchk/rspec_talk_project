class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # VALIDATIONS
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :email, :presence => true, length: { maximum: 255 }, :format => { with: VALID_EMAIL_REGEX },
  :uniqueness => { case_sensitive: false }

  validates_presence_of :password, :password_confirmation, :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}".strip
  end
end
