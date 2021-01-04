# frozen_string_literal: true

# Welcome controller
class WelcomeController < ApplicationController
  def index
    render json: 'API is working!'
  end

  def job
    BackgroundJob.perform_later
    render json: 'Background Job Scheduled!'
  end
end
