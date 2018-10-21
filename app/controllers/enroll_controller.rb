class EnrollController < ApplicationController
  def enroll
    @user = current_user
    @course = Course.find(params[:course_id])
    @enrollment = Enrollment.new(course_id: params[:course_id],
                                    user_id: @user.id
                                    )
    if @enrollment.save
      redirect_to @user
    else
      render 'search#result'
    end
  end

end
