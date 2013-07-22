class CreateCpanelNodes < ActiveRecord::Migration
  def change
    create_table :cpanel_nodes do |t|
      t.string :name
      t.integer :sort
      t.string :description
      t.integer :section_id
      t.integer :cnt

      t.timestamps
    end
  end
end
