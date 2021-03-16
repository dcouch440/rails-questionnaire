class SurveyController < ApplicationController
  def index
    @surveys = Survey.all
    # Survey.all.each { |e| @surveys << e }
    render :index
  end
end