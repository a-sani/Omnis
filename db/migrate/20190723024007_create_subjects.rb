class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :website1
      t.string :website2
      t.string :website3
      t.text :notes

      t.timestamps
    end
  end
end
