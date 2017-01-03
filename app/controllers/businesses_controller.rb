class BusinessesController < ApplicationController
  def search
    @query = params[:query]
    @businesses = Business.search(@query).paginate(:page => params[:page], :per_page => 12)
  end
  
  def new
    @business = Business.new
  end
  
  def create
    @business = current_user.businesses.build(business_params)
    
    if @business.save
      redirect_to @business
    else
      render 'new'
    end
  end
  
  def show
    @business = Business.find_by_id(params[:id])
    
    if @business.nil?
      redirect_to root_path
    end
  end
 
private
  def business_params
    params.require(:business).permit(:name, :industry, :started, :price, :address, :tehsil, :city, :state, :num_employees)
  end
end
