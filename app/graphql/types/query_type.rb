module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :tasks, [TaskType], null: false do
      description 'A query that returns all the tasks.'
    end

    field :tasksCount, Integer, null: false do
      description 'A query that returns the total number of tasks.'
    end

    def tasks
      Task.all
    end

    def tasksCount
      Task.count
    end
  end
end
