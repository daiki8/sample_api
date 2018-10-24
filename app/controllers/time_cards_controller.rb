class TimeCardsController < ApplicationController
    def index
        @timecards = TimeCard.all
        render json: @timecards
    end

    def show
        @timecard = TimeCard.find(params[:id])
        render json: @timecard
    end

    def create
        @timecard = TimeCard.new(state:params[:state])
    
        if @timecard.save
          render json: @timecard, status: :created, location: timecards_url(@timecard)
        else
          render json: @timecard.errors, status: :unprocessable_entity
        end
      end


    private

    def timecard_params
        params.fetch(:timecards, {}).permit(:state)
    end
end
