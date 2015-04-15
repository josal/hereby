module Entities
  class User < Grape::Entity
    expose :id, :name, :email
  end

  class Message < Grape::Entity
    expose :id, :body
    format_with(:iso_timestamp) { |dt| dt.iso8601 }
    with_options(format_with: :iso_timestamp) do
      expose :created_at
    end
    # In the future there will be a message index with different users
    # expose :user, using: Entities::UserDetail
  end
end