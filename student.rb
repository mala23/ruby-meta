class Student

  def initialize
    @badges = []
  end

  def award(badge)
    @badges << badge
  end


end

student = Student.new
# p student
