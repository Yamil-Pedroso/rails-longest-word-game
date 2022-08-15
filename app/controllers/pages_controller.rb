require "open-uri"


class PagesController < ApplicationController
    def new
        @letters = (0...50).map { ('a'..'z').to_a[rand(26)] }.join
    end

    def score
        word = "handy"
        url = "https://wagon-dictionary.herokuapp.com/#{word}"
        arguments = URI.open(url).read
        @content = JSON.parse(arguments)
     end
  end








 # def new
 #   @grid = Boggle.generate_grid(10)
 #   @start_time = Time.now
 #   session[:grid] = @grid
 #   session[:start_time] = @start_time
 # end
#
 # def score
 #   @attempt = params[:your_try]
 #   grid = session[:grid]
 #   start_time = Time.parse(session[:start_time])
 #   end_time = Time.now
 #   @result = Boggle.run_game(@attempt, grid, start_time, end_time)
 # end
