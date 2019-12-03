class EventPagesController < ApplicationController
  before_action :authenticate_team!, only: [:new,:create,:edit,:update,:destroy]
  before_action :ensure_correct_team, only: [:edit,:update,:destroy]
  helper_method :ensure_correct_team

  def index
    @events = Event.all
    # @q = Event.ransack(params[:q])
    # @events = @q.result(distinct: true).includes(:teams)
    @universities = University.all
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    @event.team_id = current_team.id 
    @team = current_team
    if @event.save
      EventMailer.send_when_create_event(@event, @team).deliver
      flash.now[:info] = '登録内容の確認メールを送信しました'
      redirect_to event_page_path(@event)
    else
      # もう一回newのパスに
      redirect_to new_event_page_path
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to event_pages_path
  end

  def show
    @event = Event.find(params[:id])
  end


  def destroy
    @event = Event.find(params[:id])
    @event.delete
    redirect_to event_pages_path
  end

  def ensure_correct_team
    #binding.pry
    @event = Event.find_by(id: params[:id])
    if team_signed_in? == false
      return false
    elsif @event.team_id != current_team.id
      flash.now[:notice] = "編集は自アカウントのみ可能です"
      #redirect_to(event_pages_path)
      return false
    else
      return true
    end
  end
  
  private

    def event_params
      params.require(:event).permit(
        :name,
        :date,
        :price,
        :detail,
        :rink,
        :locate,
        :team_id
        )
    end

end
