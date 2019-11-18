class ApplicationController < ActionController::Base
  after_action :set_paper_trail_whodunnit
end
