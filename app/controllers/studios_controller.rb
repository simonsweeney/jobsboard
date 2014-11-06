class StudiosController < ApplicationController
  def index
  	@studios= Studio.page(params[:page]).per(25)
  end

  def new
	@studio = Studio.new
  end

  def create
  	@studio = Studio.new(params.require(:studio).permit(:title, :speciality, :url))
	if @studio.save
	  redirect_to root_path
	else
	  render "new"
	end
  end
end
