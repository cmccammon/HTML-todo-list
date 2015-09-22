class AddLimit < ActiveRecord::Migration
  def change
    change_column :honeydos, :project, :string, :limit => 300
  end
end
