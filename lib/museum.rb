require 'pry'

class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits.push exhibit
  end

  def recommend_exhibits(person)
    person.find_all do |interest|
      # @exhibits.find_all do |exhibit|
      #   exhibit.name == name
      #   return exhibit
      # end
    end
end
