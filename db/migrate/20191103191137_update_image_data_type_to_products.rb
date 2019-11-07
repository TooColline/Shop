# frozen_string_literal: true

class UpdateImageDataTypeToProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :image, :string
  end
end
