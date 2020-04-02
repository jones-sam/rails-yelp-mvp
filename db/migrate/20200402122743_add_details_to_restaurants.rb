# frozen_string_literal: true

class AddDetailsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    change_column :restaurants, :name, :string, null: false
    change_column :restaurants, :address, :string, null: false
    change_column :restaurants, :phone_number, :string, null: false
    change_column :restaurants, :category, :string, null: false, inclusion: { in: %w[chinese italian japanese french belgian] }
  end
end
