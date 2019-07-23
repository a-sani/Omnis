# class PassthroughController < ApplicationController
#   def index
#   	 if logged_in? 
#   	 	static_pages_path
#   	 else
#   	 	users

#       link_to "Omnis", about_path, id: "logo" 
#     end 
#     path = case current_user.role
#       when 'project_manager'
#         some_path
#       when 'client'
#         some_other_path
#       else
#         # If you want to raise an exception or have a default root for users without roles
#     end

#     redirect_to path     
#   end
# end