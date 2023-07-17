class CreateReactionTests < ActiveRecord::Migration[7.0]
  def change
    create_table :reaction_tests do |t|
      t.integer :reaction_time

      t.timestamps
    end
  end
end
