class CreateTable < ActiveRecord::Migration[8.1]
  def change
    create_table :things do |t|
      t.string: name 
      t.timestamps
    end

    Thing.create!("Hello")
    Thing.create!("World")
    Thing.create!("GoodBye")
    Thing.create!("Moon")
  end
end
