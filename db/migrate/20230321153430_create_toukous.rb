class CreateToukous < ActiveRecord::Migration[5.2]
  def change
    create_table :toukous do |t|
      t.string :map
      t.text :title
      t.string :location_id
      t.string :point_id
      t.string :result_id
      t.text :explain
      t.integer :user_id

      t.timestamps
    end
  end
end
