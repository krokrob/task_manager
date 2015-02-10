class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]
  def index
    @missions = Mission.all
  end

  def new
    @mission = Mission.new
  end

  def create
    @mission = Mission.new(mission_params)
    @mission.save
    redirect_to mission_path(@mission)
  end

  def show
  end

  def edit
  end

  def update
    @mission.update(mission_params)
    redirect_to mission_path(@mission)
  end

  def destroy
    @mission.destroy
    redirect_to missions_path
  end

  private

  def mission_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:mission).permit(:name, :description, :done)
  end

  def set_mission
      @mission = Mission.find(params[:id])
    end
end
