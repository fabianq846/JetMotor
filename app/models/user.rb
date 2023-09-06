class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         enum role: { operador: 0, administrador: 1 }

        validates :email, presence: true, uniqueness: true
        validates :password, presence: true, length: { minimum: 6 }

end
