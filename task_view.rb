class TaskView
  def display_tasks(tasks)
    tasks.each_with_index do |task, index|
      puts "#{index + 1}. #{task.description}"
    end
  end

  def ask_for_description
    puts "What task do you want to add?"
    gets.chomp
  end

  def ask_for_index
    puts "Which index you want to delete"
    gets.chomp.to_i
  end
end
