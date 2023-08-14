class UserfinasController < ApplicationController
    def index
      userfinas = Userfina.all
      render json: userfinas
    end
  
    def show
      userfina = Userfina.find_by(users_params)
      if userfina
        render json: {
          userfina: userfina,
          users: userfina.users
        }, status: :ok
      else
        head :not_found
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
  
    def update
      userfina = Userfina.find(params[:id])
      if userfina.update(userfina_params)
        render json: userfina, status: :ok
      else
        render json: {
          errors: userfina.errors.full_messages
        }, status: :unprocessable_entity
      end
    end
  

  end
  