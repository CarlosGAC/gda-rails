class AssistancesController < ApplicationController
  def index
    @assistances = Assistance.all
  end

  def new
    @assistance = Assistance.new
  end

  def create
    @assistance = Assistance.new(
      record_number: params[:assistance][:record_number],
      company_user: params[:assistance][:company_user],
      affiliate_name: params[:assistance][:affiliate_name],
      affiliate_pays: params[:assistance][:affiliate_pays],
      company_pays: params[:assistance][:company_pays],
      contact_time: params[:assistance][:contact_time],
      end_time: params[:assistance][:end_time],
      who_quoted: params[:assistance][:who_quoted],
      comments: params[:assistance][:comments]
    )
    @assistance.save

    redirect_to assistances_url
  end

  def show
    @assistance = Assistance.find(params[:id])
  end

  def edit

  end

  def update

  end

  def destroy

  end
end
