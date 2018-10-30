class SearchController < ApplicationController
  def search
  end

  def result

    if params[:search][:subject] != ""
      @courses = Course.where(subject_id:  params[:search][:subject]).all
      if Rails.env.development?
        @courses = @courses.where("name LIKE ? ","%#{params[:search][:course].downcase}%").all
      else
        @courses = @courses.where("name ILIKE ? ","%#{params[:search][:course].downcase}%").all
      end
    else
      if Rails.env.development?
        @courses = Course.where("name LIKE ? ","%#{params[:search][:course].downcase}%").all
      else
        @courses = Course.where("name ILIKE ? ","%#{params[:search][:course].downcase}%").all
      end
    end
  end
end
