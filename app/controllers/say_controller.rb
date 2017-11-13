require 'pusher'

class SayController < ApplicationController
  def hi
    @files = Dir.glob('./app/controllers/*')

    # Pusher['MY_CHANNEL'].trigger 'an_event', color: "##{rand(16777216).to_s 16}"
    # Pusher.trigger('channel', 'event', foo: 'bar')

    # puts Pusher.get_async("MY_CHANNEL")

  end

  def hello
    Pusher['MY_CHANNEL'].trigger 'an_event', color: "##{rand(16777216).to_s 16}"
    Pusher.trigger('MY_CHANNEL', 'an_event', foo: 'bar')

    # Pusher.get_async("MY_CHANNEL").callback { |response|
    #   # use reponse[:channels]
    #   puts "response: #{response}"
    # }.errback { |error|
    #   # error is an instance of Pusher::Error
    #   puts "error: #{error}"
    # }
  end
end
