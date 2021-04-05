module Types
  class TaskType < Types::BaseObject
    field :id, ID, null: false do
      description "The task's id."
    end

    field :title, String, null: false do
      description "The task's title."
    end

    field :body, String, null: true do
      description "The task's body/description."
    end

    field :user_id, Integer, null: false do
      description 'The id of the user assigned to this task.'
    end

    field :user, UserType, null: false do
      description 'The user assigned to this task.'
    end

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description 'The date this task was created.'
    end

    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description 'The date this task was last modified.'
    end
  end
end
