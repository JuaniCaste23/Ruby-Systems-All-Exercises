class Instituto
    def initialize(nombre, ciudad)
        @nombre = nombre
        @ciudad = ciudad
        @alumnos = Array.new
        @materias = Array.new
        @profesores = Array.new
    end
    
    def añadirAlumno(alumno)
        @alumnos.push(alumno)
    end

    def añadirProfesor(profesor)
        @profesores.push(profesor)
    end

    def añadirMateria(materia)
        @materias.push(materia)
    end
    attr_reader :alumnos, :materias, :profesores
end

class Persona
    def initialize(nombre, edad)
        @nombre = nombre
        @edad = edad
    end
    attr_accessor :nombre, :edad
end

class Alumno < Persona
    def initialize(nombre, edad, carrera, legajo)
        @carrera = carrera
        @legajo = legajo
        super nombre, edad
    end
    attr_accessor :carrera, :legajo 
end

class Profesor < Persona
    def initialize(nombre, edad, id)
        @id = id
        super nombre, edad
    end
end

class Materia 
    def initialize(nombre, profesor)
        @nombre = nombre
        @profesor = profesor
    end
    attr_accessor :nombre, :profesor
end

instituto1 = Instituto.new("I.S.F.T 190", "Punta Alta")
alumno1 = Alumno.new("Gino", "19", "Sistemas", "6198")
profesor1 = Profesor.new("Jorge", "42", 5)
programacion1 = Materia.new("Programacion I", profesor1) 
analisis1 = Materia.new("Analisis Matematico I", profesor1)

instituto1.añadirMateria(programacion1)
instituto1.añadirMateria(analisis1)
instituto1.añadirAlumno(alumno1)
instituto1.añadirProfesor(profesor1)

print instituto1.profesores[0].nombre
puts "\n"
print instituto1.materias[0].nombre
puts "\n"
print instituto1.materias[1].nombre
puts "\n"
puts instituto1.alumnos[0].nombre
instituto1.alumnos[1]="holas"

print instituto1.alumnos[1]


anticierre=gets.chomp