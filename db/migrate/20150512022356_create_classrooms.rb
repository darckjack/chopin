class CreateClassrooms < ActiveRecord::Migration
  def change
    create_table :classrooms do |t|
      t.string :name
      t.integer :grade
      t.references :teacher, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
