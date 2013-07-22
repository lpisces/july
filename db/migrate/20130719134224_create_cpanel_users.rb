class CreateCpanelUsers < ActiveRecord::Migration
  def change
    create_table :cpanel_users do |t|
      t.string :name
      t.string :nick
      t.string :email
      t.string :mobile
      t.string :avatar

      t.timestamps
    end
  end
end
