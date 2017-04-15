class AssistancesController < ApplicationController
  def index
    @q = Assistance.search(params[:q])
    if params[:commit]
    @assistance = @q.result.includes(:service)
  else
    @assistance = Assistance.today()
    end

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
    if @assistance.save
      redirect_to @assistance, notice: "Asistencia creada satisfactoriamente"
    else
      render :new, error: "Error: La asistencia no pudo ser guardada safistactoriamente"
    end
  end

  def show
    @assistance = Assistance.find(params[:id])
  end

  def edit
    @assistance = Assistance.find(params[:id])
  end

  def update
    @assistance = Assistance.find(params[:id])
    if @assistance.update(assistance_params)
      redirect_to @assistance, edit: "Asistencia editada satisfactoriamente"
    else
      render :edit, error: "Error: La asistencia no pudo ser guardada satisfactoriamente"
    end
  end

  def destroy
    @assistance = Assistance.find(params[:id])
    @assistance.destroy

    redirect_to assistances_url
  end

  def assistance_params
    params.require(:assistance).permit(:record_number,:company_user,:affiliate_name,:affiliate_pays,:company_pays,:contact_time,:end_time,:who_quoted,:comments)
  end

end
