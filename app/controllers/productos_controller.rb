class ProductosController < ApplicationController
    def index 
        @productos = Producto.all
    end
    def show
        @productos = Producto.find (params[:id]) 
    end
    def new 
        @productos = Producto.new 
    end
    def create
        @productos = Producto.new(productos_params) 
        if @productos.save 
                redirect_to productos_path 
        else 
            render :new 
        end 
    end 

    def edit 
        @productos = Producto.find(params[:id])
    end

    def update 
        @productos = Producto.find(params[:id])
        if @productos.update(productos_params)
             redirect_to productos_path 
        else 
            render :edit
        end 

       

    end 
    def destroy 
        @productos = Producto.find(params[:id])
        @productos.destroy 
        redirect_to productos_path
    end 
    private 
    def productos_params
        params.require(:producto).permit(:nombre_producto , :precio) 
    end
  
end 

