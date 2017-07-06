class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.belongs_to :place

      t.timestamps
    end
  end
end
