class UserfinasController < ApplicationController
    def index
        userfinas = Userfina.all
        render json: {
            userfinas
        }
    end

    def show
        userfina 
    end
end
