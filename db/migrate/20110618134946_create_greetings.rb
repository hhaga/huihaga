class CreateGreetings < ActiveRecord::Migration
  def self.up
    create_table :greetings do |t|
      t.string :header
      t.text :body
      t.date :when

      t.timestamps
    end
  end

  def self.down
    drop_table :greetings
  end
end
