class CreateCpanelSections < ActiveRecord::Migration
  def change
    create_table :cpanel_sections do |t|
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end
end
