class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.string :email
      t.string :token
      t.string :password_digest

      t.timestamps
    end
  end
end
