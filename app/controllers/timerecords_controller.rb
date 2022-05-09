class TimerecordsController < ApplicationController
  def index
    @timerecord = Timerecord.new
  end
  def create
    @timerecord = Timerecord.select(:day_record)
    if @timerecord != Time.now.day
      binding.pry
      @timerecord = Timerecord.new(timerecord_params)
      @timerecord.save
      redirect_to root_path
    else
      redirect_to action: :update
    end
  end
  def update
    @timerecord = Timerecord.find(params[:time_record])
    @timerecord.update(time_record:@timerecord + 1)
    redirect_to root_path
  end

  private
  def timerecord_params
    params.require(:timerecord).permit(:time_record, :day_record)
  end
end
