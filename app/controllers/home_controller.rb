class HomeController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.last
  end

  def new
    @survey = Survey.new
    if request.post?
      @survey = Survey.create!(survey_params)
    end
  end

  def create
    if request.post?
      @survey = Survey.create!(survey_params)
    end
  end



  private def survey_params
    params.require(:survey).permit(:name, :chocolate, :puppies, :rainbows, :cash)
  end
end
