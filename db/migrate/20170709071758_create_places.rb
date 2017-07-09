class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.string :place_id
      t.string :place_name
      t.belongs_to :course

      t.timestamps
    end
  end
end
