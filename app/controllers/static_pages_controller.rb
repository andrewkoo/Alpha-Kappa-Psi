class StaticPagesController < ApplicationController

  def home
  end

  def about
  end

  def careers
  end

  def contact
  end

  def consulting
  end

  def corporate
  end

  def rush
    @rushevents = RushEvent.order(:event_time => :asc)
  end
  
end
