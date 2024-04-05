class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    @rating = Rating.new(rating_params)
    @rating.user_id = current_user.id
    if @rating.save
      redirect_to ratings_path
    else
      render :new
    end
  end

  def index
    @q = Rating.ransack(params[:q])
    @ratings = @q.result(distinct: true).page(params[:page])
  end

  def show
    @rating = Rating.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @rating = Rating.find(params[:id])
  end

  def update
    @rating = Rating.find(params[:id])
    @rating.update(rating_params)
    redirect_to rating_path(@rating.id)
  end

  def destroy
    @rating = Rating.find(params[:id])
    @rating.destroy
    redirect_to ratings_path
  end

  private

  def rating_params
    params.require(:rating).permit(:class_type, :faculty, :department, :subject_name, :professor_name, :nickname, :body, :exam_content)
  end
end
