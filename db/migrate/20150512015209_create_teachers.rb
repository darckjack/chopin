class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :email
      t.string :password_digest
      t.string :name

      t.timestamps null: false
    end
    add_index :teachers, :email, unique: true
  end
end
