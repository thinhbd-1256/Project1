class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :user, foreign_key: true
      t.references :event, foreign_key: true
      t.string :content
      t.timestamp :date_created

      t.timestamps
    end
  end
end
