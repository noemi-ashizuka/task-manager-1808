require_relative "view"

class TasksController
  # state
  def initialize(repository)
    @repository = repository
    @view = View.new
  end
  # behaviour
  # list
  def list
    display_tasks
  end
  # add
  def add
    # get the description from the user (using the view)
    description = @view.ask_for_description # gives me back a string
    # Create a new instance of task using the user input
    task = Task.new(description)
    # add the task to the repository
    @repository.create(task)
  end
  # mark_as_done
  def mark_as_done
    # display the tasks
    display_tasks
    # ask the view what task to mark (index)
    index = @view.ask_for_index
    # fetch the specific task from the repository (make a new method)
    task = @repository.find(index)
    # mark it as done
    task.mark_as_done!

  end
  # remove
  def remove
    # display the tasks
    display_tasks
    # ask the view to ask the user for an index
    index = @view.ask_for_index
    # get the specific task from the repository
    # task = @repository.find(index)
    # delete the task from the repository
    @repository.destroy(index)
  end

  private

  def display_tasks
     # get the tasks from the repository
     tasks = @repository.all
     # give them to the view to display
     @view.display(tasks)
  end
end
