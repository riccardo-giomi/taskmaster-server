module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false do
      description "The user's id."
    end

    field :name, String, null: false do
      description "The user's name."
    end

    field :email, String, null: false do
      description "The user's email address."
    end

    field :posts, [TaskType], null: true do
      description 'The tasks assigned to this user.'
    end

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description 'The date this user was created.'
    end

    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description 'The date this user was last updated.'
    end
  end
end
