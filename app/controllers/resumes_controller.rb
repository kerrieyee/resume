class ResumesController < ApplicationController
  def index
    @resumes = Resume.where(params[:current_user])
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
        format.json {render json: @resume,
                            status: :created,
                            location: @resume}
        format.html{redirect_to @resume,
                    notice: 'Tweet was successfully created'}
      else
        format.html{render action: "new"}
        format.json{render json: @resume.errors,
                                status: :unprocessable_entity}
      end
      format.js
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
