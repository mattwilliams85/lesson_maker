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

  def delete
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render('/lessons/index.html.erb')
  end

  def show
    @lesson = Lesson.find(params[:id])
    render('/lessons/show.html.erb')
  end

  def edit
    @lesson = Lesson.find(params[:id])
    render('/lessons/edit.html.erb')
  end

  def update
    @lesson = Lesson.find(params[:id])
    @lesson.update(:content => params[:content],
                   :name => params[:name],
                   :number => params[:number])
    render('/lessons/show.html.erb')
  end

  def view
    @lessons = Lesson.all
    render('/lessons/table_of_contents.html.erb')
  end

  def content_view
    @lesson = Lesson.find(params[:id])
    @countup = @lesson.id
    @countdown = @lesson.id
    render('/lessons/student_view.html.erb')
  end

end
