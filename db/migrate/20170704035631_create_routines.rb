class CreateRoutines < ActiveRecord::Migration[5.1]
  def change
    create_table :routines do |t|
      t.references :user
      t.string :name

      t.timestamps
    end
  end
end
