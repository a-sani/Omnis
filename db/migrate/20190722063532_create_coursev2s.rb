class CreateCoursev2s < ActiveRecord::Migration[5.1]
  def change
    create_table :coursev2s do |t|
      t.string :name
      t.text :website
      t.date :duedate
      t.text :notes

      t.timestamps
    end
  end
end
