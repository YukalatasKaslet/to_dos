class TasksView
	# Recuerda que la única responsabilidad de la vista es desplegar data al usuario
  # def initialize
  # puts "Bienvenido"
  # puts "Elige una opción"
  # puts "\tIndex (Ver lista de tareas)\n\tDelete (Añadir tarea)\n\tAdd (Borrar tarea)\n\tComplete (Marcar tarea realizada)"
  # end

  # def menu
  #   puts "Elige una opción"
  #   p "\tIndex (Ver lista de tareas)\n\tDelete (Añadir tarea)\n\tAdd (Borrar tarea)\n\tComplete (Marcar tarea realizada)"
  #   choice = gets.chomp
  # end

	def index(tasks)
    tasks.each do |task|
      if task.status == false
        x = " "
      else
        x = "X"
      end
      task.id >= 10 ? y = " " : y = "  "
      puts "#{task.id}#{y}[#{x}]#{task.text}"
    end
	end

  def create
    puts "Tarea añadida!"
  end

  def delete
    puts "Tarea Eliminada"
  end

  def update
    puts "Tarea Completada!"
  end

	def error
    puts "Tu opción no fue válida"
	end
end
