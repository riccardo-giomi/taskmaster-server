module Types
  class MutationType < Types::BaseObject
    field :create_task_mutation, mutation: Mutations::CreateTaskMutation do
      description 'Creates a new task.'
    end
  end
end
