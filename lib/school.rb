class School
  attr_reader :name, :roster, :grade

  def initialize (name)
  @name = name
  @roster = {}
  end

  def add_student (name, grade)
    roster[grade]||= []
    roster[grade] << name
  end

  def grade (grade)
    roster[grade]
  end

  def sort
  sorted_hash = {}
  roster.map do | k, v |
    sorted_hash[k]||= []
    sorted_hash[k] = v.sort
   end
   sorted_hash
 end

end
#  roster.map do | k, v |
  #    v.sort
  #end
  #  roster.sort.to_h
