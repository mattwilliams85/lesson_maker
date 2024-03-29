class LessonsController < ApplicationController

  def new_lesson
    @chapters = Chapter.all
    @chapter = Chapter.find(params[:id])
    @lessons = Lesson.all
    @lesson = Lesson.new
    render('/lessons/new_lesson.html.erb')
  end

  def create
    @chapters = Chapter.all
    @chapter = Chapter.find(params[:id])
    @lessons = Lesson.all
    @lesson = Lesson.create(:name => params[:name],
                            :number => params[:number],
                            :chapter_id => @chapter.id)
    render('/lessons/new_lesson.html.erb')
  end

  def delete
    @chapters = Chapter.all
    @chapter = Chapter.find(params[:chapter_id])
    @lessons = Lesson.all
    @lesson = Lesson.find(params[:id])
    @lesson.destroy
    render('/lessons/new_lesson.html.erb')
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
    @chapters = Chapter.all
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
