require './nameable'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = Nameable.new
  end

  def can_use_services?
    true if of_age? || @parent_permission
  end

  def valid_name
    @name = @nameable.correct_name(@name)
  end

  private

  def of_age?
    true if age >= 18
  end
end
person = Person.new(22, 'maximilianus')
puts person.valid_name
