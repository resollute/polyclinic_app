# frozen_string_literal: true

class AddPhoneIndexToUsers < ActiveRecord::Migration[6.1]
  def change
    add_index :users, :phone, unique: true
  end
end
