class AddAccountIdToUsers < ActiveRecord::Migration[8.0]
  def change
    add_reference :users, :account, index: true, foreign_key: true, type: :uuid
  end
end
