class UniversityPagesController < ApplicationController
  def index
    @universities = University.all
  end

  def new 
    @university = University.new 
  end

  def create
    @university = University.create(university_params)
    if @university.save
      redirect_to university_pages_path
    else
      # もう一回newのパスに
      redirect_to　new_university_page_path
    end
  end
  private

    def university_params
      params.require(:university).permit(
        :name
        )
    end
end
