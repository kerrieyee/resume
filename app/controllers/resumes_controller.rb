class ResumesController < ApplicationController

  def index
    @resumes = Resume.where(:user_id => current_user.id)
  end

  def new
  end

  def create
    @resume = Resume.new(:name => params[:resume][:name],
                          :description =>params[:resume][:description],
                          :user => current_user)
    respond_to do |format|
      if @resume.save
        #need to add error handling
        format.js 
      else
        format.js 
      end
    end
  end

  def edit
    @resume = Resume.find(params[:id])
  end
  
  def update
    @resume = Resume.find(params[:id])
    if @resume.update_attributes(params[:resume])
      redirect_to resumes_path, notice: "Resume was successfully updated."
    else
      render action: "edit"
    end
  end

  def destroy
  end

  def show
  end
end
