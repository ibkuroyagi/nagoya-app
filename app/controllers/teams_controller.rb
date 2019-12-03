class TeamsController < ApplicationController
  before_action :ensure_correct_team, only: [:edit,:update,:destroy]

  def index
    @q = Team.ransack(params[:q])
    if @q
      @teams = @q.result(distinct: true).includes(:universities)
    else
      #binding.pry
      @teams = Team.all
    end
    # binding.pry
    # @qq = University.ransack(params[:q])
    # @universities = @qq.result(distinct: true)
    @universities = University.all
  end

  def show
    @team = Team.find(params[:id])
    @universities = University.all
  end
end

def edit
  @team = Team.find(params[:id])
end

def update
  @team = Team.find(params[:id])
  @team.update(team_params)
  redirect_to teams_path
end

def destroy
  @team = Team.find(params[:id])
  @team.delete
  redirect_to teams_path
end

def ensure_correct_team
  #binding.pry
  @team = Team.find_by(id: params[:id])
  if team_signed_in? == false
    return false
  elsif @team.id != current_team.id
    # flash[:notice] = "編集可能なサークルのアカウントとしてログインしていません"
    #redirect_to(event_pages_path)
    return false
  else
    return true
  end


  private

    def team_params
      params.require(:team).permit(
        :name,
        :date,
        :prace,
        :volume,
        :rink,
        :content,
        :free
        )
    end

end