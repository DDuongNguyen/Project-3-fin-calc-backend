class RecordsController < ApplicationController

  def index
    @records = Record.all
    render json: @records
  end

  def show
    @record = Record.find(params[:id])
    render json: @record
  end

  def create
    @record = Record.create(record_params)
    render json: @record
  end

  private
  def record_params
    params.require(:record).permit(
    :user_id,
    :annual_expense,
    :saving_balance,
    :age,
    :retirement_age,
    :safe_withdrawal_rate,
    :investment_growth,
    :inflation,
    :tax_rate,
    :target_fund,
    :fund_at_retirement)
  end
end
