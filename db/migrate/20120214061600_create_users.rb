class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, :null => false, :default => ""
      t.string :last_name, :null => false, :default => ""
      t.datetime :date_of_birth
      t.text :short_bio

      t.timestamps
    end
  end
end
