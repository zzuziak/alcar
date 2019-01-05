class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :short_description
      t.text :long_description
      t.string :photo
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
