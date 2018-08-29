module Api
    module V1
        class HelpCentersController < ApiApplicationController
            before_action :authenticate_request!
            def index
                hcenters = HelpCenter.order('name DESC');
                render json: {status: 'SUCCESS', message: 'Carga de sitios de ayuda', data: hcenters}, status: :ok
            end

            def show
                hcenter = HelpCenter.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Carga sitio de ayuda', data: hcenter}, status: :ok
            end

        end
    end
end
