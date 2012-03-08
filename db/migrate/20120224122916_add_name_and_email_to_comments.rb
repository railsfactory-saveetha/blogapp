class AddNameAndEmailToComments < ActiveRecord::Migration
  def self.up
    add_column :comments , :name , :string
    add_column :comments , :email , :string
  end
  def self.down
    remove_column :comments , :name
    remove_column :comments , :email
  end
end
