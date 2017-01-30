class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    requested_size = params[:size]
    @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
  end
  
    def welcome
      @header = "This is the header in the controller page"
      render :welcome
    end

    def about
    end

    def contest
    end

end
