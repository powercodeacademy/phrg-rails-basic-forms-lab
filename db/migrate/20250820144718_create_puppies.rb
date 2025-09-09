class CreatePuppies < ActiveRecord::Migration[7.1]
  def change
    create_table :puppies do |t|
      t.string :name
      t.string :breed
      t.string :age

      t.timestamps
    end
  end
end
