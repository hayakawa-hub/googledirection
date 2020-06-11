class RouteController < ApplicationController
  def index
    @route=Route.all
    
  end

  def new
    @route=Route.new
  end

  def create
    if request.post?
     @route=Route.create(route_params)
    end
    redirect_to @route
    
  end

  def show
    @route=Route.find(params[:id])
 gon.depature_place=@route['depature_place']
 gon.destination_place=@route['destination_place']
 gon.transition_method=@route['transition_method']
 

  end

  def destroy
    route=Route.find(params[:id])
    route.destroy
    redirect_to '/route'
  end

  private 
def route_params
 params.require(:route).permit(:id,:depature_place,:destination_place,:transition_method)
end


end
