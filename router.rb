class Router
  def initialize(task_controller)
    @task_controller = task_controller
  end

  def run
    loop do
      # display a menu
      display_menu
      # wait to see what user wants to do
      user_input = gets.chomp.to_i
      # tell controller what user wants to do
      dispatch(user_input)
    end
  end

  def dispatch(user_input)
    case user_input
    when 1
      @task_controller.list
    when 2
      @task_controller.create
    when 3
      @task_controller.destroy
    else
      puts "Wrong input."
    end
  end

  def display_menu
    puts "Welcome to our task manager"
    puts "What do you want to do?"
    puts "Press 1 to List all your tasks"
    puts "Press 2 to add a new task"
    puts "Press 3 to delete a task"
  end
end
