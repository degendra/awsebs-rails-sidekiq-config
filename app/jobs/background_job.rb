# frozen_string_literal: true

# Background job
class BackgroundJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    puts 'Running background job'
  end
end
