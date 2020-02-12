class GossipController < ApplicationController
  def show
    @gossip =  Gossip.find(params[:id])
    @id = @gossip.user.city.id
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params, user: User.all.sample) # avec xxx qui sont les données obtenues à partir du formulaire

    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to index_path
    else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render 'new'
    end
  end

  def edit
    @gossip = Gossip.find(params[:id]) 
  end

  def update
    @gossip = Gossip.find(params[:id]) 

    if @gossip.update(gossip_params) # essaie de sauvegarder en base @gossip
      redirect_to gossip_path
    else
    # sinon, il render la view new (qui est celle sur laquelle on est déjà)
      render 'new'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id]) 

    if @gossip.destroy
      redirect_to root_index_path
    else
      render 'gossip'
    end
  end
  private

  def gossip_params
    params.require(:gossip).permit(:title, :content)
  end
end
