class HoneydosController < ApplicationController


  def index
    honeydos = Honeydo.all
    respond_to do |f|
      f.html do
        render template: 'honeydos/index.html.erb', locals: { honeydos: honeydos }
      end
      f.json do
        render json: honeydos, status: 200
      end
    end
  end

  def new
    empty = Honeydo.new
    render json: empty, status: 200
  end



  def show
    honeydo = Honeydo.find(params[:id])
    respond_to do |f|
      f.html do
        render template: 'honeydos/show.html.erb', locals: { honeydo: honeydo, project: honeydo.project, completed: honeydo.completed }
      end
      f.json do
        render json: honeydo.project.to_json, status: 200
      end
    end
  end

  def create
    #For create to work, we must *require* that a parameter is sent with the name 'project'
    if params[:project].nil? || params[:project].empty?
      err_msg = "The 'project' info was empty or not found"
      render json: { err_msg: err_msg }, status: 422
    else

      task = Honeydo.new
      task.project = params[:project]
      task.save
      render json: task, status: 201
    end
  end

  def destroy
    if Honeydo.exists?(params[:id])
      task = Honeydo.find(params[:id])
      task.destroy
      render json: { message: "Project Deleted Successfully." }, status: 200
    else
      render json: { err_msg: 'No project found with that ID', id: params[:id] }.to_json, status: 404
    end
  end

  def update
    if Honeydo.exists?(params[:id])
      task = Honeydo.find(params[:id])
      task.completed = params[:completed]
      task.save
      render json: task, status: 200
    else
      render json: { err_msg: 'No project found with that ID', id: params[:id] }, status: 404
    end
  end

end
