class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :title
      t.string :theme
      t.integer :price
      t.text :review
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
