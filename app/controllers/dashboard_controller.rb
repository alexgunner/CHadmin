class DashboardController < ApplicationController
	before_action :authenticate_user!
	layout "dashboard"
	def index

	end

	def messages
		@messages = Message.order('created_at desc')
	end
end
