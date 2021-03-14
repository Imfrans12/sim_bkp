class TrJurnal3sController < ApplicationController
  def index
       @tr_jurnal3s = TrJurnal3.where(:nama => current_ms_user.name)
       @tr_jurnal3 = TrJurnal3.all
    end

     def show
    @tr_jurnal3 = TrJurnal3.find(params[:id])
  end

  def new
    @tr_jurnal3 = TrJurnal3.new
  end

  def create
    @tr_jurnal3 = TrJurnal3.new(tr_jurnal3s_params)

    if @tr_jurnal3.save
      redirect_to tr_jurnal3s_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_jurnal3s = TrJurnal3.find(params[:id])
  end
def activate
    @tr_jurnal3s = TrJurnal3.find_by(:id=>params[:id])
    @tr_jurnal3s.update(:status=>"Tersetujui")
    redirect_to tr_jurnal3s_path, notice: "Data Accepted"
  end
  def update
    tr_jurnal3s = TrJurnal3.where(:id => params[:id])
    tr_jurnal3s.update_all(:nama => current_ms_user.name)
    tr_jurnal3s.update(tr_jurnal3s_params)
    if tr_jurnal3s
      redirect_to tr_jurnal3s_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_jurnal3s = TrJurnal3.all
  end

  def destroy
    @tr_jurnal3s = TrJurnal3.find(params[:id])
    @tr_jurnal3s.destroy
    redirect_to tr_jurnal3s_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_jurnal3s_params
    params.require(:tr_jurnal3).permit(:id, :tanggal, :jumlah_text, :nilai, :nama, :status)
  end
end
