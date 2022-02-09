class FriendsController < ApplicationController
  def index
    @friends = Friend.all
  end

  def new
  end

  def create
    @friend = Friend.new(friend_data)
    if @friend.save
      redirect_to friends_path
    else
      render :index
    end
  end

  private

  def edit
    @friend = Friend.find(params[:id])
  end

  def update
    @friend = Friend.find(params[:id])
    if @friend.update(friend_data)
      redirect_to friends_path
    else
      render :edit
    end
  end

  def destroy
    @friend = Friend.find(params[:id])
    if @friend.destroy
      redirect_to friends_path
    else
      render :index
    end
  end

  def friend_data
    params.require(:friend).permit(:name, :riot_id, :discord, :facebook, :twitter)
  end
end
