class EventMailer < ApplicationMailer
    def send_when_create_event(event, team)
        @event = event
        @team = team
        # mail to:      event.team.email,
        # binding.pry
        mail to:      @team.email,
             subject: '登録したイベントの内容を確認してください！'
    end
end
