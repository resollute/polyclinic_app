# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # validates :phone, uniqueness: true, presence: { message: "must be numerical" },
  #                                     numericality: true,
  #                                     length: { minimum: 10, maximum: 15 }
  validates :phone, uniqueness: true, presence: { message: "must be numerical" },
                                      numericality: true,
                                      format: { with: /^\+?3?8?(0(67|68|96|97|98)\d{7})$/, multiline: true }
  validates :name, :surname, presence: true
  
  paginates_per 5
  # belongs_to :category
  def email_required?
    false
  end

  def email_changed?
    false
  end

  def will_save_change_to_email?
  end

  def fullname
    "#{name} #{surname}"
  end
end
