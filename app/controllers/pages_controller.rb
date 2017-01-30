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
      flash[:notice] = "Sorry, the contest has ended"
        redirect_to "/welcome"
    end

    def secrets
      if params[:magic_word] == "dog"
        redirect_to "/welcome"

      else
        flash[:notice] = "Sorry you're not authorized to see this page"
        redirect_to "/fail"
      end
    end
end
