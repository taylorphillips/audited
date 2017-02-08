class <%= migration_class_name %> < ActiveRecord::Migration
  def self.up
    add_column :audits, :owner_id, :integer
    add_column :audits, :owner_type, :string
  end

  def self.down
    remove_column :audits, :owner_type
    remove_column :audits, :owner_id
  end
end
