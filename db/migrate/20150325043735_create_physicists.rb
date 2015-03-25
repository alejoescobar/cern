class CreatePhysicists < ActiveRecord::Migration
  def change
    create_table :physicists do |t|
      t.string :name
      t.integer :specialty

      t.timestamps null: false
    end
  end
end
