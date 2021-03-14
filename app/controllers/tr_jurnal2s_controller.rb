class TrJurnal2sController < ApplicationController
  def index
       @tr_jurnal2s = TrJurnal2.where(:nama => current_ms_user.name)
       @tr_jurnal2 = TrJurnal2.all
    end

     def show
    @tr_jurnal2 = TrJurnal2.find(params[:id])
  end

  def new
    @tr_jurnal2 = TrJurnal2.new
  end

  def create
    @tr_jurnal2 = TrJurnal2.new(tr_jurnal2s_params)

    if @tr_jurnal2.save
      redirect_to tr_jurnal2s_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_jurnal2s = TrJurnal2.find(params[:id])
  end
def activate
    @tr_jurnal2s = TrJurnal2.find_by(:id=>params[:id])
    @tr_jurnal2s.update(:status=>"Tersetujui")
    redirect_to tr_jurnal2s_path, notice: "Data Accepted"
  end
  def update
    tr_jurnal2s = TrJurnal2.where(:id => params[:id])
    tr_jurnal2s.update_all(:nama => current_ms_user.name)
    tr_jurnal2s.update(tr_jurnal2s_params)
    if tr_jurnal2s
      redirect_to tr_jurnal2s_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_jurnal2s = TrJurnal2.all
  end

  def destroy
    @tr_jurnal2s = TrJurnal2.find(params[:id])
    @tr_jurnal2s.destroy
    redirect_to tr_jurnal2s_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_jurnal2s_params
    params.require(:tr_jurnal2).permit(:id, :tanggal, :judul, :pengarang, :resume, :nama, :status)
  end
end
