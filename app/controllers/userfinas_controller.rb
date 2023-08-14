class UserfinasController < ApplicationController
    def index
      userfinas = Userfina.all
      render json: userfinas
    end
  
    def show
      userfina = Userfina.find_by(users_params)
      if !userfina
        head :not_found
      else
        render json: {
          userfina: userfina,
          users: userfina.users
        }, status: :ok
      end
    end

    def create
        userfina = Userfina.create(userfina_params)
        if userfina.valid?
          render json: userfina, status: :created
        else
          render json: {
            errors: userfina.errors.full_messages
          }, status: :unprocessable_entity
        end
      end
 end
  