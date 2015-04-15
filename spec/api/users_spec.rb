require 'rails_helper'

describe HerebyAPI do
  describe "User API methods" do
    describe "GET /api/users/:id/messages" do
      it "returns the messages of one user" do
        @user    = create(:user)
        @message = create(:message)
        
        get "/api/users/#{@user.id}/messages"
        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).size).to eq(@user.messages.count)
        expect(JSON.parse(response.body)).to eq([{"id" => @message.id, "body" => @message.body, "created_at" => @message.created_at.iso8601}])
        # We could investigate more with something like Entities::Message.represent(@message).to_json or grape-entity-matchers
      end
    end

    describe "GET /api/users/:id/following" do
      it "returns the users followed by one user" do
        @user  = create(:user)
        @user2 = create(:user2)
        create(:follow)
        @user.reload # to increase counter_cache columns
        
        get "/api/users/#{@user.id}/following"
        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).size).to eq(@user.following_count)
        expect(JSON.parse(response.body)).to eq([{"id" => @user2.id, "name" => @user2.name, "email" => @user2.email}])
        # We could investigate more with something like Entities::Message.represent(@user2).to_json or grape-entity-matchers
      end
    end

    describe "GET /api/users/:id/followers" do
      it "returns the followers of one user" do
        @user  = create(:user)
        @user2 = create(:user2)
        create(:follow)
        @user2.reload # to increase counter_cache columns
        
        get "/api/users/#{@user2.id}/followers"
        expect(response.status).to eq(200)
        expect(JSON.parse(response.body).size).to eq(@user2.followers_count)
        expect(JSON.parse(response.body)).to eq([{"id" => @user.id, "name" => @user.name, "email" => @user.email}])
        # We could investigate more with something like Entities::Message.represent(@user).to_json or grape-entity-matchers
      end
    end
  end
end