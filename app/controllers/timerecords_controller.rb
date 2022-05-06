class TimerecordsController < ApplicationController
  def index
    @timerecord = Timerecord.new
  end
  def create
    @timerecord = Timerecord.all
    if @timerecord.present?
    #binding.pry
      if @timerecord.create_at != Time.now
        #binding.pry
        @timerecord = Timerecord.new(timerecord_params)
        @timerecord.save
        redirect_to root_path
      elsif 
        redirect_to action: :update
      end
    else
      @timerecord = Timerecord.new(timerecord_params)
      @timerecord.save
      redirect_to root_path
    end
  end
  def update
    @timerecord = Timerecord.find(params[:time_record])
    @timerecord.update(time_record:@timerecord + 1)
    redirect_to root_path
  end

  private
  def timerecord_params
    params.require(:timerecord).permit(:time_record)
  end
end
