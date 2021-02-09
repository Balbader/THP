class IndexController < ApplicationController
  def new
    @gossips = Gossip.all
  end
end
