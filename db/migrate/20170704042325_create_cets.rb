class CreateCets < ActiveRecord::Migration[5.1]
  def change
    create_table :cets do |t|
      t.references :exercise, foreign_key: true
      t.integer :repetition
      t.float :weight

      t.timestamps
    end
  end
end
