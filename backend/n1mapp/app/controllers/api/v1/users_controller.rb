module Api
    module V1
        class UsersController < ActionController::Base
            skip_before_action :verify_authenticity_token  
            #before_action :authenticate_request!

            def index
                users = User.order('created_at DESC');
                render json: {status: 'SUCCESS', message: 'Carga de las usuarias', data: users}, status: :ok
            end

            def show
                user = User.find(params[:id])
                render json: {status: 'SUCCESS', message: 'Carga el usuaria', data: user}, status: :ok
            end

            def create 
                user = User.new(user_params)
                if user.save 
                    render json: {status: 'SUCCESS', message: 'usuaria guardada', data: user}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'usuaria no guardada', data: user}, status: :unprocessable_entity
                end
            end

            def destroy 
                user = User.find(params[:id])
                user.destroy
                render json: {status: 'SUCCESS', message: 'usuario eliminado', data: user}, status: :ok
            end

            def update 
                user = User.find(params[:id])
                if user.update_attributes(user_params)
                    render json: {status: 'SUCCESS', message: 'usuaria editada', data: user}, status: :ok
                else
                    render json: {status: 'ERROR', message: 'usuaria no editada', data: image}, status: :unprocessable_entity
                end
            end

            private

            def user_params
                params.permit(:name, :email, :password, :surname, :phone_number, :document_type, :document_number, :attendant_name, :attendant_phone_number, :sexual_orientation, :district, :picture)
            end
        
        end
    end
end
