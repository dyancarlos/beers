class CreateMyBeers < ActiveRecord::Migration
  def change
    create_table :my_beers do |t|
      t.integer :user_id
      t.integer :beer_id
      t.timestamps
    end
  end
end
