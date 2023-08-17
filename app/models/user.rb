class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :documents
  has_many :corepresentants
  has_many :foyermembres
  has_many :contacts
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
