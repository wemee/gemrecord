class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  has_many :routines
  has_many :exercises
  has_many :categories

  after_create :set_defuat_exercises

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      # user.name = auth.info.name   # assuming the user model has a name
      # user.image = auth.info.image # assuming the user model has an image
      # If you are using confirmable and the provider(s) you use validate emails,
      # uncomment the line below to skip the confirmation emails.
      # user.skip_confirmation!
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  private
  def set_defuat_exercises
    cate1 = Category.find_or_create_by(name: '胸')
    cate1.user = self
    exercise1 = Exercise.find_or_create_by(name: '臥推')
    exercise1.user =  self
    cate1.exercises << exercise1
    cate1.save

    cate2 = Category.find_or_create_by(name: '背')
    cate2.user = self
    exercise2 = Exercise.find_or_create_by(name: '槓鈴划船')
    exercise2.user =  self
    cate2.exercises << exercise2
    cate2.save

    cate3 = Category.find_or_create_by(name: '腿')
    cate3.user = self
    exercise3 = Exercise.find_or_create_by(name: '深蹲')
    exercise3.user =  self
    cate3.exercises << exercise3
    exercise4 = Exercise.find_or_create_by(name: '硬舉')
    exercise4.user =  self
    cate3.exercises << exercise4
    cate3.save
  end
end
