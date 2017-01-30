class PagesController < ApplicationController

    def welcome
      @header = "This is the header in the controller page"
      render :welcome
    end

    def about
    end

    def contest
    end

end
