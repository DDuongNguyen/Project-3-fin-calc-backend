class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
        t.integer :user_id
        t.integer :annual_expense
        t.integer :saving_balance
        t.integer :age
        t.integer :retirement_age
        t.integer :safe_withdrawal_rate
        t.integer :investment_growth
        t.integer :inflation
        t.integer :tax_rate
        t.integer :target_fund
        t.integer :fund_at_retirement

      t.timestamps
    end
  end
end
