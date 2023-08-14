class UserfinasController < ApplicationController
    def index
        userfina = Userfina.all 
        render json: userfina
    end

    def 
end
