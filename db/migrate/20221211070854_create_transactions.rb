class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :transaction_name
      t.integer :student_id
      t.date :transaction_date

      t.timestamps
    end
  end
end
