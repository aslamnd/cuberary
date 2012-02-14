class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :title, :null => false, :default => ""
      t.text :description
      t.string :duration
      t.datetime :released

      t.timestamps
    end
  end
end
