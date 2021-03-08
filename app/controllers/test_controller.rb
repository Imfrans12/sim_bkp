class TestController < ApplicationController


    def index
        @ms_user = MsUser.all
    end

    def action
        @dashboard = TrIn.find(params[:id])
        if  @dashboard.update(status: params[:is_valid])
            ActionCable.server.broadcast 'process_dashboard',
            dashboard_type: @dashboard.dashboard_type,  
            text: @dashboard.text
            head :ok
        end
    end

    def create
        @dashboard = dashboard.new(dashboard_params)

        if @dashboard.save
            ActionCable.server.broadcast 'print_dashboard',
              id: @dashboard.id,
              no: @dashboard.no,
              name: @dashboard.name,
              department: @dashboard.department,
              entry_date: @dashboard.entry_date,
              entry_time: @dashboard.entry_time
                
            
        end

    end

    def new
        @name = params[:name]
        @department = params[:department]
        @entry_time = params[:entry_time]
        respond_to do |format|
        format.html
        format.js
        end
    end

    def displayOnPublic
        @dashboardsA = dashboard.where(:dashboard_type => "A").where(:status => "PROCESS").order('updated_at DESC').first
        @dashboardsB = dashboard.where(:dashboard_type => "B").where(:status => "PROCESS").order('updated_at DESC').first
        render "dashboards/display_on_public"
    end

    def displayOnClient
        @dashboardsA = getCurrentdashboard("A")
        @dashboardsB = getCurrentdashboard("B")
        render "dashboards/display_on_client"
    end

    private
    def getCurrentdashboard(type)
        dashboard = dashboard.where(:dashboard_type => type).order('dashboard_order DESC').first
        if dashboard == nil
            dashboard = 1

        else
            dashboard = dashboard.dashboard_order + 1
        end
    end

    def dashboard_params
         params.require(:tr_ins).permit(:id,:no,:name,:department,:entry_date,:entry_time,:out_date,:out_time,:plat_number,:vehicle,  :is_active, :is_valid, :created_by, :updated_by)     
    end
end