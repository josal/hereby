module Entities
  class UserDetail < Grape::Entity
    expose :id, :name, :email
  end

  class UserMessage < Grape::Entity
    expose :id, :body
    format_with(:iso_timestamp) { |dt| dt.iso8601 }
    with_options(format_with: :iso_timestamp) do
      expose :created_at
    end
    expose :user, using: Entities::UserDetail
  end
end