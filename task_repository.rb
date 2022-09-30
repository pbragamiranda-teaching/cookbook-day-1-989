class TaskRepository
  def initialize
    @tasks = [] # array of instances of the class Task
  end

  def all
    @tasks
  end

  def add(new_task)
    @tasks << new_task
  end

  def remove(index)
    @tasks.delete_at(index)
  end
end
