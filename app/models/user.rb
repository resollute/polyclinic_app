# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :phone, uniqueness: true, presence: { message: "must be numerical" },
                                      numericality: true,
                                      length: { minimum: 10, maximum: 15 }

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
