class HerebyAPI < Grape::API
  version 'v1', using: :header, vendor: 'platform161'
  format :json
  prefix :api

  resource :users do
    desc "See the user messages"
    params do
      requires :id, type: Integer, desc: "User id."
    end
    route_param :id do
      get :messages do
        users = User.find_by(id: params[:id]).try(:messages) || []
        present users, with: Entities::UserMessage
      end
    end
  end
end
