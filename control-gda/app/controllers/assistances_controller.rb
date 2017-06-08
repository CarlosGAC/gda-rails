class AssistancesController < ApplicationController
  def index
    @q = Assistance.search(params[:q])
    if params[:commit]
      @assistance = @q.result.includes(:service)
    else
      @assistance = Assistance.today
    end
  end


  def new
    @assistance = Assistance.new
    @assistance.build_service
  end

  def create
    @assistance = Assistance.new(assistance_params)
    if @assistance.save
      redirect_to @assistance, notice: "Asistencia creada satisfactoriamente"
    else
      render :new, error: "Error: La asistencia no pudo ser guardada safistactoriamente"
    end
  end

  def show
    @assistance = Assistance.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "Reporte de asistencia_##{@assistance.id}_#{Time.zone.now}",
               template: "assistances/assistance_pdf_layout"
      end
    end
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

  private

  def assistance_params
    params.require(:assistance).permit(
        :record_number,
        :company_user,
        :affiliate_name,
        :affiliate_pays,
        :company_pays,
        :contact_time,
        :end_time,
        :who_quoted,
        :comments,
        :service_attributes => [
            :id,
            :date,
            :hour,
            :client,
            :ubication,
            :destiny,
            :operator,
            :truck,
            :inventary_num,
            :brand,
            :car_type,
            :model,
            :color,
            :licence_plates,
            :keys_num,
            :operator_id,
            :truck_id,
            :assistance_id
        ])
  end

end

