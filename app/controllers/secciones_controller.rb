class SeccionesController < ApplicationController
    def index
       @secciones = Seccion.all
    end

    def show
        @seccion = Seccion.find(params[:id])
        @posts = Post.all
    end
    
end