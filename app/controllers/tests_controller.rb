class TestsController < ApplicationController
  protect_from_forgery except: :save_result

  def new
  end

  def save_result
    puts "Received reaction_time: #{params[:reaction_time]}"
    test = ReactionTest.new(reaction_time: params[:reaction_time])
    if test.save
      puts "Saved successfully"
    else
      puts "Failed to save: #{test.errors.full_messages.join(", ")}"
    end
    render json: { status: 'SUCCESS' }
  end

  def results
    @reaction_tests = ReactionTest.all
  end
end
