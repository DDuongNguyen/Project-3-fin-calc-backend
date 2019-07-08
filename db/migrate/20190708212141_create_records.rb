class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
        t.integer :user_id
        t.integer :annual_expense
        t.integer :saving_balance
        t.integer :birth_date
        t.integer :retirement_age
        t.integer :safe_withdrawal_rate
        t.integer :monthly_saving
        t.integer :investment_growth
        t.integer :inflation
        t.integer :tax_rate
      t.timestamps
    end
  end
end
