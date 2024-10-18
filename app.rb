require_relative "task"
require_relative "task_repository"
require_relative "tasks_controller"
require_relative "router"
# require_relative "view"

repository = TaskRepository.new
controller = TasksController.new(repository)
router = Router.new(controller)
router.run

# view = View.new

# dishes = Task.new("wash the dishes")
# laundry = Task.new("do the laundry")

# p dishes
# p laundry

# dishes.mark_as_done!

# repository.create(dishes)
# repository.create(laundry)

# p repository

# repository.destroy(0)

# tasks = repository.all
# view.display(tasks)

# controller.add
# controller.list
# controller.remove
# controller.list