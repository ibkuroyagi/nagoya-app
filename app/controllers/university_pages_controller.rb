class UniversityPagesController < ApplicationController
  helper_method :can_destroy?
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

  def edit
    @university = University.find(params[:id])
  end

  def update
    @university = University.find(params[:id])
    @university.update(university_params)
    redirect_to university_pages_path
  end

  def show
    @university = University.find(params[:id])
  end


  def destroy
    @university = University.find(params[:id])
    @university.delete
    redirect_to university_pages_path
  end

  def can_destroy?(id)
    # binding.pry
    @team_universities = TeamUniversity.all 
    
    @team_universities.each do |t|
      if t.university_id == id 
        return false
      end
    end
    return true
  end

  private

    def university_params
      params.require(:university).permit(
        :name
        )
    end
end
