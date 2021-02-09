class PostController < ApplicationController
  def create_post
  end
  def new_gossip
    gossip = Gossip.new
    gossip.gossip_author = params["gossip_author"]
    gossip.gossip_content = params["gossip_content"]
    gossip.save
  end
end
