#todos_controller.rb
class TodosController < ApplicationController
  def index
    #render plain: Todo.order(:due_date).map { |todo| todo.to_pleasant_string }.join("\n")
    render "index"
  end

  def show
    id = params[:id]
    todo = Todo.find(id)
    render "todo"
    #render plain: todo.to_pleasant_string
  end
end
