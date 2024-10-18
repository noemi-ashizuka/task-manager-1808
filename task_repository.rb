class TaskRepository
  def initialize
    # state
    @tasks = [] # an array of task instances
  end
  # behaviour

  def all
    @tasks
  end

  def find(index)
    @tasks[index] # returns a specific element/instance
  end

  def create(task)
    @tasks << task
  end

  def destroy(index)
    @tasks.delete_at(index)
  end
end
