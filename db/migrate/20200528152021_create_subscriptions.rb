class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
      t.references :chat
      t.references :user

      t.timestamps
    end
  end
end
