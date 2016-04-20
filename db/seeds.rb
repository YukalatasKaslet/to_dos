# # Este archivo sirve para crear registros de prueba
# task :console do
#   exec "irb -r./app.rb"
# end


# namespace :db do
#   task :seed do
    # tareas_prueba = %w(Aprender_Ruby Trabajar_rápido Mejorar_ortografía Perder_miedo Hablar_ingles Pensar_mas_tareas aburrirse_menos Cantar_mas no_hacer_ruido_en_codea llegar_temprano_a_codea)
    # tareas_prueba.each do |tarea|
    #   Task.create(:string => tarea)
    # end
#   end#task

# end#namespace


Task.create([{:text => "tarea"},
             {:text => "llegar_temprano_a_codea"},
             {:text => "no_hacer_ruido_en_codea"},
             {:text => "Cantar_mas"},
             {:text => "aburrirse_menos"},
             {:text => "Pensar_mas_tareas"},
             {:text => "Hablar_ingles"},
             {:text => "Perder_miedo"},
             {:text => "Mejorar_ortografía"},
             {:text => "Trabajar_rápido"},
             {text: "Aprender_Ruby"}])
#text: "tarea"
#key: value    es un hash
#por lo mismo va entre {} cuando son muchos

