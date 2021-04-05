module Mutations
  class CreateTaskMutation < BaseMutation
    field :task, Types::TaskType, null: false do
      description 'This mutation creates a task with an associated user.'
    end

    argument :title, String, required: true do
      description "The task's title is a string and is required to create a new task."
    end

    argument :body, String, required: false do
      description "The body field is the text containing the task's description."
    end

    argument :user_id, Integer, required: true do
      description 'The id of the user that has been assigned this task.'
    end

    def resolve(title:, body:, user_id:)
      task = Task.new(title: title, body: body, user: User.find(user_id))

      if task.save
        { task: task, errors: [] }
      else
        { task: nil, errors: task.errors.full_messages}
      end
    end
  end
end
