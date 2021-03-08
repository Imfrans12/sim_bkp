class TrMotivasisController < ApplicationController
   def index
       @tr_motivasis = TrMotivasi.where(:nama => current_ms_user.name)
    end

     def show
    @tr_motivasi = TrMotivasi.find(params[:id])
  end

  def new
    @tr_motivasi = TrMotivasi.new
  end

  def create
    @tr_motivasi = TrMotivasi.new(tr_motivasis_params)

    if @tr_motivasi.save
      redirect_to tr_motivasis_path, notice: "Data Successfuly Created"
    else
      render 'new'
    end

  end

  def edit
    @tr_motivasis = TrMotivasi.find(params[:id])
  end

  def update
    tr_motivasis = TrMotivasi.where(:id => params[:id])
    tr_motivasis.update_all(:nama => current_ms_user.name)
    tr_motivasis.update(tr_motivasis_params)
    if tr_motivasis
      redirect_to tr_motivasis_path, notice: "Data Successfuly Edited"
    else
      render 'edit'
    end

  end
  def report
    @tr_motivasis = TrMotivasi.all
  end

  def destroy
    @tr_motivasis = TrMotivasi.find(params[:id])
    @tr_motivasis.destroy
    redirect_to tr_motivasis_path, notice: "Data Successfuly Deleted"
  end
  private
  def tr_motivasis_params
    params.require(:tr_motivasi).permit(:id, :tanggal, :materi, :pemateri, :ringkasan, :nama)
  end
end
