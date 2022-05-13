class TimerecordsController < ApplicationController
  def index
    @timerecord = Timerecord.all
    if @timerecord.present?
     #@timerecord = Timerecord.find(params[:id])
      past_seconds = Time.zone.now - Timerecord.last.created_at
      @past_days = (past_seconds / 1.days).floor
      @time = Timerecord.select(:time_record).last
    end
  end
  def create
    @timerecord = Timerecord.new(timerecord_params)
    @timerecord.save
    redirect_to root_path
  end
  def update
    @timerecord = Timerecord.new(timerecord_params)
    @timerecord.update
    redirect_to root_path
  end

  private
  def timerecord_params
    params.require(:timerecord).permit(:time_record, :day_record)
  end
end
