class UserfinasController < ApplicationController
    def index
        userfinas = Userfina.all
        render json: {
            userfinas
        }
    end

    def show
        userfina = Userfina.find_by(users_params)
        if !userfina
            return head :not_found
            else
                render json: {
                    userfina,
                    users: userfina.users
                    }, status: 201
            end
        end
    end
end
