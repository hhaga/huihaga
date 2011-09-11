class AddAuthorToGreeting < ActiveRecord::Migration
  def self.up
    add_column :greetings, :author, :String
  end

  def self.down
    remove_column :greetings, :author
  end
end
