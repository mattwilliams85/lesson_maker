class LessonsController < ApplicationController

  def index
    @lesson = Lesson.new
    @lessons = Lesson.all
    render('/lessons/index.html.erb')
  end

  def create
    @lessons = Lesson.all
    @lesson = Lesson.create(params[:lesson])
    render('/lessons/index.html.erb')
  end
end
