class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.references :physicist, index: true
      t.string :name
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :experiments, :physicists
  end
end
