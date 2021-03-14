class TrJurnalsController < ApplicationController
   def index
       @tr_jurnals = TrJurnal.where(:nama => current_ms_user.name)
       @tr_jurnal = TrJurnal.all
    end

     def show
    @tr_jurnal = TrJurnal.find(params[:id])
  end

  def new
    @tr_jurnal = TrJurnal.new
  end

  def create
    @tr_jurnal = TrJurnal.new(tr_jurnals_params)

    if @tr_jurnal.save
      redirect_to tr_jurnals_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_jurnals = TrJurnal.find(params[:id])
  end
def activate
    @tr_jurnals = TrJurnal.find_by(:id=>params[:id])
    @tr_jurnals.update(:status=>"Tersetujui")
    redirect_to tr_jurnals_path, notice: "Data Accepted"
  end
  def update
    tr_jurnals = TrJurnal.where(:id => params[:id])
    tr_jurnals.update_all(:nama => current_ms_user.name)
    tr_jurnals.update(tr_jurnals_params)
    if tr_jurnals
      redirect_to tr_jurnals_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_jurnals = TrJurnal.all
  end

  def destroy
    @tr_jurnals = TrJurnal.find(params[:id])
    @tr_jurnals.destroy
    redirect_to tr_jurnals_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_jurnals_params
    params.require(:tr_jurnal).permit(:id, :tanggal, :waktu, :jenis_literasi, :judul, :pengarang, :nama, :halaman, :status)
  end
end
