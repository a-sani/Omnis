class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :name
      t.datetime :start_time

      t.timestamps
    end
  end
end
