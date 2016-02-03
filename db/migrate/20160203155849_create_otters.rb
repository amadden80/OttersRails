class CreateOtters < ActiveRecord::Migration
  def change
    create_table :otters do |t|
      t.string :name
      t.integer :age
      t.text :bio

      t.timestamps null: false
    end
  end
end
