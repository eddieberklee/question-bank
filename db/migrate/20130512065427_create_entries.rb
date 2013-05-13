class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :title
      t.string :question
      t.string :answer
      t.string :explanation
      t.string :tags

      t.timestamps
    end
  end
end
