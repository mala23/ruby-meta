class Student

  def initialize
    @badges = []
  end

  def award(badge)
    @badges << badge
  end

  def what_class
    p self.class
  end

  def add_method(new_method)
    self.class.send(:define_method, new_method){}
  end

end

student = Student.new
# p student
student.class.send(:define_method, :does_it_return_true?){true}
p student.does_it_return_true?
