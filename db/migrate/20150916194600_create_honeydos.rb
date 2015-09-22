class CreateHoneydos < ActiveRecord::Migration
  def change
    create_table :honeydos do |t|
      t.string :project
      t.boolean :completed, default: false
      t.timestamps null: false
    end
  end
end
