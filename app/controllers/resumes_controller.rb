class ResumesController < ApplicationController

  def index
    @resumes = Resume.where(:user_id => current_user.id)
  end

  def new
  end

  def create
    puts "CREATE"
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
  end
  
  def update
  end

  def destroy
  end

  def show
  end

 
end
