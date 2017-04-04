class ReadingsController < ApplicationController
  def index
    @readings = Entry.all
    render "index.json.jbuilder"
  end

  def show
    @reading = Entry.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @entry=Entry.create(
      date: params[:date],
      time: params[:time],
      bs: params[:bs]
      )
    redirect_to "/readings/#{@entry.id}"
  end

  def update
    @entry=Entry.find_by(id: params[:id])
    @entry.date = params[:date] || @entry.date
    @entry.time = params[:time] || @entry.time
    @entry.bs = params[:bs] || @entry.bs
    @entry.save
    render "show.json.jbuilder"
    #redirect_to "/readings/#{@entry.id}"

  end

  def destroy
    @entry = Entry.find_by(id: params[:id])
    @entry.destroy
    render json: {message: "Entry successfully destroyed!"}
  end
end
