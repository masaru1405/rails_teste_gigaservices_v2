class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :gender
      t.string :title
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :picture

      t.timestamps
    end
  end
end
