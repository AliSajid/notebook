class CreateSistergroupships < ActiveRecord::Migration
  def change
    create_table :sistergroupships do |t|
      t.integer :user_id
      t.integer :group_id
      t.integer :sistergroup_id
    end
  end
end
