class TrEsdsController < ApplicationController
   def index
       @tr_esds = TrEsd.where(:nama => current_ms_user.name)
       @tr_esd = TrEsd.all
    end

     def show
    @tr_esd = TrEsd.find(params[:id])
  end

  def new
    @tr_esd = TrEsd.new
  end

  def create
    @tr_esd = TrEsd.new(tr_esds_params)

    if @tr_esd.save
      redirect_to tr_esds_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_esds = TrEsd.find(params[:id])
  end

  def update
    tr_esds = TrEsd.where(:id => params[:id])
    tr_esds.update_all(:nama => current_ms_user.name)
    tr_esds.update(tr_esds_params)
    if tr_esds
      redirect_to tr_esds_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end
  end
  
  def activate
    @tr_esds = TrEsd.find_by(:id=>params[:id])
    @tr_esds.update(:status=>"Tersetujui")
    redirect_to tr_esds_path, notice: "Data Accepted"
  end

  def report
    @tr_esds = TrEsd.all
  end

  def destroy
    @tr_esds = TrEsd.find(params[:id])
    @tr_esds.destroy
    redirect_to tr_esds_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_esds_params
    params.require(:tr_esd).permit(:id, :tanggal, :esensi_esd, :jenis_kegiatan, :nama, :status, :bukti)
  end
end
