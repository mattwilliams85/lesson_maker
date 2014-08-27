class ChaptersController < ApplicationController

  def index
    @chapter = Chapter.new
    @chapters = Chapter.all
    render('/lessons/index.html.erb')
  end

  def create
    @chapters = Chapter.all
    @chapter = Chapter.create(params[:chapter])
    render('/lessons/index.html.erb')
  end

  def delete
    @chapters = Chapter.all
    @chapter = Chapter.find(params[:id])
    @chapter.destroy
    render('/lessons/index.html.erb')
  end

end
