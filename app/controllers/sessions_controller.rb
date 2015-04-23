# class SessionsController < Devise::SessionsController
#   respond_to :json
#   respond_with :json

#   def create
#     resource = warden.authenticate!(scope: resource_name, recall: "#{controller_path}#failure")
#     sign_in(resource_name, resource)
#     return render json: { success: true, path: root_path }
#   end

#   def failure
#     return render json: { success: false, errors: ['Login information is incorrect, please try again'] }
#   end
# end

class SessionsController < Devise::SessionsController  
    respond_to :json
end