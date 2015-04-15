class HerebyAPI < Grape::API
  version 'v1', using: :header, vendor: 'platform161'
  format :json
  prefix :api

  resource :users do
    params do
      requires :id, type: Integer, desc: "User id"
    end
    route_param :id do
      desc "See one user messages"
      get :messages do
        users = User.find_by(id: params[:id]).try(:messages) || []
        present users, with: Entities::Message
      end

      desc "See the users followed by one user"
      get :following do
        users = Event.user_following(params[:id])
        present users, with: Entities::User
      end

      desc "See the users that follow one user"
      get :followers do
        users = Event.user_followers(params[:id])
        present users, with: Entities::User
      end
    end
  end
end
