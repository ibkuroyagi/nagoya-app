class TeamsController < ApplicationController
  def index
    @teams = Team.all
    @universities = University.all
  end

  def show
    @team = Team.find(params[:id])
    @universities = University.all
  end
end
