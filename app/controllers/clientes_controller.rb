class ClientesController < ApplicationController

    def index 
        @clientes = Cliente.all
    end
    def show
        @clientes = Cliente.find (params[:id]) 
    end
    def new 
        @clientes = Cliente.new 
    end
    def create
        @clientes = Cliente.new(clientes_params) 
        if @clientes.save 
                redirect_to clientes_path 
        else 
            render :new 
        end 
    end 

    def edit 
        @clientes = Cliente.find(params[:id])
    end

    def update 
        @clientes = Cliente.find(params[:id])
        if @clientes.update(clientes_params)
             redirect_to clientes_path 
        else 
            render :edit
        end 

       

    end 
    def destroy 
        @clientes = Cliente.find(params[:id])
        @clientes.destroy 
        redirect_to clientes_path
    end 
    private 
    def clientes_params
        params.require(:cliente).permit(:rfc , :nombre_cliente) 
    end
  
end 

