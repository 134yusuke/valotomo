class ToukousController < ApplicationController
  def new
    @toukou=Toukou.new
  end
  
  def create
    @toukou=Toukou.new(toukou_params)
    @toukou.user_id=current_user.id
    @toukou.save
    redirect_to toukou_path
  end
  
  def index
  end
  
  def show
    @toukou=Toukou.find(params[:id])
  end
  
  def destroy
  end
  
  private
  
  def toukou_params
    params.require(:toukou).permit(:map,:title,:location,:point,:result,:explain)
  end
  
end
