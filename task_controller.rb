require_relative "task"
require_relative "task_view"

class TaskController
  def initialize(task_repository)
    @task_repository = task_repository # an instace of TaskRepository
    @task_view = TaskView.new
  end

  def list
    # fetching all the tasks
    tasks = @task_repository.all
    # displaying all the tasks
    @task_view.display_tasks(tasks)
  end

  def create
    # ask user for name
    new_description = @task_view.ask_for_description
    # create the task
    new_task = Task.new(new_description)
    # save it
    @task_repository.add(new_task)
  end

  def destroy
    # list all the tasks
    tasks = @task_repository.all
    @task_view.display_tasks(tasks)
    # ask user which one
    user_input = @task_view.ask_for_index
    # delete it
    @task_repository.remove(user_input - 1)
  end
end
