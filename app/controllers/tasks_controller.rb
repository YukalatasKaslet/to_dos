#require_relative 'tasks_view' esto no va xq está en la carpeta application.rb

class TasksController
  def initialize(args)
    @view = TasksView.new
    command = args[0]
    str = args[1..-1].join(" ")
    command = command.downcase
    master(command, str)
  end

  def master(command, str)
      command.downcase
      case command
      when "index"    then index
      when "delete"   then delete(str.to_i)
      when "add"      then add (str)
      when "complete" then complete(str.to_i)   
      else
        @view.error
      #   #master(@view.menu)
      end
  end

  def valid_index?(index)
    val = false
    task_exist = Task.find_by(id: index)
    task_exist.nil? == true ? val = false : val = true
    #index == 0 ? val = false : val = true
    # if task_exist.nil?
    #   val = false
    # else
    #   val = true
    # end     
    val
  end

  def index
    # TIP: Aquí debes de llamar al método del mismo nombre de @view
    tasks = Task.all
    @view.index(tasks)
  end

  def add(task_add) 
    task = Task.create(text: task_add)
    #equivalencia
    # task = Task.new(text: task_add)#text: task_add  es un hash
    # task.save
    @view.create
  end

  def delete(index)
    val = valid_index?(index)
    if val == true
      task_delete = Task.find_by(id: index).delete
      @view.delete
    else
      @view.error
    end
  end

  def complete(index)
    val = valid_index?(index)
    if val == true
      task_compete = Task.find_by(id: index)
      task_compete.update(status: true)
      @view.update
    else
      @view.error
    end
  end

end


#Esto está en el archivo todo.rb que es el que se ejecuta
# x = ARGV.map(&:dup)
## Task.new(x)