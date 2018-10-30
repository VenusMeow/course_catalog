class SearchController < ApplicationController
  def search

  end

  def create
    puts params
    if params[:subject] != ""
      @results = Course.where(subject_id:  params[:subject]).all
      if Rails.env.development?
        @results = @results.where("name LIKE ? ","%#{params[:course].downcase}%").all
      else
        @results = @results.where("name ILIKE ? ","%#{params[:course].downcase}%").all
      end
    else
      if Rails.env.development?
        @results = Course.where("name LIKE ? ","%#{params[:course].downcase}%").all
      else
        @results = Course.where("name ILIKE ? ","%#{params[:course].downcase}%").all
      end
    end
    respond_to do |format|
      format.js
    end
  end
end
