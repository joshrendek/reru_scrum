class TasksController < ApplicationController
  layout nil
  # GET /tasks
  # GET /tasks.json
  def index
    @project = Project.find(params[:project_id])
    @story_type = StoryType.find(params[:story_type_id])
    @story = @project.stories.find(params[:story_id])
    @tasks = @story.tasks
    @areas = @tasks.select('DISTINCT area').collect{ |a| a.area }

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tasks }
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @project = Project.find(params[:project_id])
    @story_type = StoryType.find(params[:story_type_id])
    @story = @project.stories.find(params[:story_id])
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @project = Project.find(params[:project_id])
    @story_type = StoryType.find(params[:story_type_id])
    @story = @project.stories.find(params[:story_id])
    @task = @story.tasks.build(params[:task])
   
    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Task was successfully created.' }
        format.js { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.js { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy

    respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :ok }
    end
  end
end
