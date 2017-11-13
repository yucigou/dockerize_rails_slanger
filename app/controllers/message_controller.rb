class MessageController < ApplicationController
  def subscribe
    puts 'Subscribed'
  end

  def publish
    message = search_params.require(:message)

    Pusher.trigger('MY_CHANNEL', 'AN_EVENT', message: message)
    puts 'Published'
  end

  private

  def search_params
    params.permit(:message)
  end
end
