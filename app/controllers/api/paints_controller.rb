class Api::PaintsController < ApplicationController
  def index
    @paints = Paint.all
    render "index.json.jb"
  end

  def show
    @paint = Paint.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @paint = Paint.new(
      sheen: params[:sheen],
      quality: params[:quality],
      brand: params[:brand],
    )
    @paint.save
    render "show.json.jb"
  end

  def update
    @paint = Paint.find_by(id: params[:id])
    @paint.update(
      sheen: params[:sheen] || @paint.sheen,
      quality: params[:quality] || @paint.quality,
      brand: params[:brand] || @paint.brand,
    )
    render "show.json.jb"
  end

  def destroy
    @paint = Paint.find_by(id: params[:id])
    @paint.destroy
    render json: { message: "Yeeted this paint" }
  end
end
