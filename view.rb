class View
  # state => nothing characterises a view
  # behaviour
  def display(tasks) # an array of tasks instances
    tasks.each_with_index do |task, index|
      x_mark = task.done? ? "X" : " "
      puts "#{index + 1} -[#{x_mark}] #{task.description}"
    end
  end

  def ask_for_description
    puts "What's the task?"
    gets.chomp
  end

  def ask_for_index
    puts "What's the number?"
    gets.chomp.to_i - 1
  end
end
