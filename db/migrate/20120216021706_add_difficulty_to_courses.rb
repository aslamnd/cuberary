class AddDifficultyToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :difficulty, :integer

  end
end
