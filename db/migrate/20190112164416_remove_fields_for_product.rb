class RemoveFieldsForProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :short_description, :text
    remove_column :products, :long_description, :text

    add_column :products, :description, :text
  end
end
