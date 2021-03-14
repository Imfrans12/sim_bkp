class TrSikapsController < ApplicationController
	def index
        @tr_sikap = TrSikap.where(:nama => current_ms_user.name)
        @tr_sikaps = TrSikap.all
    end

     def show
    @tr_sikap = TrSikap.find(params[:id])
  end

  def new
    @tr_sikap = TrSikap.new
  end

  def create
    @tr_sikaps = TrSikap.new(tr_sikaps_params)

    if @tr_sikaps.save
      redirect_to tr_sikaps_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_sikaps = TrSikap.find(params[:id])
  end

  def update
    tr_sikaps = TrSikap.where(:id => params[:id])
    tr_sikaps.update_all(:nama => current_ms_user.name)
    tr_sikaps.update(tr_sikaps_params)
    if tr_sikaps
      redirect_to tr_sikaps_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_sikaps = TrSikap.all
  end

   def activate
    @tr_sikaps = TrSikap.find_by(:id=>params[:id])
    @tr_sikaps.update(:status=>"Tersetujui")
    redirect_to tr_sikaps_path, notice: "Data Accepted"
  end
  def destroy
    @tr_sikaps = TrSikap.find(params[:id])
    @tr_sikaps.destroy
    redirect_to tr_sikaps_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_sikaps_params
    params.require(:tr_sikap).permit(:id, :tanggal, :jenis_kode, :kode, :saksi, :status, :nama)
  end
end
