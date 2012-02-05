class AddAuthorToGreeting < ActiveRecord::Migration
  def self.up
    add_column :greetings, :author, :string
  end

  def self.down
    remove_column :greetings, :author
  end
end
