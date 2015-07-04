class CreateLoginTokens < ActiveRecord::Migration
  def change
    create_table :login_tokens do |t|
      t.integer :uid
      t.string :sequence
      t.string :token

      t.timestamps null: false
    end
  end
end
