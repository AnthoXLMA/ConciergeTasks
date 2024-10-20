class ConciergesController < ApplicationController
  def index
    @concierges = Concierge.all
  end

  def show
  end
end
