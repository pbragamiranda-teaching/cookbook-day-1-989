require_relative "task"
require_relative "router"
require_relative "task_repository"
require_relative "task_controller"

task_repository = TaskRepository.new

task_1 = Task.new("do flashcards")
task_2 = Task.new("buy cafe")

task_repository.add(task_1)
task_repository.add(task_2)

task_controller = TaskController.new(task_repository)

router = Router.new(task_controller)

router.run
