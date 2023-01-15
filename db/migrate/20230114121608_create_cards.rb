class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :content ,  null: false
      t.text :memo
      t.references :task_list , null: false,foreign_key: true
      t.timestamps 
    end
  end
end
