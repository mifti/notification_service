class TextMessengerController < ApplicationController


    # POST /notify
    def notify
        @notification = Notification.new(notification_params)
    
        respond_to do |format|
            if @notification.save
                message = "Hi '#{@notification.receiver}'! This messgae is to notify you that '#{@notification.message}'."
                TextMessenger.new(message).call
                format.json { render :show, status: :created, location: @coffee_roast }
            else
                format.json { render json: @coffee_roast.errors, status: :unprocessable_entity }
            end
        end
    end
end
  