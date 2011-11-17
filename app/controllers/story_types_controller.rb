class StoryTypesController < ApplicationController
  # GET /story_types
  # GET /story_types.json
  def index
    @story_types = StoryType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @story_types }
    end
  end

  # GET /story_types/1
  # GET /story_types/1.json
  def show
    @project = Project.find(params[:project_id])
    @story_type = StoryType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @story_type }
    end
  end

  # GET /story_types/new
  # GET /story_types/new.json
  def new
    @story_type = StoryType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @story_type }
    end
  end

  # GET /story_types/1/edit
  def edit
    @story_type = StoryType.find(params[:id])
  end

  # POST /story_types
  # POST /story_types.json
  def create
    @story_type = StoryType.new(params[:story_type])

    respond_to do |format|
      if @story_type.save
        format.html { redirect_to @story_type, notice: 'Story type was successfully created.' }
        format.json { render json: @story_type, status: :created, location: @story_type }
      else
        format.html { render action: "new" }
        format.json { render json: @story_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /story_types/1
  # PUT /story_types/1.json
  def update
    @story_type = StoryType.find(params[:id])

    respond_to do |format|
      if @story_type.update_attributes(params[:story_type])
        format.html { redirect_to @story_type, notice: 'Story type was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @story_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /story_types/1
  # DELETE /story_types/1.json
  def destroy
    @story_type = StoryType.find(params[:id])
    @story_type.destroy

    respond_to do |format|
      format.html { redirect_to story_types_url }
      format.json { head :ok }
    end
  end
end
