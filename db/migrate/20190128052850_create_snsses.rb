class CreateSnsses < ActiveRecord::Migration[5.2]
  def change
    create_table :snsses do |t|
      t.text :content
      t.timestamps
    end
  end
end
