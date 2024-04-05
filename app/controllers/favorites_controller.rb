class FavoritesController < ApplicationController
  def create
    rating = Rating.find(params[:rating_id])
    favorite = current_user.favorites.new(rating_id: rating.id)
    favorite.save
    redirect_to rating_path(rating)
  end

  def destroy
    rating = Rating.find(params[:rating_id])
    favorite = current_user.favorites.find_by(rating_id: rating.id)
    favorite.destroy
    redirect_to rating_path(rating)
  end
end
