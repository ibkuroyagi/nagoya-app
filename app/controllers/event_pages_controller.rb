class EventPagesController < ApplicationController
  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    if @event.save
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
