class FavoritesController < ApplicationController

  def create
    @event = Event.find(params[:event_id])
    if current_user.favorite(@event)
      redirect_to user_events_path(current_user)
    else
      redirect_to root
    end
  end

  def destroy
    @favorite = Favorite.where(user_id: current_user.id.to_i, event_id: params[:id].to_i)
    @favorite.destroy_all
    redirect_to user_events_path(current_user)
  end
end
